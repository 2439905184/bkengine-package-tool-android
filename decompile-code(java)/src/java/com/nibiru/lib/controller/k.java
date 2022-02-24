package com.nibiru.lib.controller;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.Arrays;

public final class k implements SensorStateService {
   public static SparseIntArray el = new SparseIntArray();
   private static int[] em = new int[]{106, 107, 99, 97, 98, 96, 21, 22, 20, 19, 102, 103, 104, 105, 109, 108, 3, 23, 25, 24};
   public static int[] en = new int[20];
   private SparseArray ef = new SparseArray();
   private int[] eg = new int[16];
   private SparseArray eh = new SparseArray();
   private SparseArray ei = new SparseArray();
   private SparseArray ej = new SparseArray();
   private SparseArray ek = new SparseArray();

   public k() {
      Arrays.fill(en, 0);
      int var1 = 0;

      while(true) {
         int var2 = em.length;
         int var3 = 0;
         if (var1 >= var2) {
            while(var3 < en.length) {
               en[var3] = (int)Math.pow(2.0D, (double)var3);
               ++var3;
            }

            return;
         }

         el.append(em[var1], var1);
         ++var1;
      }
   }

   private static int c(int var0) {
      return el.get(var0, -1) >= 0 && el.get(var0, -1) < en.length ? en[el.get(var0, -1)] : 0;
   }

   public final void a(int var1, StickEvent var2) {
      synchronized(this){}

      Throwable var10000;
      label604: {
         int var4;
         boolean var10001;
         try {
            var4 = var2.getPlayerOrder();
         } catch (Throwable var80) {
            var10000 = var80;
            var10001 = false;
            break label604;
         }

         if (var4 < 0) {
            return;
         }

         StickEvent var5;
         try {
            var5 = (StickEvent)this.eh.get(var1);
         } catch (Throwable var79) {
            var10000 = var79;
            var10001 = false;
            break label604;
         }

         label591: {
            if (var5 == null) {
               try {
                  var2.setLeftStickState(true);
               } catch (Throwable var75) {
                  var10000 = var75;
                  var10001 = false;
                  break label604;
               }
            } else {
               label605: {
                  label588: {
                     try {
                        if (var5.getRawLX() == var2.getRawLX() && var5.getRawLY() == var2.getRawLY()) {
                           break label588;
                        }
                     } catch (Throwable var78) {
                        var10000 = var78;
                        var10001 = false;
                        break label604;
                     }

                     try {
                        var2.setLeftStickState(true);
                     } catch (Throwable var76) {
                        var10000 = var76;
                        var10001 = false;
                        break label604;
                     }
                  }

                  int var6;
                  int var7;
                  try {
                     if (var5.getRawRX() != var2.getRawRX()) {
                        break label605;
                     }

                     var6 = var5.getRawRY();
                     var7 = var2.getRawRY();
                  } catch (Throwable var77) {
                     var10000 = var77;
                     var10001 = false;
                     break label604;
                  }

                  if (var6 == var7) {
                     break label591;
                  }
               }
            }

            try {
               var2.setRightStickState(true);
            } catch (Throwable var74) {
               var10000 = var74;
               var10001 = false;
               break label604;
            }
         }

         label570:
         try {
            this.eh.append(var1, var2);
            return;
         } catch (Throwable var73) {
            var10000 = var73;
            var10001 = false;
            break label570;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   public final void clear() {
      this.ef.clear();
      Arrays.fill(this.eg, 1);
      this.eh.clear();
      this.ej.clear();
      this.ei.clear();
   }

   public final boolean e(ControllerKeyEvent var1) {
      synchronized(this){}

      boolean var5;
      label962: {
         Throwable var10000;
         label985: {
            int var3;
            boolean var10001;
            try {
               var3 = var1.getPlayerOrder();
            } catch (Throwable var97) {
               var10000 = var97;
               var10001 = false;
               break label985;
            }

            if (var3 < 0) {
               var5 = false;
               return var5;
            }

            int[] var4;
            try {
               var4 = (int[])this.ef.get(var1.getPlayerOrder());
            } catch (Throwable var96) {
               var10000 = var96;
               var10001 = false;
               break label985;
            }

            if (var4 == null) {
               try {
                  var4 = new int[256];
                  Arrays.fill(var4, 1);
                  this.ef.append(var1.getPlayerOrder(), var4);
                  if (var1.getPlayerOrder() < this.eg.length && var1.getPlayerOrder() >= 0) {
                     this.eg[var1.getPlayerOrder()] = 0;
                  }
               } catch (Throwable var95) {
                  var10000 = var95;
                  var10001 = false;
                  break label985;
               }
            }

            label986: {
               try {
                  if (var1.getKeyCode() > 0 && var1.getKeyCode() <= 256) {
                     break label986;
                  }
               } catch (Throwable var100) {
                  var10000 = var100;
                  var10001 = false;
                  break label985;
               }

               var5 = false;
               return var5;
            }

            label972: {
               try {
                  if (var1.getPlayerOrder() < 0 || var1.getKeyCode() < 0 || var1.getPlayerOrder() >= this.eg.length) {
                     break label972;
                  }
               } catch (Throwable var99) {
                  var10000 = var99;
                  var10001 = false;
                  break label985;
               }

               try {
                  if (var1.getAction() == 0) {
                     int[] var8 = this.eg;
                     int var9 = var1.getPlayerOrder();
                     var8[var9] |= c(var1.getKeyCode());
                     break label972;
                  }
               } catch (Throwable var98) {
                  var10000 = var98;
                  var10001 = false;
                  break label985;
               }

               try {
                  int[] var6 = this.eg;
                  int var7 = var1.getPlayerOrder();
                  var6[var7] &= ~c(var1.getKeyCode());
               } catch (Throwable var94) {
                  var10000 = var94;
                  var10001 = false;
                  break label985;
               }
            }

            try {
               if (var4[var1.getKeyCode()] == var1.getAction()) {
                  break label962;
               }
            } catch (Throwable var93) {
               var10000 = var93;
               var10001 = false;
               break label985;
            }

            try {
               var4[var1.getKeyCode()] = var1.getAction();
            } catch (Throwable var92) {
               var10000 = var92;
               var10001 = false;
               break label985;
            }

            var5 = true;
            return var5;
         }

         Throwable var2 = var10000;
         throw var2;
      }

      var5 = false;
      return var5;
   }

   public final AccEvent getAccEvent(int var1) {
      return (AccEvent)this.ej.get(var1);
   }

   public final GyroEvent getGyroEvent(int var1) {
      return (GyroEvent)this.ei.get(var1);
   }

   public final int getKeyState2(int var1) {
      synchronized(this){}
      int var2;
      if (var1 >= 0) {
         label89: {
            Throwable var10000;
            label88: {
               boolean var10001;
               int var4;
               try {
                  var4 = this.eg.length;
               } catch (Throwable var11) {
                  var10000 = var11;
                  var10001 = false;
                  break label88;
               }

               if (var1 >= var4) {
                  break label89;
               }

               label75:
               try {
                  var2 = this.eg[var1];
                  return var2;
               } catch (Throwable var10) {
                  var10000 = var10;
                  var10001 = false;
                  break label75;
               }
            }

            Throwable var3 = var10000;
            throw var3;
         }
      }

      var2 = 0;
      return var2;
   }

   public final MotionSenseEvent getMotionSenseState(int var1) {
      synchronized(this){}

      MotionSenseEvent var3;
      try {
         var3 = (MotionSenseEvent)this.ek.get(var1);
      } finally {
         ;
      }

      return var3;
   }
}
