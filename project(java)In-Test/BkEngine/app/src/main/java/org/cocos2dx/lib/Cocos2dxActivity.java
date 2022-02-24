package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;

public abstract class Cocos2dxActivity extends Activity implements Cocos2dxHelper.Cocos2dxHelperListener {
   private static final String TAG = Cocos2dxActivity.class.getSimpleName();
   private static Context sContext = null;
   protected Cocos2dxGLSurfaceView mGLSurfaceView;
   private Cocos2dxHandler mHandler;

   public static Context getContext() {
      return sContext;
   }

   private static final boolean isAndroidEmulator() {
      String var0 = Build.MODEL;
      Log.d(TAG, "model=" + var0);
      String var2 = Build.PRODUCT;
      Log.d(TAG, "product=" + var2);
      boolean var4 = false;
      if (var2 != null) {
         if (!var2.equals("sdk") && !var2.contains("_sdk") && !var2.contains("sdk_")) {
            var4 = false;
         } else {
            var4 = true;
         }
      }

      Log.d(TAG, "isEmulator=" + var4);
      return var4;
   }

   public void init() {
      LayoutParams var1 = new LayoutParams(-1, -1);
      FrameLayout var2 = new FrameLayout(this);
      var2.setLayoutParams(var1);
      LayoutParams var3 = new LayoutParams(-1, -2);
      Cocos2dxEditText var4 = new Cocos2dxEditText(this);
      var4.setLayoutParams(var3);
      var2.addView(var4);
      this.mGLSurfaceView = this.onCreateView();
      var2.addView(this.mGLSurfaceView);
      if (isAndroidEmulator()) {
         this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
      }

      this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
      this.mGLSurfaceView.setCocos2dxEditText(var4);
      this.setContentView(var2);
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      sContext = this;
      this.mHandler = new Cocos2dxHandler(this);
      this.init();
      Cocos2dxHelper.init(this, this);
   }

   public Cocos2dxGLSurfaceView onCreateView() {
      return new Cocos2dxGLSurfaceView(this);
   }

   protected void onPause() {
      super.onPause();
      Cocos2dxHelper.onPause();
      this.mGLSurfaceView.onPause();
   }

   protected void onResume() {
      super.onResume();
      Cocos2dxHelper.onResume();
      this.mGLSurfaceView.onResume();
   }

   public void runOnGLThread(Runnable var1) {
      this.mGLSurfaceView.queueEvent(var1);
   }

   public void showDialog(String var1, String var2) {
      Message var3 = new Message();
      var3.what = 1;
      var3.obj = new Cocos2dxHandler.DialogMessage(var1, var2);
      this.mHandler.sendMessage(var3);
   }

   public void showEditTextDialog(String var1, String var2, int var3, int var4, int var5, int var6) {
      Message var7 = new Message();
      var7.what = 2;
      var7.obj = new Cocos2dxHandler.EditBoxMessage(var1, var2, var3, var4, var5, var6);
      this.mHandler.sendMessage(var7);
   }

   public void showToastLong(String var1) {
      Message var2 = new Message();
      var2.what = 4;
      var2.obj = var1;
      this.mHandler.sendMessage(var2);
   }

   public void showToastShort(String var1) {
      Message var2 = new Message();
      var2.what = 3;
      var2.obj = var1;
      this.mHandler.sendMessage(var2);
   }
}
