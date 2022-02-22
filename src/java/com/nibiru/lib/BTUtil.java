package com.nibiru.lib;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import com.nibiru.lib.controller.GlobalLog;
import com.nibiru.lib.controller.StickEvent;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

public class BTUtil {
   public static final String CHECK_PACKAGENAME = "com.nibiru";
   public static final String LOG_DIR = "sdcard/nibiru/log/";
   public static final int MAX_LOG_COUNT = 0;
   private static boolean Q = false;
   private static boolean R = false;
   public static final String SERVICE_MAINUI = "com.nibiru.mainui";
   public static final String SERVICE_NAME = "com.nibiru.service";
   public static final String SERVICE_UI = "com.nibiru.view.devicelist";
   public static final String SUPPORT_SERVICE_NAME = "com.nibiru.support.service";
   private static boolean isStart = false;
   public static SimpleDateFormat mDateFormatLog;

   static {
      mDateFormatLog = new SimpleDateFormat("MM_dd__HH_mm_ss", Locale.CHINA);
   }

   public static String generateBTDeviceCode(BTDevice var0) {
      return var0 == null ? "" : "" + var0.getDeviceName() + "|" + var0.getDeviceAddr() + "|" + var0.getDeviceType() + "|" + var0.getDeviceId() + "|" + var0.getPlayerOrder() + "|" + var0.isConnected() + "|" + var0.getState();
   }

   public static String generateBTDeviceListCode(BTDevice[] var0) {
      String var2;
      if (var0 == null) {
         var2 = "";
      } else {
         int var1 = var0.length;
         var2 = "";

         String var5;
         for(int var3 = 0; var3 < var1; var2 = var5) {
            BTDevice var4 = var0[var3];
            var5 = var2 + generateBTDeviceCode(var4) + "#";
            ++var3;
         }
      }

      return var2;
   }

   public static KeyEvent generateKeyEvent(int var0, int var1, int var2) {
      long var3 = SystemClock.uptimeMillis();
      return new KeyEvent(var3, var3, var0, var1, 0, 0, var2, 0, 0);
   }

   public static MotionEvent generateMotionEvent(byte var0, byte var1, byte var2, byte var3, int var4) {
      long var5 = SystemClock.uptimeMillis();
      return MotionEvent.obtain(var5, var5, 2, (float)(var0 & 255), (float)(var1 & 255), 0.0F, 1.0F, 0, (float)(var2 & 255), (float)(var3 & 255), var4, 0);
   }

   public static int getAndroidVersion() {
      return VERSION.SDK_INT;
   }

   public static String getApplicationSessionInfo(Context var0) {
      try {
         String var2 = var0.getPackageManager().getPackageInfo(var0.getPackageName(), 0).packageName;
         return var2;
      } catch (NameNotFoundException var3) {
         var3.printStackTrace();
         return null;
      }
   }

   public static String getLogTimeDesc(long var0) {
      return mDateFormatLog.format(new Date(var0));
   }

   public static long getLongtime(String var0) {
      try {
         long var2 = mDateFormatLog.parse(var0).getTime();
         return var2;
      } catch (ParseException var4) {
         var4.printStackTrace();
         return 0L;
      }
   }

   public static MotionEvent getMotionEvent(StickEvent var0) {
      int[] var1 = var0.getAxisValue();
      return MotionEvent.obtain(var0.getTime(), var0.getTime(), 2, (float)var1[0], (float)var1[1], 0.0F, 1.0F, 0, (float)var1[2], (float)var1[3], var0.getPlayerOrder(), 0);
   }

   public static long getTimeStamp() {
      return System.currentTimeMillis();
   }

   public static final String md5(String var0) {
      if (var0 == null) {
         return null;
      } else {
         NoSuchAlgorithmException var10000;
         label56: {
            byte[] var3;
            StringBuffer var4;
            boolean var10001;
            try {
               MessageDigest var2 = MessageDigest.getInstance("MD5");
               var2.update(var0.getBytes());
               var3 = var2.digest();
               var4 = new StringBuffer();
            } catch (NoSuchAlgorithmException var12) {
               var10000 = var12;
               var10001 = false;
               break label56;
            }

            int var5 = 0;

            label47:
            while(true) {
               try {
                  if (var5 >= var3.length) {
                     return var4.toString();
                  }
               } catch (NoSuchAlgorithmException var11) {
                  var10000 = var11;
                  var10001 = false;
                  break;
               }

               String var6;
               try {
                  var6 = Integer.toHexString(255 & var3[var5]);
               } catch (NoSuchAlgorithmException var9) {
                  var10000 = var9;
                  var10001 = false;
                  break;
               }

               while(true) {
                  try {
                     if (var6.length() >= 2) {
                        var4.append(var6);
                        break;
                     }
                  } catch (NoSuchAlgorithmException var10) {
                     var10000 = var10;
                     var10001 = false;
                     break label47;
                  }

                  String var7;
                  try {
                     var7 = "0" + var6;
                  } catch (NoSuchAlgorithmException var8) {
                     var10000 = var8;
                     var10001 = false;
                     break label47;
                  }

                  var6 = var7;
               }

               ++var5;
            }
         }

         NoSuchAlgorithmException var1 = var10000;
         var1.printStackTrace();
         return "-1";
      }
   }

   public static BTDevice parseBTDevice(String var0) {
      if (var0 != null) {
         BTDevice[] var1 = parseBTDeviceList(var0);
         if (var1 != null && var1.length > 0) {
            return var1[0];
         }
      }

      return null;
   }

   public static BTDevice[] parseBTDeviceList(String var0) {
      int var1 = 0;
      if (var0 != null) {
         String[] var2 = var0.split("#");
         if (var2 != null) {
            if (var2.length == 0) {
               return new BTDevice[0];
            }

            ArrayList var3 = new ArrayList();

            for(int var4 = var2.length; var1 < var4; ++var1) {
               String[] var5 = var2[var1].split("\\|");
               if (var5.length >= 6) {
                  try {
                     BTDevice var6 = new BTDevice();
                     var6.setDeviceName(var5[0]);
                     var6.setDeviceAddr(var5[1]);
                     var6.setDeviceType(Integer.parseInt(var5[2]));
                     var6.setDeviceId(Integer.parseInt(var5[3]));
                     var6.setPlayerOrder(Integer.parseInt(var5[4]));
                     var6.setConnected(Boolean.parseBoolean(var5[5]));
                     if (var5.length > 6) {
                        var6.setState(Integer.parseInt(var5[6]));
                     }

                     var3.add(var6);
                  } catch (Exception var8) {
                     var8.printStackTrace();
                  }
               }
            }

            return (BTDevice[])var3.toArray(new BTDevice[var3.size()]);
         }
      }

      return null;
   }

   public static KeyEvent parseKeyEvent(String var0, int[] var1) {
      byte var2 = 1;
      if (var0 == null) {
         return null;
      } else {
         String[] var3 = var0.split("\\|");
         if (var3.length >= 5) {
            Exception var10000;
            label46: {
               int var5;
               int var6;
               int var7;
               boolean var8;
               int var9;
               long var10;
               boolean var10001;
               try {
                  var5 = Integer.parseInt(var3[0]);
                  var6 = Integer.parseInt(var3[1]);
                  var7 = Integer.parseInt(var3[2]);
                  var8 = Boolean.parseBoolean(var3[3]);
                  var9 = Integer.parseInt(var3[4]);
                  var10 = SystemClock.uptimeMillis();
               } catch (Exception var15) {
                  var10000 = var15;
                  var10001 = false;
                  break label46;
               }

               if (var1 != null) {
                  try {
                     if (var6 < var1.length) {
                        var6 = var1[var6];
                     }
                  } catch (Exception var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label46;
                  }
               }

               if (!var8) {
                  var2 = 0;
               }

               try {
                  KeyEvent var12 = new KeyEvent(var10, var10, var5, var6, var2, var7, var9, 0, 2);
                  return var12;
               } catch (Exception var13) {
                  var10000 = var13;
                  var10001 = false;
               }
            }

            Exception var4 = var10000;
            var4.printStackTrace();
         }

         return null;
      }
   }

   public static MotionEvent translateJoystick(float var0, float var1, float var2, float var3, float var4, float var5, long var6) {
      if (getAndroidVersion() < 12) {
         return null;
      } else {
         PointerProperties[] var8 = new PointerProperties[]{new PointerProperties()};
         var8[0].clear();
         var8[0].id = 0;
         float var9 = var0 - 128.0F;
         float var10 = 128.0F - var1;
         float var11 = var2 - 128.0F;
         float var12 = 128.0F - var3;
         GlobalLog.e("LX: " + var9 + " LY: " + var10 + " RX: " + var11 + " RY:  " + var12);
         PointerCoords var13 = new PointerCoords();
         var13.setAxisValue(0, var9);
         var13.setAxisValue(1, var10);
         var13.setAxisValue(11, var11);
         var13.setAxisValue(14, var12);
         var13.setAxisValue(15, var4);
         var13.setAxisValue(16, var5);
         PointerCoords[] var14 = new PointerCoords[]{var13};
         int[] var15 = new int[]{0};
         return getAndroidVersion() < 14 ? MotionEvent.obtain(var6, var6, 2, 1, var15, var14, 0, 0.0F, 0.0F, 65535, 0, 16777232, 0) : MotionEvent.obtain(var6, var6, 2, 1, var8, var14, 0, 0, 0.0F, 0.0F, 65535, 0, 16777232, 0);
      }
   }

   public static MotionEvent translateJoystick(MotionEvent var0) {
      return translateJoystick(var0.getX(), var0.getY(), var0.getXPrecision(), var0.getYPrecision(), 0.0F, 0.0F, var0.getDownTime());
   }

   public static KeyEvent translateKey(KeyEvent var0, int var1) {
      return new KeyEvent(var0.getEventTime(), var0.getEventTime(), var0.getAction(), var1, var0.getRepeatCount(), var0.getMetaState(), var0.getDeviceId(), 0, 2);
   }

   public static MotionEvent translateMouse(float var0, float var1, float var2, float var3, float var4, float var5, long var6) {
      if (getAndroidVersion() < 12) {
         return null;
      } else {
         PointerProperties[] var8 = new PointerProperties[]{new PointerProperties()};
         var8[0].clear();
         var8[0].id = 0;
         var8[0].toolType = 3;
         float var9 = var0 - 128.0F;
         float var10 = 128.0F - var1;
         float var11 = var2 - 128.0F;
         float var12 = 128.0F - var3;
         GlobalLog.e("LX: " + var9 + " LY: " + var10 + " RX: " + var11 + " RY:  " + var12);
         PointerCoords var13 = new PointerCoords();
         var13.setAxisValue(0, 200.0F + var9);
         var13.setAxisValue(1, 400.0F + var10);
         PointerCoords[] var14 = new PointerCoords[]{var13};
         var14[0].x = 200.0F + var9;
         var14[0].y = 400.0F + var10;
         int[] var15 = new int[]{0};
         if (getAndroidVersion() < 14) {
            return MotionEvent.obtain(var6, var6, 2, 1, var15, var14, 0, 0.0F, 0.0F, 65535, 0, 8194, 0);
         } else if (!isStart) {
            if ((int)var9 != 0 && (int)var10 != 0) {
               isStart = true;
               return MotionEvent.obtain(var6, var6, 9, 1, var8, var14, 0, 0, 0.0F, 0.0F, 8, 0, 8194, 0);
            } else {
               return null;
            }
         } else if ((int)var9 == 0 && (int)var10 == 0) {
            isStart = false;
            return MotionEvent.obtain(var6, var6, 10, 1, var8, var14, 0, 0, 0.0F, 0.0F, 8, 0, 8194, 0);
         } else {
            isStart = true;
            return MotionEvent.obtain(var6, var6, 7, 1, var8, var14, 0, 0, 0.0F, 0.0F, 8, 0, 8194, 0);
         }
      }
   }

   public static MotionEvent translateTouch(int var0, float var1, float var2, long var3) {
      if (getAndroidVersion() < 12) {
         return null;
      } else {
         PointerProperties[] var5 = new PointerProperties[]{new PointerProperties()};
         var5[0].clear();
         var5[0].id = 0;
         var5[0].toolType = 1;
         int var6 = (int)(var1 - 128.0F);
         int var7 = (int)(128.0F - var2);
         float var8;
         float var9;
         if (var0 == 0) {
            var8 = 300.0F + 2.0F * (var1 - 128.0F);
            var9 = 500.0F + 2.0F * (128.0F - var2);
         } else {
            var8 = 900.0F + 2.0F * (var1 - 128.0F);
            var9 = 500.0F + 2.0F * (128.0F - var2);
         }

         PointerCoords[] var10 = new PointerCoords[]{new PointerCoords()};
         var10[0].x = var8;
         var10[0].y = var9;
         var10[0].pressure = 0.66F;
         var10[0].size = 0.5F;
         int[] var11 = new int[]{0};
         if (getAndroidVersion() < 14) {
            return MotionEvent.obtain(var3, var3, 2, 1, var11, var10, 0, 0.0F, 0.0F, 65535, 0, 4098, 0);
         } else if (var0 == 0) {
            if (!Q) {
               if (var6 == 0 && var7 == 0) {
                  GlobalLog.e("NULL LX: " + var10[0].x + " LY: " + var10[0].y);
                  return null;
               } else {
                  Q = true;
                  GlobalLog.e("DOWN LX: " + var10[0].x + " LY: " + var10[0].y);
                  return MotionEvent.obtain(var3, var3, 0, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
               }
            } else if (var6 == 0 && var7 == 0) {
               GlobalLog.e("UP LX: " + var10[0].x + " LY: " + var10[0].y);
               Q = false;
               return MotionEvent.obtain(var3, var3, 1, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
            } else {
               Q = true;
               GlobalLog.e("MOVE LX: " + var10[0].x + " LY: " + var10[0].y);
               return MotionEvent.obtain(var3, var3, 2, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
            }
         } else if (!R) {
            if (var6 == 0 && var7 == 0) {
               GlobalLog.e("NULL LX: " + var10[0].x + " LY: " + var10[0].y);
               return null;
            } else {
               R = true;
               GlobalLog.e("DOWN LX: " + var10[0].x + " LY: " + var10[0].y);
               return MotionEvent.obtain(var3, var3, 0, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
            }
         } else if (var6 == 0 && var7 == 0) {
            GlobalLog.e("UP LX: " + var10[0].x + " LY: " + var10[0].y);
            R = false;
            return MotionEvent.obtain(var3, var3, 1, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
         } else {
            R = true;
            GlobalLog.e("MOVE LX: " + var10[0].x + " LY: " + var10[0].y);
            return MotionEvent.obtain(var3, var3, 2, 1, var5, var10, 0, 0, 0.0F, 0.0F, 8, 0, 4098, 0);
         }
      }
   }

   public static MotionEvent[] translateTouch(float var0, float var1, float var2, float var3, long var4) {
      if (getAndroidVersion() < 12) {
         return null;
      } else {
         ArrayList var6 = new ArrayList();
         MotionEvent var7 = translateTouch(0, var0, var1, var4);
         if (var7 != null) {
            var6.add(var7);
         }

         MotionEvent var8 = translateTouch(1, var2, var3, var4);
         if (var8 != null) {
            var6.add(var8);
         }

         return (MotionEvent[])var6.toArray(new MotionEvent[var6.size()]);
      }
   }
}
