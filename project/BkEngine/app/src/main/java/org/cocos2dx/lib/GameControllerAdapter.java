package org.cocos2dx.lib;

import java.util.ArrayList;

public class GameControllerAdapter {
   private static ArrayList sRunnableFrameStartList = null;

   public static void addRunnableToFrameStartList(Runnable var0) {
      if (sRunnableFrameStartList == null) {
         sRunnableFrameStartList = new ArrayList();
      }

      sRunnableFrameStartList.add(var0);
   }

   private static native void nativeControllerAxisEvent(String var0, int var1, int var2, float var3, boolean var4);

   private static native void nativeControllerButtonEvent(String var0, int var1, int var2, boolean var3, float var4, boolean var5);

   private static native void nativeControllerConnected(String var0, int var1);

   private static native void nativeControllerDisconnected(String var0, int var1);

   public static void onAxisEvent(final String var0, final int var1, final int var2, final float var3, final boolean var4) {
      Cocos2dxHelper.runOnGLThread(new Runnable() {
         public void run() {
            GameControllerAdapter.nativeControllerAxisEvent(var0, var1, var2, var3, var4);
         }
      });
   }

   public static void onButtonEvent(final String var0, final int var1, final int var2, final boolean var3, final float var4, final boolean var5) {
      Cocos2dxHelper.runOnGLThread(new Runnable() {
         public void run() {
            GameControllerAdapter.nativeControllerButtonEvent(var0, var1, var2, var3, var4, var5);
         }
      });
   }

   public static void onConnected(final String var0, final int var1) {
      Cocos2dxHelper.runOnGLThread(new Runnable() {
         public void run() {
            GameControllerAdapter.nativeControllerConnected(var0, var1);
         }
      });
   }

   public static void onDisconnected(final String var0, final int var1) {
      Cocos2dxHelper.runOnGLThread(new Runnable() {
         public void run() {
            GameControllerAdapter.nativeControllerDisconnected(var0, var1);
         }
      });
   }

   public static void onDrawFrameStart() {
      if (sRunnableFrameStartList != null) {
         int var0 = sRunnableFrameStartList.size();

         for(int var1 = 0; var1 < var0; ++var1) {
            ((Runnable)sRunnableFrameStartList.get(var1)).run();
         }
      }

   }

   public static void removeRunnableFromFrameStartList(Runnable var0) {
      if (sRunnableFrameStartList != null) {
         sRunnableFrameStartList.remove(var0);
      }

   }
}
