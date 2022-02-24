package com.nibiru.lib.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import android.util.SparseIntArray;

final class c implements ContinuesKeyService {
   private boolean K = false;
   private ControllerServiceImpl aD;
   private boolean aS = false;
   private SparseIntArray aT = new SparseIntArray();
   private SparseArray aU = new SparseArray();
   private final HandlerThread aV = new HandlerThread("continues-key");
   private c.a aW;
   private long time = 500L;

   public c(ControllerServiceImpl var1) {
      this.aD = var1;
      this.K = true;
      this.aS = true;
      this.aV.start();
   }

   public final void a(ControllerKeyEvent var1) {
      if (var1 != null && this.K) {
         int var2 = var1.getPlayerOrder();
         int var3 = var1.getKeyCode();
         int var4 = var1.getAction();
         if (this.aT.get(var3, -1) != -1) {
            c.b var5 = (c.b)this.aU.get(var2);
            if (var5 == null) {
               var5 = new c.b(this);
               var5.p = true;
               this.aU.append(var2, var5);
            }

            Object var6 = var5.lock;
            synchronized(var6){}
            int var7 = var3 + var2 * 1000;

            Throwable var10000;
            label326: {
               boolean var10001;
               try {
                  var5.p = true;
               } catch (Throwable var40) {
                  var10000 = var40;
                  var10001 = false;
                  break label326;
               }

               if (var4 == 0) {
                  try {
                     if (var5.p && this.aW.hasMessages(var7)) {
                        return;
                     }
                  } catch (Throwable var39) {
                     var10000 = var39;
                     var10001 = false;
                     break label326;
                  }

                  try {
                     this.aW.removeMessages(var7);
                     this.aW.sendEmptyMessageDelayed(var7, this.time);
                  } catch (Throwable var38) {
                     var10000 = var38;
                     var10001 = false;
                     break label326;
                  }
               } else {
                  try {
                     this.aW.removeMessages(var7);
                     var5.p = false;
                  } catch (Throwable var37) {
                     var10000 = var37;
                     var10001 = false;
                     break label326;
                  }
               }

               label302:
               try {
                  return;
               } catch (Throwable var36) {
                  var10000 = var36;
                  var10001 = false;
                  break label302;
               }
            }

            Throwable var8 = var10000;
            throw var8;
         }
      }

   }

   public final void exit() {
      this.unregisterContinuesKeyAll();
      this.aV.quit();
      this.aT.clear();
      this.aU.clear();
   }

   public final void pause() {
      GlobalLog.e("isEnable: " + this.K);
      this.aS = this.K;
      this.K = false;
   }

   public final void registerContinuesDirectionKey() {
      this.registerContinuesKey(21);
      this.registerContinuesKey(22);
      this.registerContinuesKey(19);
      this.registerContinuesKey(20);
   }

   public final void registerContinuesKey(int var1) {
      if (this.aT.size() == 0 && this.aW == null) {
         this.aW = new c.a(this.aV.getLooper());
      }

      this.aT.append(var1, 0);
   }

   public final void registerContinuesKeyAll() {
      int[] var1 = ControllerKeyEvent.GameKeys;
      int var2 = var1.length;

      for(int var3 = 0; var3 < var2; ++var3) {
         this.registerContinuesKey(var1[var3]);
      }

   }

   public final void resume() {
      GlobalLog.e("isPreEnable: " + this.aS);
      this.K = this.aS;
   }

   public final void setIntervalTime(long var1) {
      if (var1 >= 1L && var1 <= 30000L) {
         this.time = var1;
      }
   }

   public final void stop(int var1) {
      this.aU.delete(var1);
   }

   public final void unregisterContinuesKey(int var1) {
      this.aT.delete(var1);
      if (this.aT.size() == 0) {
         this.unregisterContinuesKeyAll();
      }

   }

   public final void unregisterContinuesKeyAll() {
      this.aT.clear();
      this.aW = null;
   }

   final class a extends Handler {
      public a(Looper var2) {
         super(var2);
      }

      public final void handleMessage(Message var1) {
         super.handleMessage(var1);
         this.removeMessages(var1.what);
         if (c.this.K) {
            int var2 = var1.what / 1000;
            int var3 = var1.what % 1000;
            c.b var4 = (c.b)c.this.aU.get(var2);
            if (var4 != null) {
               Object var5 = var4.lock;
               synchronized(var5) {
                  if (!var4.p) {
                     return;
                  }

                  ControllerKeyEvent var7 = new ControllerKeyEvent(0, var3, var2);
                  c.this.aD.sendKeyEvent(var7);
                  this.removeMessages(var1.what);
                  this.sendEmptyMessageDelayed(var1.what, c.this.time);
                  return;
               }
            }
         }

      }
   }

   final class b {
      final Object lock = new Object();
      boolean p;

      b(c var1) {
      }
   }
}
