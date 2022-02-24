package com.nibiru.lib.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import java.util.Arrays;

public class StickSimServiceHandler implements StickSimService {
   public static final int DIR_DOWN = 2;
   public static final int DIR_DOWN_LEFT = 1;
   public static final int DIR_DOWN_RIGHT = 3;
   public static final int DIR_LEFT = 0;
   public static final int DIR_RIGHT = 4;
   public static final int DIR_UP = 6;
   public static final int DIR_UP_LEFT = 7;
   public static final int DIR_UP_RIGHT = 5;
   public static final int STICKSIM_KEYMSG = 1024;
   private boolean c = false;
   private SparseArray d = new SparseArray();
   private int dp;
   private boolean et = true;
   private boolean eu = false;
   private StickSimService.StickSimConfig ev;
   private final StickSimServiceHandler.b ew;
   private StickSimServiceHandler.OnStickSimChangeListener ex;
   private int[] ey;
   private int g;
   private int h = 500;
   private final HandlerThread k = new HandlerThread("sticksim-scheduler");
   private final Object lock = new Object();
   private int mode;

   public StickSimServiceHandler(StickSimServiceHandler.OnStickSimChangeListener var1) {
      int[] var2 = new int[8];
      var2[0] = 21;
      var2[2] = 20;
      var2[4] = 22;
      var2[6] = 19;
      this.ey = var2;
      this.ex = var1;
      this.k.start();
      this.ew = new StickSimServiceHandler.b(this.k.getLooper());
   }

   // $FF: synthetic method
   static Object a(StickSimServiceHandler var0) {
      return var0.lock;
   }

   private void a(ControllerKeyEvent var1, long var2) {
      if (this.ew != null && this.ey[var1.getKeyCode()] > 0) {
         var1.setKeyCode(this.ey[var1.getKeyCode()]);
         if (var2 != 0L) {
            this.ew.postDelayed(new StickSimServiceHandler.a(var1), var2);
            return;
         }

         this.ew.post(new StickSimServiceHandler.a(var1));
      }

   }

   private void a(StickEvent var1, StickSimServiceHandler.c var2) {
      if (var1 != null && var2 != null) {
         int var3;
         if (this.dp == 0) {
            var3 = getKeyCode(this.g, var1.getRawLX(), var1.getRawLY());
         } else {
            var3 = getKeyCode(this.g, var1.getRawRX(), var1.getRawRY());
         }

         if (var3 != var2.eE || !var2.p || this.mode != 1) {
            if (var3 < 0) {
               this.stopStickSimUnit(var2.n);
               return;
            }

            var2.eE = var3;
            this.d.put(var2.n, var2);
            var2.p = true;
            if (this.mode != 0 || this.h <= 0) {
               this.sendKeyEvent(new ControllerKeyEvent(0, var2.eE, var2.n));
               return;
            }

            if (!this.ew.hasMessages(var2.n)) {
               this.sendKeyEvent(new ControllerKeyEvent(0, var2.eE, var2.n));
               this.ew.removeMessages(var2.n);
               this.ew.sendEmptyMessageDelayed(var2.n, (long)this.h);
               return;
            }
         }
      }

   }

   private static boolean a(int var0, int var1, int var2, int var3) {
      return var0 != var2 || var1 != var3;
   }

   // $FF: synthetic method
   static boolean b(StickSimServiceHandler var0) {
      return var0.c;
   }

   // $FF: synthetic method
   static int c(StickSimServiceHandler var0) {
      return var0.mode;
   }

   private static boolean c(int var0, int var1) {
      return var0 >= -15 && var0 <= 15 && var1 >= -15 && var1 <= 15;
   }

   // $FF: synthetic method
   static SparseArray d(StickSimServiceHandler var0) {
      return var0.d;
   }

   // $FF: synthetic method
   static StickSimServiceHandler.b e(StickSimServiceHandler var0) {
      return var0.ew;
   }

   // $FF: synthetic method
   static int f(StickSimServiceHandler var0) {
      return var0.h;
   }

   public static int getKeyCode(int var0, int var1, int var2) {
      GlobalLog.e("X: " + var1 + " Y: " + var2);
      byte var3 = -1;
      int var4 = Math.abs(var1);
      int var5 = Math.abs(var2);
      if (var0 == 1) {
         float var6 = (float)var5 / (float)var4;
         if ((double)var6 < 1.732D && (double)var6 > 0.58D) {
            if (var1 > 0 && var2 > 0) {
               var3 = 3;
            } else {
               if (var1 > 0 && var2 < 0) {
                  return 5;
               }

               if (var1 < 0 && var2 > 0) {
                  return 1;
               }

               if (var1 < 0 && var2 < 0) {
                  return 7;
               }
            }

            return var3;
         }
      }

      if (var1 == 0 && var2 > 0) {
         return 2;
      } else {
         if (var1 != 0 || var2 >= 0) {
            if (var1 > 0 && var2 == 0) {
               return 4;
            }

            if (var1 < 0 && var2 == 0) {
               return 0;
            }

            if (var1 > 0) {
               if (var2 > 0) {
                  if (var4 >= var5) {
                     return 4;
                  }

                  return 2;
               }

               if (var2 < 0) {
                  if (var4 >= var5) {
                     return 4;
                  }

                  return 6;
               }

               return var3;
            }

            if (var1 >= 0) {
               return var3;
            }

            if (var2 > 0) {
               if (var4 >= var5) {
                  return 0;
               }

               return 2;
            }

            if (var2 >= 0) {
               return var3;
            }

            if (var4 >= var5) {
               return 0;
            }
         }

         return 6;
      }
   }

   public void exit() {
      this.stopStickSim();
      this.k.quit();
   }

   public int getDirectionState() {
      return this.g;
   }

   public int getMode() {
      return this.mode;
   }

   public StickSimService.StickSimConfig getStickSimConfig() {
      return new StickSimService.StickSimConfig(this.dp, this.mode, this.g, this.h);
   }

   public void handleStickEvent(StickEvent var1) {
      GlobalLog.e("stickEvent : " + var1.toString());
      if (var1 != null && !var1.isHatValue()) {
         StickSimServiceHandler.c var2 = (StickSimServiceHandler.c)this.d.get(var1.getPlayerOrder());
         if (var2 == null) {
            var2 = new StickSimServiceHandler.c(this, var1);
            this.d.put(var2.n, var2);
         }

         label27: {
            GlobalLog.e("StickSim StickEvent: " + var1.getRawLX() + " : " + var1.getRawLY() + " : " + var1.getRawRX() + " : " + var1.getRawRY());
            if (this.dp == 0) {
               if (!c(var1.getRawLX(), var1.getRawLY())) {
                  if (a(var1.getRawLX(), var1.getRawLY(), var2.eA, var2.eB)) {
                     this.a(var1, var2);
                  }
                  break label27;
               }
            } else if (this.dp == 1 && !c(var1.getRawRX(), var1.getRawRY())) {
               if (a(var1.getRawRX(), var1.getRawRY(), var2.eC, var2.eD)) {
                  this.a(var1, var2);
               }
               break label27;
            }

            this.stopStickSimUnit(var2.n);
         }

         var2.eA = var1.getRawLX();
         var2.eB = var1.getRawLY();
         var2.eC = var1.getRawRX();
         var2.eD = var1.getRawRY();
      }
   }

   public boolean isHideStickEvent() {
      return this.eu;
   }

   public boolean isStart() {
      return this.c;
   }

   public void pause() {
      this.et = this.isStart();
      this.ev = this.getStickSimConfig();
      this.stopStickSim();
   }

   public void resume() {
      if (this.et) {
         this.startStickSim(this.ev);
      }

   }

   protected void sendKeyEvent(ControllerKeyEvent var1) {
      byte var2 = 1;
      synchronized(this){}

      Throwable var10000;
      label1196: {
         StickSimServiceHandler.c var4;
         boolean var10001;
         try {
            var4 = (StickSimServiceHandler.c)this.d.get(var1.getPlayerOrder());
         } catch (Throwable var119) {
            var10000 = var119;
            var10001 = false;
            break label1196;
         }

         if (var4 == null) {
            label1148:
            try {
               GlobalLog.e("WHY UNIT IS NULL?");
               return;
            } catch (Throwable var110) {
               var10000 = var110;
               var10001 = false;
               break label1148;
            }
         } else {
            label1192: {
               int var5;
               try {
                  var5 = var1.getAction();
               } catch (Throwable var118) {
                  var10000 = var118;
                  var10001 = false;
                  break label1192;
               }

               int var6 = 0;
               if (var5 == var2) {
                  while(true) {
                     if (var6 >= 8) {
                        return;
                     }

                     try {
                        if (var4.eF[var6] == 0) {
                           this.a(new ControllerKeyEvent(1, var6, var1.getPlayerOrder()), 100L);
                           var4.eF[var6] = 1;
                        }
                     } catch (Throwable var111) {
                        var10000 = var111;
                        var10001 = false;
                        break;
                     }

                     ++var6;
                  }
               } else {
                  label1202: {
                     label1187: {
                        try {
                           if (var1.getKeyCode() % 2 == 0) {
                              break label1187;
                           }
                        } catch (Throwable var117) {
                           var10000 = var117;
                           var10001 = false;
                           break label1202;
                        }

                        var2 = 0;
                     }

                     int var7 = 0;
                     if (var2 == 0) {
                        int var8;
                        try {
                           var8 = this.ey[var1.getKeyCode()];
                        } catch (Throwable var114) {
                           var10000 = var114;
                           var10001 = false;
                           break label1202;
                        }

                        var7 = 0;
                        if (var8 <= 0) {
                           for(; var7 < 8; ++var7) {
                              try {
                                 if (var4.eF[var7] == 0 && var7 != -1 + var1.getKeyCode() && var7 != (1 + var1.getKeyCode()) % 8 && var7 != var1.getKeyCode()) {
                                    this.a(new ControllerKeyEvent(1, var7, var1.getPlayerOrder()), 100L);
                                    var4.eF[var7] = 1;
                                 }
                              } catch (Throwable var115) {
                                 var10000 = var115;
                                 var10001 = false;
                                 break label1202;
                              }
                           }

                           try {
                              var4.eF[-1 + var1.getKeyCode()] = 0;
                              this.a(new ControllerKeyEvent(0, -1 + var1.getKeyCode(), var1.getPlayerOrder()), 0L);
                              var4.eF[(1 + var1.getKeyCode()) % 8] = 0;
                              this.a(new ControllerKeyEvent(0, (1 + var1.getKeyCode()) % 8, var1.getPlayerOrder()), 0L);
                              return;
                           } catch (Throwable var112) {
                              var10000 = var112;
                              var10001 = false;
                              break label1202;
                           }
                        }
                     }

                     while(true) {
                        if (var7 >= 8) {
                           try {
                              var4.eF[var1.getKeyCode()] = 0;
                              this.a(var1, 0L);
                              return;
                           } catch (Throwable var113) {
                              var10000 = var113;
                              var10001 = false;
                              break;
                           }
                        }

                        try {
                           if (var4.eF[var7] == 0 && var7 != var1.getKeyCode()) {
                              this.a(new ControllerKeyEvent(1, var7, var1.getPlayerOrder()), 100L);
                              var4.eF[var7] = 1;
                           }
                        } catch (Throwable var116) {
                           var10000 = var116;
                           var10001 = false;
                           break;
                        }

                        ++var7;
                     }
                  }
               }
            }
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   public void setDirectionState(int var1) {
      this.g = var1;
   }

   public void setHideStickEvent(boolean var1) {
      this.eu = var1;
   }

   public void setIntervalTime(int var1) {
      if (var1 >= 0 && var1 <= 30000) {
         this.h = var1;
      }
   }

   public void setKeyNum(int var1) {
      this.g = var1;
   }

   public void setKeyTrans(int[] var1) {
      for(int var2 = 0; var2 < var1.length && var2 < this.ey.length; ++var2) {
         if (var1[var2] > 0) {
            this.ey[var2] = var1[var2];
         }
      }

   }

   public void setMode(int var1) {
      this.mode = var1;
   }

   public void setStickLoc(int var1) {
      this.dp = var1;
   }

   public void startStickSim() {
      this.startStickSim(StickSimService.StickSimConfig.getDefaultConfig());
   }

   public void startStickSim(StickSimService.StickSimConfig var1) {
      if (var1 != null) {
         this.g = var1.directionNum;
         this.mode = var1.mode;
         this.dp = var1.stickLoc;
         this.setIntervalTime(var1.intervalTime);
         GlobalLog.e("DIR: " + var1.directionNum);
         Object var2 = this.lock;
         synchronized(var2){}

         Throwable var10000;
         label246: {
            boolean var10001;
            try {
               if (this.c) {
                  return;
               }
            } catch (Throwable var25) {
               var10000 = var25;
               var10001 = false;
               break label246;
            }

            try {
               this.c = true;
            } catch (Throwable var24) {
               var10000 = var24;
               var10001 = false;
               break label246;
            }

            int var4 = 0;

            while(true) {
               try {
                  if (var4 >= this.d.size()) {
                     this.d.clear();
                     return;
                  }
               } catch (Throwable var22) {
                  var10000 = var22;
                  var10001 = false;
                  break;
               }

               try {
                  if (this.d.keyAt(var4) >= 0) {
                     this.ew.removeMessages(((StickSimServiceHandler.c)this.d.valueAt(var4)).n);
                  }
               } catch (Throwable var23) {
                  var10000 = var23;
                  var10001 = false;
                  break;
               }

               ++var4;
            }
         }

         Throwable var3 = var10000;
         throw var3;
      }
   }

   public void stop(int var1) {
      this.ew.removeMessages(var1);
      this.d.delete(var1);
   }

   public void stopStickSim() {
      Object var1 = this.lock;
      synchronized(var1){}

      Throwable var10000;
      label226: {
         boolean var10001;
         try {
            if (!this.c) {
               return;
            }
         } catch (Throwable var24) {
            var10000 = var24;
            var10001 = false;
            break label226;
         }

         try {
            this.c = false;
         } catch (Throwable var23) {
            var10000 = var23;
            var10001 = false;
            break label226;
         }

         int var3 = 0;

         while(true) {
            try {
               if (var3 >= this.d.size()) {
                  this.d.clear();
                  return;
               }
            } catch (Throwable var21) {
               var10000 = var21;
               var10001 = false;
               break;
            }

            try {
               if (this.d.keyAt(var3) >= 0) {
                  this.ew.removeMessages(((StickSimServiceHandler.c)this.d.valueAt(var3)).n);
               }
            } catch (Throwable var22) {
               var10000 = var22;
               var10001 = false;
               break;
            }

            ++var3;
         }
      }

      Throwable var2 = var10000;
      throw var2;
   }

   public void stopStickSimUnit(int var1) {
      Object var2 = this.lock;
      synchronized(var2){}

      Throwable var10000;
      label172: {
         boolean var10001;
         StickSimServiceHandler.c var4;
         try {
            this.ew.removeMessages(var1);
            var4 = (StickSimServiceHandler.c)this.d.get(var1);
         } catch (Throwable var25) {
            var10000 = var25;
            var10001 = false;
            break label172;
         }

         label164: {
            if (var4 != null) {
               try {
                  if (var4.p) {
                     break label164;
                  }
               } catch (Throwable var24) {
                  var10000 = var24;
                  var10001 = false;
                  break label172;
               }
            }

            try {
               return;
            } catch (Throwable var23) {
               var10000 = var23;
               var10001 = false;
               break label172;
            }
         }

         label156:
         try {
            var4.p = false;
            this.sendKeyEvent(new ControllerKeyEvent(1, var4.eE, var1));
            this.d.remove(var1);
            return;
         } catch (Throwable var22) {
            var10000 = var22;
            var10001 = false;
            break label156;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   public interface OnStickSimChangeListener {
      void OnStickSimChange(ControllerKeyEvent var1);
   }

   final class a implements Runnable {
      private ControllerKeyEvent cG;

      public a(ControllerKeyEvent var2) {
         this.cG = var2;
      }

      public final void run() {
         if (StickSimServiceHandler.this.ex != null) {
            StickSimServiceHandler.this.ex.OnStickSimChange(this.cG);
         }

      }
   }

   final class b extends Handler {
      public b(Looper var2) {
         super(var2);
      }

      public final void handleMessage(Message param1) {
         // $FF: Couldn't be decompiled
      }
   }

   public final class c {
      int eA;
      int eB;
      int eC;
      int eD;
      int eE;
      int[] eF;
      final Object lock = new Object();
      int n;
      boolean p;

      public c(StickSimServiceHandler var1, StickEvent var2) {
         this.n = var2.getPlayerOrder();
         this.eE = 0;
         this.eA = 0;
         this.eB = 0;
         this.eC = 0;
         this.eD = 0;
         this.p = false;
         this.eF = new int[8];
         Arrays.fill(this.eF, 1);
      }

      public final String toString() {
         return "StickSimUnit [lastlx=" + this.eA + ", lastly=" + this.eB + ", lastrx=" + this.eC + ", lastry=" + this.eD + ", player=" + this.n + ", lastKeyCode=" + this.eE + ", isRun=" + this.p + "]";
      }
   }
}
