package com.nibiru.lib.controller;

import android.app.Instrumentation;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;

final class i {
   private ControllerServiceImpl aD;
   private Instrumentation dI = new Instrumentation();
   private HandlerThread db;
   private Handler mHandler;

   public i(ControllerServiceImpl var1) {
      this.aD = var1;
   }

   public final void G() {
      if (this.db != null) {
         this.db.quit();
      }

   }

   public final void c(InputEvent var1) {
      if (this.mHandler == null) {
         this.db = new HandlerThread("insturment-thread");
         this.db.start();
         this.mHandler = new Handler(this.db.getLooper());
      }

      this.mHandler.post(new i.a(var1));
   }

   final class a implements Runnable {
      private InputEvent dJ;

      public a(InputEvent var2) {
         this.dJ = var2;
      }

      public final void run() {
         try {
            if (i.this.aD == null || !i.this.aD.m() || !i.this.aD.a(this.dJ)) {
               if (this.dJ instanceof KeyEvent) {
                  i.this.dI.sendKeySync((KeyEvent)this.dJ);
               } else {
                  if (this.dJ instanceof MotionEvent) {
                     i.this.dI.sendPointerSync((MotionEvent)this.dJ);
                  }

               }
            }
         } catch (Exception var2) {
            var2.printStackTrace();
         }
      }
   }
}
