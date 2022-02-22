package com.nibiru.lib;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.KeyEvent;

public class BTDeviceStickSim {
   public static final int STICKSIM_KEYMSG = 1024;
   private static final HandlerThread k;
   private boolean c = false;
   private SparseArray d = new SparseArray();
   private BluexHandler e;
   private boolean f = true;
   private int g;
   private int h = 500;
   private double i = 0.35D;
   private double j = 2.9D;
   private final Handler l;
   private final Object lock = new Object();
   private int mode;

   static {
      HandlerThread var0 = new HandlerThread("sticksim-scheduler");
      k = var0;
      var0.start();
   }

   public BTDeviceStickSim(BluexHandler var1) {
      this.l = new Handler(k.getLooper()) {
         public final void handleMessage(Message var1) {
            super.handleMessage(var1);
            Object var2 = BTDeviceStickSim.this.lock;
            synchronized(var2){}

            Throwable var10000;
            label279: {
               boolean var10001;
               label278: {
                  label283: {
                     BTDeviceStickSim.a var4;
                     try {
                        if (!BTDeviceStickSim.this.c) {
                           break label283;
                        }

                        var4 = (BTDeviceStickSim.a)BTDeviceStickSim.this.d.get(var1.what);
                     } catch (Throwable var39) {
                        var10000 = var39;
                        var10001 = false;
                        break label279;
                     }

                     if (var4 == null) {
                        break label278;
                     }

                     try {
                        if (!var4.p || var1.obj == null) {
                           break label278;
                        }
                     } catch (Throwable var38) {
                        var10000 = var38;
                        var10001 = false;
                        break label279;
                     }

                     try {
                        var4.o = (KeyEvent)var1.obj;
                        Message var5 = new Message();
                        var5.what = 1024;
                        var5.obj = var4.o;
                        BTDeviceStickSim.this.e.sendMessage(var5);
                        if (BTDeviceStickSim.this.f) {
                           Message var7 = Message.obtain(var1);
                           var7.obj = new KeyEvent(var4.o);
                           var7.what = var4.n;
                           BTDeviceStickSim.this.l.removeMessages(var4.n);
                           BTDeviceStickSim.this.l.sendMessageDelayed(var7, (long)BTDeviceStickSim.this.h);
                        }
                     } catch (Throwable var37) {
                        var10000 = var37;
                        var10001 = false;
                        break label279;
                     }
                  }

                  try {
                     return;
                  } catch (Throwable var36) {
                     var10000 = var36;
                     var10001 = false;
                     break label279;
                  }
               }

               label260:
               try {
                  return;
               } catch (Throwable var35) {
                  var10000 = var35;
                  var10001 = false;
                  break label260;
               }
            }

            Throwable var3 = var10000;
            throw var3;
         }
      };
      this.e = var1;
   }

   private void a(int var1, int var2, int var3) {
      BTDeviceStickSim.a var4 = (BTDeviceStickSim.a)this.d.get(var3);
      boolean var5;
      KeyEvent var6;
      if (var4 == null) {
         var4 = new BTDeviceStickSim.a(this);
         var4.p = false;
         var4.n = var3;
         var4.o = null;
         this.d.put(var3, var4);
         var5 = false;
         var6 = null;
      } else {
         KeyEvent var22 = var4.o;
         var5 = var4.p;
         var6 = var22;
      }

      int var7 = Math.abs(var1);
      int var8 = Math.abs(var2);
      if (var7 < 15 && var8 < 15) {
         if (var6 != null || var5) {
            this.a(var3, var4);
         }
      } else {
         byte var9;
         label142: {
            var9 = -1;
            int var10 = Math.abs(var1);
            int var11 = Math.abs(var2);
            if (this.g == 1) {
               int var21 = (int)(this.i * (double)var10);
               if (var11 <= (int)(this.j * (double)var10) && var11 >= var21) {
                  if (var1 > 0 && var2 > 0) {
                     var9 = 26;
                  } else if (var1 > 0 && var2 < 0) {
                     var9 = 28;
                  } else if (var1 < 0 && var2 > 0) {
                     var9 = 25;
                  } else if (var1 < 0 && var2 < 0) {
                     var9 = 27;
                  }

                  if (var9 > 0) {
                     break label142;
                  }
               }
            }

            if (var1 == 0 && var2 > 0) {
               var9 = 19;
            } else {
               label154: {
                  if (var1 != 0 || var2 >= 0) {
                     if (var1 > 0 && var2 == 0) {
                        var9 = 22;
                        break label154;
                     }

                     if (var1 < 0 && var2 == 0) {
                        var9 = 21;
                        break label154;
                     }

                     if (var1 > 0) {
                        if (var2 > 0) {
                           if (var10 >= var11) {
                              var9 = 22;
                           } else {
                              var9 = 19;
                           }
                        } else if (var2 < 0) {
                           if (var10 >= var11) {
                              var9 = 22;
                           } else {
                              var9 = 20;
                           }
                        }
                        break label154;
                     }

                     if (var1 >= 0) {
                        break label154;
                     }

                     if (var2 > 0) {
                        if (var10 >= var11) {
                           var9 = 21;
                        } else {
                           var9 = 19;
                        }
                        break label154;
                     }

                     if (var2 >= 0) {
                        break label154;
                     }

                     if (var10 >= var11) {
                        var9 = 21;
                        break label154;
                     }
                  }

                  var9 = 20;
               }
            }
         }

         if (var9 != -1) {
            long var12 = SystemClock.uptimeMillis();
            KeyEvent var14 = new KeyEvent(var12, var12, 0, var9, 0, 0, var3, 0, 2);
            if (var5 && var6 != null) {
               if (var9 == var6.getKeyCode()) {
                  return;
               }

               this.a(var3, var4);
            }

            Object var15 = this.lock;
            synchronized(var15) {
               var4.p = true;
               var4.o = var14;
               var4.n = var3;
            }

            Message var17 = new Message();
            var17.what = 1024;
            var17.obj = new KeyEvent(var4.o);
            this.e.sendMessage(var17);
            if (this.f) {
               Message var19 = new Message();
               var19.what = var3;
               var19.obj = var14;
               this.l.removeMessages(var3);
               this.l.sendMessageDelayed(var19, (long)this.h);
               return;
            }
         }
      }

   }

   private void a(int var1, BTDeviceStickSim.a var2) {
      this.l.removeMessages(var1);
      if (var2 != null) {
         KeyEvent var3 = var2.o;
         if (var3 != null) {
            long var4 = SystemClock.uptimeMillis();
            KeyEvent var6 = new KeyEvent(var4, var4, 1, var3.getKeyCode(), 0, 0, var1, 0, 2);
            Message var7 = new Message();
            var7.what = 1024;
            var7.obj = var6;
            this.e.sendMessage(var7);
         }

         var2.o = null;
         var2.p = false;
      }

   }

   public int getDirectionState() {
      return this.g;
   }

   public int getMode() {
      return this.mode;
   }

   public void handleStickSimData(BTDeviceStickEvent var1) {
      if (var1 != null) {
         if (this.mode == 0) {
            if (var1.getLoc() == 0) {
               this.a(var1.getRelatedX(), var1.getRelatedY(), var1.getPlayerOrder());
               return;
            }
         } else if (this.mode == 1 && var1.getLoc() == 1) {
            this.a(var1.getRelatedX(), var1.getRelatedY(), var1.getPlayerOrder());
            return;
         }
      }

   }

   public boolean isContinueState() {
      return this.f;
   }

   public boolean isStart() {
      return this.c;
   }

   public void setContinuesState(boolean var1) {
      this.f = var1;
   }

   public void setDirectionState(int var1) {
      this.g = var1;
   }

   public void setIntervalTime(int var1) {
      this.h = var1;
      if (this.h <= 50) {
         this.h = 50;
      }

   }

   public void setMode(int var1) {
      this.mode = var1;
   }

   public void start() {
      Object var1 = this.lock;
      synchronized(var1) {
         this.c = true;
      }
   }

   public void stop() {
      Object var1 = this.lock;
      synchronized(var1){}

      Throwable var10000;
      label136: {
         boolean var10001;
         try {
            this.c = false;
         } catch (Throwable var16) {
            var10000 = var16;
            var10001 = false;
            break label136;
         }

         int var3 = 0;

         while(true) {
            try {
               if (var3 >= this.d.size()) {
                  this.d.clear();
                  return;
               }
            } catch (Throwable var15) {
               var10000 = var15;
               var10001 = false;
               break;
            }

            try {
               this.l.removeMessages(((BTDeviceStickSim.a)this.d.valueAt(var3)).n);
            } catch (Throwable var14) {
               var10000 = var14;
               var10001 = false;
               break;
            }

            ++var3;
         }
      }

      Throwable var2 = var10000;
      throw var2;
   }

   public void stopPlayer(int var1) {
      this.a(var1, (BTDeviceStickSim.a)this.d.get(var1));
   }

   final class a {
      int n;
      KeyEvent o;
      boolean p;

      a(BTDeviceStickSim var1) {
      }
   }
}
