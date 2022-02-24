package org.cocos2dx.lib;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;

public class Cocos2dxGLSurfaceView extends GLSurfaceView {
   private static final int HANDLER_CLOSE_IME_KEYBOARD = 3;
   private static final int HANDLER_OPEN_IME_KEYBOARD = 2;
   private static final String TAG = Cocos2dxGLSurfaceView.class.getSimpleName();
   private static Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
   private static Cocos2dxTextInputWraper sCocos2dxTextInputWraper;
   private static Handler sHandler;
   private Cocos2dxEditText mCocos2dxEditText;
   private Cocos2dxRenderer mCocos2dxRenderer;

   public Cocos2dxGLSurfaceView(Context var1) {
      super(var1);
      this.initView();
   }

   public Cocos2dxGLSurfaceView(Context var1, AttributeSet var2) {
      super(var1, var2);
      this.initView();
   }

   public static void closeIMEKeyboard() {
      Message var0 = new Message();
      var0.what = 3;
      sHandler.sendMessage(var0);
   }

   private static void dumpMotionEvent(MotionEvent var0) {
      String[] var1 = new String[]{"DOWN", "UP", "MOVE", "CANCEL", "OUTSIDE", "POINTER_DOWN", "POINTER_UP", "7?", "8?", "9?"};
      StringBuilder var2 = new StringBuilder();
      int var3 = var0.getAction();
      int var4 = var3 & 255;
      var2.append("event ACTION_").append(var1[var4]);
      if (var4 == 5 || var4 == 6) {
         var2.append("(pid ").append(var3 >> 8);
         var2.append(")");
      }

      var2.append("[");

      for(int var9 = 0; var9 < var0.getPointerCount(); ++var9) {
         var2.append("#").append(var9);
         var2.append("(pid ").append(var0.getPointerId(var9));
         var2.append(")=").append((int)var0.getX(var9));
         var2.append(",").append((int)var0.getY(var9));
         if (var9 + 1 < var0.getPointerCount()) {
            var2.append(";");
         }
      }

      var2.append("]");
      Log.d(TAG, var2.toString());
   }

   private String getContentText() {
      return this.mCocos2dxRenderer.getContentText();
   }

   public static Cocos2dxGLSurfaceView getInstance() {
      return mCocos2dxGLSurfaceView;
   }

   public static void openIMEKeyboard() {
      Message var0 = new Message();
      var0.what = 2;
      var0.obj = mCocos2dxGLSurfaceView.getContentText();
      sHandler.sendMessage(var0);
   }

   public static void queueAccelerometer(final float var0, final float var1, final float var2, final long var3) {
      mCocos2dxGLSurfaceView.queueEvent(new Runnable() {
         public void run() {
            Cocos2dxAccelerometer.onSensorChanged(var0, var1, var2, var3);
         }
      });
   }

   public void deleteBackward() {
      this.queueEvent(new Runnable() {
         public void run() {
            Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleDeleteBackward();
         }
      });
   }

   public Cocos2dxEditText getCocos2dxEditText() {
      return this.mCocos2dxEditText;
   }

   protected void initView() {
      this.setEGLContextClientVersion(2);
      this.setFocusableInTouchMode(true);
      mCocos2dxGLSurfaceView = this;
      sCocos2dxTextInputWraper = new Cocos2dxTextInputWraper(this);
      sHandler = new Handler() {
         public void handleMessage(Message var1) {
            switch(var1.what) {
            case 2:
               if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null && Cocos2dxGLSurfaceView.this.mCocos2dxEditText.requestFocus()) {
                  Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                  Cocos2dxGLSurfaceView.this.mCocos2dxEditText.setText("");
                  String var5 = (String)var1.obj;
                  Cocos2dxGLSurfaceView.this.mCocos2dxEditText.append(var5);
                  Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper.setOriginText(var5);
                  Cocos2dxGLSurfaceView.this.mCocos2dxEditText.addTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                  ((InputMethodManager)Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).showSoftInput(Cocos2dxGLSurfaceView.this.mCocos2dxEditText, 0);
                  Log.d("GLSurfaceView", "showSoftInput");
                  return;
               }
               break;
            case 3:
               if (Cocos2dxGLSurfaceView.this.mCocos2dxEditText != null) {
                  Cocos2dxGLSurfaceView.this.mCocos2dxEditText.removeTextChangedListener(Cocos2dxGLSurfaceView.sCocos2dxTextInputWraper);
                  ((InputMethodManager)Cocos2dxGLSurfaceView.mCocos2dxGLSurfaceView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(Cocos2dxGLSurfaceView.this.mCocos2dxEditText.getWindowToken(), 0);
                  Cocos2dxGLSurfaceView.this.requestFocus();
                  Log.d("GLSurfaceView", "HideSoftInput");
                  return;
               }
            }

         }
      };
   }

   public void insertText(final String var1) {
      this.queueEvent(new Runnable() {
         public void run() {
            Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleInsertText(var1);
         }
      });
   }

   public boolean onKeyDown(final int var1, KeyEvent var2) {
      switch(var1) {
      case 4:
      case 82:
         this.queueEvent(new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyDown(var1);
            }
         });
         return true;
      default:
         return super.onKeyDown(var1, var2);
      }
   }

   public boolean onKeyUp(final int var1, KeyEvent var2) {
      switch(var1) {
      case 4:
      case 82:
         this.queueEvent(new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleKeyUp(var1);
            }
         });
         return true;
      default:
         return super.onKeyUp(var1, var2);
      }
   }

   public void onPause() {
      this.queueEvent(new Runnable() {
         public void run() {
            Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnPause();
         }
      });
      this.setRenderMode(0);
   }

   public void onResume() {
      super.onResume();
      this.setRenderMode(1);
      this.queueEvent(new Runnable() {
         public void run() {
            Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleOnResume();
         }
      });
   }

   protected void onSizeChanged(int var1, int var2, int var3, int var4) {
      if (!this.isInEditMode()) {
         this.mCocos2dxRenderer.setScreenWidthAndHeight(var1, var2);
      }

   }

   public boolean onTouchEvent(MotionEvent var1) {
      int var2 = var1.getPointerCount();
      final int[] var3 = new int[var2];
      final float[] var4 = new float[var2];
      final float[] var5 = new float[var2];

      for(int var6 = 0; var6 < var2; ++var6) {
         var3[var6] = var1.getPointerId(var6);
         var4[var6] = var1.getX(var6);
         var5[var6] = var1.getY(var6);
      }

      switch(255 & var1.getAction()) {
      case 0:
         final int var18 = var1.getPointerId(0);
         final float var19 = var4[0];
         final float var20 = var5[0];
         Runnable var21 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(var18, var19, var20);
            }
         };
         this.queueEvent(var21);
         break;
      case 1:
         final int var8 = var1.getPointerId(0);
         final float var9 = var4[0];
         final float var10 = var5[0];
         Runnable var11 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(var8, var9, var10);
            }
         };
         this.queueEvent(var11);
         break;
      case 2:
         Runnable var17 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionMove(var3, var4, var5);
            }
         };
         this.queueEvent(var17);
         break;
      case 3:
         Runnable var7 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionCancel(var3, var4, var5);
            }
         };
         this.queueEvent(var7);
      case 4:
      default:
         break;
      case 5:
         int var22 = var1.getAction() >> 8;
         final int var23 = var1.getPointerId(var22);
         final float var24 = var1.getX(var22);
         final float var25 = var1.getY(var22);
         Runnable var26 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionDown(var23, var24, var25);
            }
         };
         this.queueEvent(var26);
         break;
      case 6:
         int var12 = var1.getAction() >> 8;
         final int var13 = var1.getPointerId(var12);
         final float var14 = var1.getX(var12);
         final float var15 = var1.getY(var12);
         Runnable var16 = new Runnable() {
            public void run() {
               Cocos2dxGLSurfaceView.this.mCocos2dxRenderer.handleActionUp(var13, var14, var15);
            }
         };
         this.queueEvent(var16);
      }

      return true;
   }

   public void setCocos2dxEditText(Cocos2dxEditText var1) {
      this.mCocos2dxEditText = var1;
      if (this.mCocos2dxEditText != null && sCocos2dxTextInputWraper != null) {
         this.mCocos2dxEditText.setOnEditorActionListener(sCocos2dxTextInputWraper);
         this.mCocos2dxEditText.setCocos2dxGLSurfaceView(this);
         this.requestFocus();
      }

   }

   public void setCocos2dxRenderer(Cocos2dxRenderer var1) {
      this.mCocos2dxRenderer = var1;
      this.setRenderer(this.mCocos2dxRenderer);
   }

   private class DialogParameters {
      public String s1;
      public String s2;
   }
}
