package org.cocos2dx.lib.inputmanagercompat;

import android.content.Context;
import android.os.Handler;
import android.os.Build.VERSION;
import android.view.InputDevice;
import android.view.MotionEvent;

public interface InputManagerCompat {
   InputDevice getInputDevice(int var1);

   int[] getInputDeviceIds();

   void onGenericMotionEvent(MotionEvent var1);

   void onPause();

   void onResume();

   void registerInputDeviceListener(InputManagerCompat.InputDeviceListener var1, Handler var2);

   void unregisterInputDeviceListener(InputManagerCompat.InputDeviceListener var1);

   public static class Factory {
      public static InputManagerCompat getInputManager(Context var0) {
         return (InputManagerCompat)(VERSION.SDK_INT >= 16 ? new InputManagerV16(var0) : new InputManagerV9());
      }
   }

   public interface InputDeviceListener {
      void onInputDeviceAdded(int var1);

      void onInputDeviceChanged(int var1);

      void onInputDeviceRemoved(int var1);
   }
}
