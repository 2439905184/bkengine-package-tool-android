package com.nibiru.lib.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.View.OnTouchListener;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;

final class h {
   private WindowManager cX = null;
   private LayoutParams cY = null;
   private ImageView dA = null;
   private Bitmap dB;
   private Context mContext;
   private Handler mHandler;

   public h(Context var1, Handler var2) {
      this.mContext = var1;
      this.mHandler = var2;
   }

   private Bitmap F() {
      // $FF: Couldn't be decompiled
   }

   // $FF: synthetic method
   static void a(h var0, Bitmap var1) {
      var0.dB = null;
   }

   public final boolean C() {
      if (this.mContext != null && this.mContext.getApplicationContext() != null && this.mHandler != null) {
         this.cX = (WindowManager)this.mContext.getApplicationContext().getSystemService("window");
         if (this.cX == null) {
            return false;
         } else {
            if (this.dA != null) {
               this.D();
            }

            this.dB = this.F();
            if (this.dB == null) {
               return false;
            } else {
               this.mHandler.postDelayed(new Runnable() {
                  public final void run() {
                     h.this.cY = new LayoutParams();
                     h.this.cY.type = 2010;
                     h.this.cY.flags = 1408;
                     h.this.cY.gravity = 17;
                     h.this.cY.width = -1;
                     h.this.cY.height = -1;
                     h.this.cY.format = -3;
                     h.this.dA = new ImageView(h.this.mContext, (AttributeSet)null);
                     h.this.dA.setOnTouchListener(new OnTouchListener() {
                        public final boolean onTouch(View var1, MotionEvent var2) {
                           h.this.D();
                           return false;
                        }
                     });
                     h.this.dA.setImageBitmap(h.this.dB);
                     h.this.cX.addView(h.this.dA, h.this.cY);
                  }
               }, 200L);
               return true;
            }
         }
      } else {
         return false;
      }
   }

   public final void D() {
      if (this.mContext != null && this.mContext.getApplicationContext() != null && this.mHandler != null) {
         this.cX = (WindowManager)this.mContext.getApplicationContext().getSystemService("window");
         if (this.cX != null) {
            this.mHandler.post(new Runnable() {
               public final void run() {
                  if (h.this.cX != null && h.this.dA != null) {
                     h.this.dA.setImageBitmap((Bitmap)null);
                     h.this.cX.removeView(h.this.dA);
                     if (h.this.dB != null && !h.this.dB.isRecycled()) {
                        h.this.dB.recycle();
                        h.a(h.this, (Bitmap)null);
                     }

                     h.this.dA = null;
                  }

               }
            });
            return;
         }
      }

   }

   public final boolean E() {
      return this.dA != null;
   }
}
