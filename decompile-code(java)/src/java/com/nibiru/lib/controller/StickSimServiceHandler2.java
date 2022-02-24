package com.nibiru.lib.controller;

import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class StickSimServiceHandler2 implements StickSimService {
   private ControllerServiceImpl aD;
   private boolean c = false;
   private k cl;
   private SparseArray d = new SparseArray();
   private int dp;
   private StickSimServiceHandler2.OnStickSimChangeListener eG = null;
   private StickSimService.StickSimConfig ev;
   private int[] ey = new int[256];
   private int g;
   private final Object lock = new Object();

   static {
      int[] var10000 = new int[]{21, 127, 20, 128, 22, 126, 19, 125};
   }

   public StickSimServiceHandler2(ControllerService var1) {
      this.aD = (ControllerServiceImpl)var1;
      this.cl = this.aD.cl;
   }

   private static void a(StickSimServiceHandler2.a var0, int var1) {
      Iterator var2 = var0.eI.iterator();
      boolean var3 = false;

      while(var2.hasNext()) {
         int var4 = (Integer)var2.next();
         if (var4 != var1) {
            var0.eJ.add(new ControllerKeyEvent(1, var4, var0.n));
         } else {
            var3 = true;
         }
      }

      if (!var3 && var1 >= 0) {
         var0.eJ.add(new ControllerKeyEvent(0, var1, var0.n));
      }

      var0.eI.clear();
      if (var1 >= 0) {
         var0.eI.add(var1);
      }

   }

   private static void a(StickSimServiceHandler2.a var0, int[] var1) {
      Iterator var2 = var0.eI.iterator();

      while(var2.hasNext()) {
         int var3 = (Integer)var2.next();
         int var4 = var1.length;

         boolean var6;
         label36: {
            for(int var5 = 0; var5 < var4; ++var5) {
               if (var3 == var1[var5]) {
                  var6 = true;
                  break label36;
               }
            }

            var6 = false;
         }

         if (!var6) {
            var0.eJ.add(new ControllerKeyEvent(1, var3, var0.n));
         }
      }

      var0.eI.clear();
      int var8 = var1.length;

      for(int var9 = 0; var9 < var8; ++var9) {
         int var10 = var1[var9];
         if (var10 >= 0) {
            var0.eJ.add(new ControllerKeyEvent(0, var10, var0.n));
            var0.eI.add(var10);
         }
      }

   }

   private static boolean a(float var0, float var1) {
      return (double)Math.abs(var0) <= 0.15D && (double)Math.abs(var1) <= 0.15D;
   }

   private boolean d(int var1, int var2) {
      if (this.d == null) {
         return false;
      } else {
         Log.e("StickSimServiceHandler2", "DIR: " + var1);
         StickSimServiceHandler2.a var4 = (StickSimServiceHandler2.a)this.d.get(var2);
         if (var4 == null) {
            return false;
         } else if (var4.eH == var1) {
            return false;
         } else {
            var4.eH = var1;
            var4.eJ.clear();
            if (var1 <= 0) {
               a(var4, -1);
               return true;
            } else {
               boolean var5;
               if (var1 <= 22 && var1 >= 19) {
                  var5 = true;
               } else {
                  var5 = false;
               }

               if (var5) {
                  a(var4, this.g(var1));
               } else {
                  int var6 = this.ey[var1];
                  if (var6 > 0) {
                     a(var4, var6);
                     return true;
                  }

                  int[] var7 = new int[2];
                  switch(var1) {
                  case 125:
                     var7[0] = 19;
                     var7[1] = 21;
                     break;
                  case 126:
                     var7[0] = 19;
                     var7[1] = 22;
                     break;
                  case 127:
                     var7[0] = 20;
                     var7[1] = 21;
                     break;
                  case 128:
                     var7[0] = 20;
                     var7[1] = 22;
                     break;
                  default:
                     return false;
                  }

                  var7[0] = this.g(var7[0]);
                  var7[1] = this.g(var7[1]);
                  a(var4, var7);
               }

               return true;
            }
         }
      }
   }

   private void e(int var1) {
      Object var2 = this.lock;
      synchronized(var2) {
         if (this.cl != null && this.ey != null) {
            if (this.d(0, var1)) {
               this.f(var1);
            }

         }
      }
   }

   private void f(int var1) {
      if (this.aD != null && this.aD.K) {
         StickSimServiceHandler2.a var2 = (StickSimServiceHandler2.a)this.d.get(var1);
         if (var2 != null) {
            Iterator var3 = var2.eJ.iterator();

            while(var3.hasNext()) {
               ControllerKeyEvent var4 = (ControllerKeyEvent)var3.next();
               GlobalLog.e("SEND KEY EVENT: " + var4);
               this.aD.b(var4);
            }
         }
      }

   }

   private int g(int var1) {
      int var2 = this.ey[var1];
      return var2 <= 0 ? var1 : var2;
   }

   private static int getKeyCode(int var0, int var1, int var2) {
      GlobalLog.e("X: " + var1 + " Y: " + var2);
      short var3 = -1;
      int var4 = Math.abs(var1);
      int var5 = Math.abs(var2);
      if (var0 == 1) {
         float var6 = (float)var5 / (float)var4;
         if ((double)var6 < 1.732D && (double)var6 > 0.58D) {
            if (var1 > 0 && var2 > 0) {
               var3 = 128;
            } else {
               if (var1 > 0 && var2 < 0) {
                  return 126;
               }

               if (var1 < 0 && var2 > 0) {
                  return 127;
               }

               if (var1 < 0 && var2 < 0) {
                  return 125;
               }
            }

            return var3;
         }
      }

      if (var1 == 0 && var2 > 0) {
         return 20;
      } else {
         if (var1 != 0 || var2 >= 0) {
            if (var1 > 0 && var2 == 0) {
               return 22;
            }

            if (var1 < 0 && var2 == 0) {
               return 21;
            }

            if (var1 > 0) {
               if (var2 > 0) {
                  if (var4 >= var5) {
                     return 22;
                  }

                  return 20;
               }

               if (var2 < 0) {
                  if (var4 >= var5) {
                     return 22;
                  }

                  return 19;
               }

               return var3;
            }

            if (var1 >= 0) {
               return var3;
            }

            if (var2 > 0) {
               if (var4 >= var5) {
                  return 21;
               }

               return 20;
            }

            if (var2 >= 0) {
               return var3;
            }

            if (var4 >= var5) {
               return 21;
            }
         }

         return 19;
      }
   }

   public final void exit() {
      this.stopStickSim();
      this.eG = null;
      this.aD = null;
      this.cl = null;
   }

   public final StickSimService.StickSimConfig getStickSimConfig() {
      return new StickSimService.StickSimConfig(this.dp, this.g);
   }

   public final void handleStickEvent(StickEvent var1) {
      if (var1 != null && !var1.isHatValue()) {
         if ((StickSimServiceHandler2.a)this.d.get(var1.getPlayerOrder()) == null) {
            StickSimServiceHandler2.a var2 = new StickSimServiceHandler2.a(this);
            var2.n = var1.getPlayerOrder();
            var2.eH = -1;
            this.d.put(var2.n, var2);
         }

         GlobalLog.e("StickSim StickEvent: " + var1.getRawLX() + " : " + var1.getRawLY() + " : " + var1.getRawRX() + " : " + var1.getRawRY());
         if (var1 != null) {
            int var3;
            if (this.dp == 0) {
               if (a(var1.getAxisValue(0), var1.getAxisValue(1))) {
                  var3 = 0;
               } else {
                  var3 = getKeyCode(this.g, var1.getRawLX(), var1.getRawLY());
               }
            } else if (a(var1.getAxisValue(2), var1.getAxisValue(3))) {
               var3 = 0;
            } else {
               var3 = getKeyCode(this.g, var1.getRawRX(), var1.getRawRY());
            }

            if (this.d(var3, var1.getPlayerOrder())) {
               this.f(var1.getPlayerOrder());
               return;
            }
         }
      }

   }

   public final boolean isStart() {
      return this.c;
   }

   public final void setHideStickEvent(boolean var1) {
   }

   public final void setIntervalTime(int var1) {
   }

   public final void setKeyNum(int var1) {
      this.g = var1;
   }

   public final void setKeyTrans(int[] var1) {
      if (var1 != null && var1.length > 255) {
         this.stopStickSim();
         this.startStickSim(this.ev);
         this.ey = var1;
      } else {
         Log.e("StickSimServiceHandler2", "SET STICK SIM KEY MAP FAILED");
      }
   }

   public final void setMode(int var1) {
      Log.w("StickSimServiceHandler2", "NEW SDK NOT SUPPORT SET MODE");
   }

   public final void setStickLoc(int var1) {
      this.dp = var1;
   }

   public final void startStickSim() {
      this.startStickSim(StickSimService.StickSimConfig.getDefaultConfig());
   }

   public final void startStickSim(StickSimService.StickSimConfig var1) {
      if (var1 != null) {
         this.ev = var1;
         this.g = var1.directionNum;
         this.dp = var1.stickLoc;
         this.c = true;
         GlobalLog.e("DIR: " + var1.directionNum);
      }
   }

   public final void stopStickSim() {
      int var1 = 0;
      Object var2 = this.lock;
      synchronized(var2){}

      Throwable var10000;
      label216: {
         boolean var10001;
         try {
            if (!this.c) {
               return;
            }
         } catch (Throwable var24) {
            var10000 = var24;
            var10001 = false;
            break label216;
         }

         try {
            this.c = false;
         } catch (Throwable var23) {
            var10000 = var23;
            var10001 = false;
            break label216;
         }

         while(true) {
            try {
               if (var1 >= this.d.size()) {
                  this.d.clear();
                  return;
               }
            } catch (Throwable var21) {
               var10000 = var21;
               var10001 = false;
               break;
            }

            try {
               if (this.d.keyAt(var1) >= 0) {
                  this.e(this.d.keyAt(var1));
               }
            } catch (Throwable var22) {
               var10000 = var22;
               var10001 = false;
               break;
            }

            ++var1;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   public final void stopStickSimUnit(int var1) {
      this.e(var1);
      if (this.d != null) {
         this.d.remove(var1);
      }

   }

   public interface OnStickSimChangeListener {
      void OnStickSimChange(ControllerKeyEvent var1);
   }

   public final class a {
      int eH;
      List eI = new ArrayList();
      List eJ = new ArrayList();
      int n;

      protected a(StickSimServiceHandler2 var1) {
      }
   }
}
