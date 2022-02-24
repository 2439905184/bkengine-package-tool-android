package org.cocos2dx.lib.inputmanagercompat;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.view.InputDevice;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;

@TargetApi(16)
public class InputManagerV16 implements InputManagerCompat {
   private final InputManager mInputManager;
   private final Map mListeners;

   public InputManagerV16(Context var1) {
      this.mInputManager = (InputManager)var1.getSystemService("input");
      this.mListeners = new HashMap();
   }

   public InputDevice getInputDevice(int var1) {
      return this.mInputManager.getInputDevice(var1);
   }

   public int[] getInputDeviceIds() {
      return this.mInputManager.getInputDeviceIds();
   }

   public void onGenericMotionEvent(MotionEvent var1) {
   }

   public void onPause() {
   }

   public void onResume() {
   }

   public void registerInputDeviceListener(InputManagerCompat.InputDeviceListener var1, Handler var2) {
      InputManagerV16.V16InputDeviceListener var3 = new InputManagerV16.V16InputDeviceListener(var1);
      this.mInputManager.registerInputDeviceListener(var3, var2);
      this.mListeners.put(var1, var3);
   }

   public void unregisterInputDeviceListener(InputManagerCompat.InputDeviceListener var1) {
      InputManagerV16.V16InputDeviceListener var2 = (InputManagerV16.V16InputDeviceListener)this.mListeners.remove(var1);
      if (var2 != null) {
         this.mInputManager.unregisterInputDeviceListener(var2);
      }

   }

   static class V16InputDeviceListener implements android.hardware.input.InputManager.InputDeviceListener {
      final InputManagerCompat.InputDeviceListener mIDL;

      public V16InputDeviceListener(InputManagerCompat.InputDeviceListener var1) {
         this.mIDL = var1;
      }

      public void onInputDeviceAdded(int var1) {
         this.mIDL.onInputDeviceAdded(var1);
      }

      public void onInputDeviceChanged(int var1) {
         this.mIDL.onInputDeviceChanged(var1);
      }

      public void onInputDeviceRemoved(int var1) {
         this.mIDL.onInputDeviceRemoved(var1);
      }
   }
}
