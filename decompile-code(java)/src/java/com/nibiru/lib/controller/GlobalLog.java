package com.nibiru.lib.controller;

import android.util.Log;

public class GlobalLog {
   public static boolean DEBUG = false;
   public static String LOG_TAG = "NibiruControllerSDK";

   public static void d(String var0) {
      if (DEBUG) {
         Log.d(LOG_TAG, var0);
      }

   }

   public static void e(String var0) {
      if (DEBUG) {
         Log.e(LOG_TAG, var0);
      }

   }

   public static void i(String var0) {
      if (DEBUG) {
         Log.i(LOG_TAG, var0);
      }

   }

   public static void v(String var0) {
      if (DEBUG) {
         Log.v(LOG_TAG, var0);
      }

   }

   public static void w(String var0) {
      if (DEBUG) {
         Log.w(LOG_TAG, var0);
      }

   }
}
