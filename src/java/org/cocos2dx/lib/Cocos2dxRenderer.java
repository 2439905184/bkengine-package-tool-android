package org.cocos2dx.lib;

import android.opengl.GLSurfaceView.Renderer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class Cocos2dxRenderer implements Renderer {
   private static final long NANOSECONDSPERMICROSECOND = 1000000L;
   private static final long NANOSECONDSPERSECOND = 1000000000L;
   private static long sAnimationInterval = 16666666L;
   private long mLastTickInNanoSeconds;
   private int mScreenHeight;
   private int mScreenWidth;

   private static native void nativeDeleteBackward();

   private static native String nativeGetContentText();

   private static native void nativeInit(int var0, int var1);

   private static native void nativeInsertText(String var0);

   private static native void nativeKeyDown(int var0);

   private static native void nativeKeyUp(int var0);

   private static native void nativeOnPause();

   private static native void nativeOnResume();

   private static native void nativeRender();

   private static native void nativeTouchesBegin(int var0, float var1, float var2);

   private static native void nativeTouchesCancel(int[] var0, float[] var1, float[] var2);

   private static native void nativeTouchesEnd(int var0, float var1, float var2);

   private static native void nativeTouchesMove(int[] var0, float[] var1, float[] var2);

   public static void setAnimationInterval(double var0) {
      sAnimationInterval = (long)(1.0E9D * var0);
   }

   public String getContentText() {
      return nativeGetContentText();
   }

   public void handleActionCancel(int[] var1, float[] var2, float[] var3) {
      nativeTouchesCancel(var1, var2, var3);
   }

   public void handleActionDown(int var1, float var2, float var3) {
      nativeTouchesBegin(var1, var2, var3);
   }

   public void handleActionMove(int[] var1, float[] var2, float[] var3) {
      nativeTouchesMove(var1, var2, var3);
   }

   public void handleActionUp(int var1, float var2, float var3) {
      nativeTouchesEnd(var1, var2, var3);
   }

   public void handleDeleteBackward() {
      nativeDeleteBackward();
   }

   public void handleInsertText(String var1) {
      nativeInsertText(var1);
   }

   public void handleKeyDown(int var1) {
      nativeKeyDown(var1);
   }

   public void handleKeyUp(int var1) {
      nativeKeyUp(var1);
   }

   public void handleOnPause() {
      nativeOnPause();
   }

   public void handleOnResume() {
      nativeOnResume();
   }

   public void onDrawFrame(GL10 var1) {
      nativeRender();
   }

   public void onSurfaceChanged(GL10 var1, int var2, int var3) {
   }

   public void onSurfaceCreated(GL10 var1, EGLConfig var2) {
      nativeInit(this.mScreenWidth, this.mScreenHeight);
      this.mLastTickInNanoSeconds = System.nanoTime();
   }

   public void setScreenWidthAndHeight(int var1, int var2) {
      this.mScreenWidth = var1;
      this.mScreenHeight = var2;
   }
}
