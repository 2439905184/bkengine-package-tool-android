package com.nibiru.lib;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.SparseArray;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public final class b {
   private static long af;
   private static final HandlerThread k;
   private BluexHandler ae;
   private SparseArray ag;
   private boolean ah;
   private final Handler l;

   static {
      HandlerThread var0 = new HandlerThread("combination-scheduler");
      k = var0;
      var0.start();
      af = 22L;
   }

   public b(BluexHandler var1, boolean var2) {
      this.l = new Handler(k.getLooper());
      this.ag = new SparseArray();
      this.ah = false;
      this.ae = var1;
      this.ag.clear();
      this.ah = false;
   }

   // $FF: synthetic method
   static long a() {
      return af;
   }

   // $FF: synthetic method
   static BluexHandler a(com.nibiru.lib.b var0) {
      return var0.ae;
   }

   public static void a(long var0) {
      af = var0;
   }

   // $FF: synthetic method
   static boolean b(com.nibiru.lib.b var0) {
      return var0.ah;
   }

   // $FF: synthetic method
   static Handler c(com.nibiru.lib.b var0) {
      return var0.l;
   }

   // $FF: synthetic method
   static SparseArray d(com.nibiru.lib.b var0) {
      return var0.ag;
   }

   public final void b(KeyEvent var1) {
      int var2 = var1.getDeviceId();
      if (var2 >= 0) {
         com.nibiru.lib.b.a var3 = (com.nibiru.lib.b.a)this.ag.get(var2);
         if (var3 == null) {
            var3 = new com.nibiru.lib.b.a((byte)0);
            this.ag.put(var2, var3);
         }

         if (var1.getAction() == 1) {
            var3.c(var1);
            return;
         }

         if (var1.getAction() == 0) {
            var3.e(var1);
            return;
         }
      }

   }

   public final void reset() {
      SparseArray var1 = this.ag;
      synchronized(var1) {
         this.ag.clear();
      }
   }

   final class a {
      private Queue ai;
      private List aj;
      private boolean ak;

      private a() {
         this.ai = new LinkedList();
         this.aj = new ArrayList();
         this.ak = false;
      }

      // $FF: synthetic method
      a(byte var2) {
         this();
      }

      private KeyEvent[] d(KeyEvent var1) {
         synchronized(this){}

         Throwable var10000;
         label127: {
            boolean var10001;
            long var3;
            ArrayList var5;
            Iterator var6;
            try {
               var3 = SystemClock.uptimeMillis();
               var5 = new ArrayList();
               var6 = this.aj.iterator();
            } catch (Throwable var21) {
               var10000 = var21;
               var10001 = false;
               break label127;
            }

            while(true) {
               try {
                  if (!var6.hasNext()) {
                     KeyEvent[] var8 = (KeyEvent[])var5.toArray(new KeyEvent[var5.size()]);
                     return var8;
                  }
               } catch (Throwable var20) {
                  var10000 = var20;
                  var10001 = false;
                  break;
               }

               try {
                  var5.add(new KeyEvent(var3, var3, 1, (Integer)var6.next(), 0, 0, var1.getDeviceId(), 0, 2));
               } catch (Throwable var19) {
                  var10000 = var19;
                  var10001 = false;
                  break;
               }
            }
         }

         Throwable var2 = var10000;
         throw var2;
      }

      public final void a(boolean var1) {
         synchronized(this){}

         try {
            this.ak = var1;
         } finally {
            ;
         }

      }

      public final KeyEvent[] b() {
         Queue var1 = this.ai;
         synchronized(var1){}

         Throwable var10000;
         label121: {
            boolean var10001;
            ArrayList var2;
            Iterator var4;
            try {
               var2 = new ArrayList();
               var4 = this.ai.iterator();
            } catch (Throwable var19) {
               var10000 = var19;
               var10001 = false;
               break label121;
            }

            while(true) {
               try {
                  if (!var4.hasNext()) {
                     KeyEvent[] var6 = (KeyEvent[])var2.toArray(new KeyEvent[var2.size()]);
                     return var6;
                  }
               } catch (Throwable var18) {
                  var10000 = var18;
                  var10001 = false;
                  break;
               }

               try {
                  var2.add(((com.nibiru.lib.b.b)var4.next()).getKeyEvent());
               } catch (Throwable var17) {
                  var10000 = var17;
                  var10001 = false;
                  break;
               }
            }
         }

         Throwable var3 = var10000;
         throw var3;
      }

      public final Queue c() {
         return this.ai;
      }

      public final void c(KeyEvent param1) {
         // $FF: Couldn't be decompiled
      }

      public final List d() {
         return this.aj;
      }

      public final void e(KeyEvent param1) {
         // $FF: Couldn't be decompiled
      }
   }

   final class b implements Runnable {
      private KeyEvent am;

      public b(KeyEvent var2) {
         this.am = var2;
      }

      public final KeyEvent getKeyEvent() {
         return this.am;
      }

      public final void run() {
         // $FF: Couldn't be decompiled
      }
   }
}
