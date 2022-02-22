package com.nibiru.lib;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.nibiru.lib.controller.GlobalLog;
import java.io.File;

public class BluexHandler extends Handler {
   public static final String SESSION_KEY = "session";
   private static final Object lock = new Object();
   private b S;
   private b T;
   private BTInputDeviceController U;
   private a V;
   private BTDeviceStickSim W;
   private StatisticManager X;
   private int Y = 0;
   private int Z = 0;
   private int aa = 0;
   private int ab = 0;
   private int ac = -1;

   public BluexHandler(BTInputDeviceController var1) {
      this.U = var1;
      this.S = new b(this, false);
      this.T = new b(this, false);
      this.W = new BTDeviceStickSim(this);
      this.V = new a(this.U);
      this.X = StatisticManager.getInstance();
   }

   private boolean a(KeyEvent param1) {
      // $FF: Couldn't be decompiled
   }

   public Message generateMessage(int var1, Object var2, int var3, int var4) {
      Message var5 = Message.obtain();
      var5.what = var1;
      var5.obj = var2;
      var5.arg1 = var3;
      var5.arg2 = var4;
      return var5;
   }

   public b getCombManager() {
      return this.S;
   }

   protected BTDeviceStickSim getStickSim() {
      return this.W;
   }

   public void handleInputEvent(InputEvent var1) {
      if (var1 instanceof KeyEvent) {
         KeyEvent var10 = (KeyEvent)var1;
         int[] var11 = this.U.getCurrentSpecKeyMap();
         if (var11 != null && var10.getKeyCode() != var11[var10.getKeyCode()]) {
            var10 = BTUtil.translateKey(var10, var11[var10.getKeyCode()]);
         }

         if (var10 == null) {
            GlobalLog.e("parsing keyevent error!");
         } else {
            if (BTUtil.getAndroidVersion() >= 12) {
               var10.setSource(16777232);
            }

            if ((!this.U.isHostControll() || var10.getDeviceId() == 1) && (!this.U.isOnlyDirectMode() || !this.a(var10))) {
               if (this.U.getCombKeyListener() == null && this.U.isEnable()) {
                  if (this.U.getReqAppCloseListener() != null) {
                     a var10000 = this.V;
                     int var13 = var10.getKeyCode();
                     boolean var14;
                     if (var13 != 102 && var13 != 103) {
                        var14 = false;
                     } else {
                        var14 = true;
                     }

                     if (var14) {
                        this.T.b(var10);
                        return;
                     }
                  }

                  this.sendKeyEvent(var10);
                  return;
               }

               if (this.U.isEnable()) {
                  this.S.b(var10);
                  return;
               }
            }
         }
      } else if (var1 instanceof MotionEvent) {
         MotionEvent var2 = (MotionEvent)var1;
         this.X.doStatistic(SystemClock.uptimeMillis(), var2);
         if ((!this.U.isHostControll() || var2.getDeviceId() == 1) && var2 != null && this.U.isEnable()) {
            OnBTDeviceStickListener var3 = this.U.getStickListener();
            BTDeviceStickEvent var4 = null;
            if (var3 != null) {
               int var5 = (int)var2.getX();
               int var6 = (int)var2.getY();
               int var7 = (int)var2.getXPrecision();
               int var8 = (int)var2.getYPrecision();
               if (var5 == this.Y && var6 == this.Z) {
                  label67: {
                     if (var7 == this.aa) {
                        int var9 = this.ab;
                        var4 = null;
                        if (var8 == var9) {
                           break label67;
                        }
                     }

                     var4 = new BTDeviceStickEvent(var7, var8, 1, var2.getDeviceId());
                     this.U.getStickListener().onBTInputDeviceRStickChange(var2.getDeviceId(), 128 - var7, 128 - var8);
                  }
               } else {
                  var4 = new BTDeviceStickEvent(var5, var6, 0, var2.getDeviceId());
                  this.U.getStickListener().onBTInputDeviceLStickChange(var2.getDeviceId(), var5 - 128, var6 - 128);
               }

               this.Y = var5;
               this.Z = var6;
               this.aa = var7;
               this.ab = var8;
            }

            if (this.W.isStart() && var4 != null) {
               this.W.handleStickSimData(var4);
            }

            var2.recycle();
            return;
         }
      }

   }

   public void handleMessage(Message var1) {
      switch(var1.what) {
      case 255:
         this.U.connectServiceAgain();
         return;
      case 1024:
         KeyEvent var2 = (KeyEvent)var1.obj;
         if (var2 != null && this.U.isEnable()) {
            this.sendKeyEvent(var2);
            return;
         }
         break;
      case 1029:
         BTDevice var11 = (BTDevice)var1.obj;
         int var12 = var1.arg2;
         int var13 = var1.arg1;
         OnBTDeviceStateListener var14 = this.U.getStateListener();
         if (var11 != null && var14 != null) {
            if (var12 == 1) {
               if (this.U.isEnable()) {
                  var14.onBTDeviceConnected(var13, var11);
                  return;
               }
            } else if (var12 == 0) {
               if (this.U.isEnable()) {
                  var14.onBTDeviceConnecting(var13, var11);
                  return;
               }
            } else if (var12 == 2) {
               this.S.reset();
               if (this.W != null) {
                  this.W.stopPlayer(var11.getPlayerOrder());
               }

               if (this.U.isEnable()) {
                  var14.onBTDeviceDisconnected(var13, var11);
                  return;
               }
            }
         }
         break;
      case 1030:
         int var7 = var1.arg1;
         OnBTDeviceStateListener var8 = this.U.getStateListener();
         if (var8 != null && this.U.isEnable()) {
            var8.onBTStateChanged(var7);
            return;
         }
         break;
      case 1032:
      case 2052:
         if (this.U.isEnable()) {
            KeyEvent var4 = (KeyEvent)var1.obj;
            if (var4 == null) {
               GlobalLog.e("invalid parcelable object : keyevent");
               return;
            }

            this.handleInputEvent(var4);
            return;
         }
         break;
      case 1033:
         MotionEvent var3 = (MotionEvent)var1.obj;
         if (var3 == null) {
            GlobalLog.e("invalid parcelable object : stick");
            return;
         }

         this.handleInputEvent(var3);
         return;
      case 1034:
         String var9 = (String)var1.obj;
         OnBTDeviceStateListener var10 = this.U.getStateListener();
         if (var10 != null && this.U.isEnable()) {
            var10.onError(var9);
            return;
         }
         break;
      case 2048:
         if (var1.obj == null && !this.U.isEnable()) {
            break;
         }

         this.sendKeyEvent((KeyEvent)var1.obj);
         return;
      case 2049:
         if (var1.obj == null && !this.U.isEnable()) {
            break;
         }

         this.sendCombKeyEvent((CombKeyEvent)var1.obj);
         return;
      case 2054:
         String var5 = (String)var1.obj;
         if (var5 != null) {
            switch(var1.arg1) {
            case 0:
               OnInfoReportReadyListener var6 = this.U.getReportListener();
               if (var6 != null && this.U.isEnable()) {
                  if (var5.equals("null")) {
                     var6.OnErrorReportReady((File)null);
                     return;
                  }

                  var6.OnErrorReportReady(new File(var5));
                  return;
               }
               break;
            default:
               return;
            }
         }
         break;
      case 2057:
         InputEvent[] var15 = (InputEvent[])var1.obj;
         int var16 = var15.length;

         for(int var17 = 0; var17 < var16; ++var17) {
            this.handleInputEvent(var15[var17]);
         }

         return;
      default:
         super.handleMessage(var1);
      }

   }

   public void resetCombKeyManager() {
      this.S.reset();
   }

   protected void sendCombKeyEvent(CombKeyEvent var1) {
      synchronized(this){}
      if (var1 != null) {
         Throwable var10000;
         label302: {
            boolean var10001;
            OnBTDeviceCombKeyListener var3;
            OnReqAppCloseListener var4;
            try {
               this.X.doStatistic(var1);
               var3 = this.U.getCombKeyListener();
               var4 = this.U.getReqAppCloseListener();
            } catch (Throwable var35) {
               var10000 = var35;
               var10001 = false;
               break label302;
            }

            if (var3 != null) {
               label292: {
                  try {
                     if (var1.getAction() == 0) {
                        var3.onBTInputDeviceCombKeyDown(var1.getPlayerOrder(), var1);
                        break label292;
                     }
                  } catch (Throwable var34) {
                     var10000 = var34;
                     var10001 = false;
                     break label302;
                  }

                  try {
                     if (var1.getAction() == 1) {
                        var3.onBTInputDeviceCombKeyUp(var1.getPlayerOrder(), var1);
                        if (this.U.isSupportTouch()) {
                           this.U.sendTouchEvent();
                        }
                     }
                  } catch (Throwable var32) {
                     var10000 = var32;
                     var10001 = false;
                     break label302;
                  }
               }
            } else {
               try {
                  this.resetCombKeyManager();
               } catch (Throwable var33) {
                  var10000 = var33;
                  var10001 = false;
                  break label302;
               }
            }

            if (var4 == null) {
               return;
            }

            label282:
            try {
               this.V.a(var1.getEvents());
               return;
            } catch (Throwable var31) {
               var10000 = var31;
               var10001 = false;
               break label282;
            }
         }

         Throwable var2 = var10000;
         throw var2;
      }
   }

   protected void sendKeyEvent(KeyEvent var1) {
      synchronized(this){}

      Throwable var10000;
      label236: {
         boolean var10001;
         try {
            this.X.doStatistic(var1);
         } catch (Throwable var23) {
            var10000 = var23;
            var10001 = false;
            break label236;
         }

         if (var1 == null) {
            return;
         }

         OnBTDeviceKeyListener var3;
         try {
            this.X.doStatistic(SystemClock.uptimeMillis(), var1);
            var3 = this.U.getKeyListener();
         } catch (Throwable var22) {
            var10000 = var22;
            var10001 = false;
            break label236;
         }

         if (var3 == null) {
            return;
         }

         try {
            if (var1.getAction() == 0) {
               var3.onBTInputDeviceKeyDown(var1.getKeyCode(), var1.getDeviceId(), var1);
               return;
            }
         } catch (Throwable var24) {
            var10000 = var24;
            var10001 = false;
            break label236;
         }

         label218:
         try {
            if (var1.getAction() == 1) {
               var3.onBTInputDeviceKeyUp(var1.getKeyCode(), var1.getDeviceId(), var1);
               if (this.U.isSupportTouch() && this.U.canSendTouchEvent(var1.getKeyCode())) {
                  this.U.sendTouchEvent();
                  return;
               }
            }

            return;
         } catch (Throwable var21) {
            var10000 = var21;
            var10001 = false;
            break label218;
         }
      }

      Throwable var2 = var10000;
      throw var2;
   }

   public void setCombKeyIntervalTime(long var1) {
      b.a(var1);
   }
}
