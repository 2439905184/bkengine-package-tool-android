package org.cocos2dx.lib;

import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;

public interface GameControllerDelegate {
   int BUTTON_A = 436;
   int BUTTON_B = 437;
   int BUTTON_C = 438;
   int BUTTON_DPAD_CENTER = 446;
   int BUTTON_DPAD_DOWN = 443;
   int BUTTON_DPAD_LEFT = 444;
   int BUTTON_DPAD_RIGHT = 445;
   int BUTTON_DPAD_UP = 442;
   int BUTTON_LEFT_SHOULDER = 447;
   int BUTTON_LEFT_THUMBSTICK = 451;
   int BUTTON_LEFT_TRIGGER = 449;
   int BUTTON_RIGHT_SHOULDER = 448;
   int BUTTON_RIGHT_THUMBSTICK = 452;
   int BUTTON_RIGHT_TRIGGER = 450;
   int BUTTON_SELECT = 454;
   int BUTTON_START = 453;
   int BUTTON_X = 439;
   int BUTTON_Y = 440;
   int BUTTON_Z = 441;
   int KEY_BASE = 432;
   int THUMBSTICK_LEFT_X = 432;
   int THUMBSTICK_LEFT_Y = 433;
   int THUMBSTICK_RIGHT_X = 434;
   int THUMBSTICK_RIGHT_Y = 435;

   boolean dispatchGenericMotionEvent(MotionEvent var1);

   boolean dispatchKeyEvent(KeyEvent var1);

   void onCreate(Context var1);

   void onDestroy();

   void onPause();

   void onResume();

   void setControllerEventListener(GameControllerDelegate.ControllerEventListener var1);

   public interface ControllerEventListener {
      void onAxisEvent(String var1, int var2, int var3, float var4, boolean var5);

      void onButtonEvent(String var1, int var2, int var3, boolean var4, float var5, boolean var6);

      void onConnected(String var1, int var2);

      void onDisconnected(String var1, int var2);
   }
}
