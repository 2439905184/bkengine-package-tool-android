package org.cocos2dx.lib.inputmanagercompat;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.MotionEvent;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;

public class InputManagerV9 implements InputManagerCompat {
   private static final long CHECK_ELAPSED_TIME = 3000L;
   private static final String LOG_TAG = "InputManagerV9";
   private static final int MESSAGE_TEST_FOR_DISCONNECT = 101;
   private static final int ON_DEVICE_ADDED = 0;
   private static final int ON_DEVICE_CHANGED = 1;
   private static final int ON_DEVICE_REMOVED = 2;
   private final Handler mDefaultHandler = new InputManagerV9.PollingMessageHandler(this);
   private final SparseArray mDevices = new SparseArray();
   private final Map mListeners = new HashMap();

   public InputManagerV9() {
      this.getInputDeviceIds();
   }

   private void notifyListeners(int var1, int var2) {
      if (!this.mListeners.isEmpty()) {
         Iterator var3 = this.mListeners.keySet().iterator();

         while(var3.hasNext()) {
            InputManagerCompat.InputDeviceListener var4 = (InputManagerCompat.InputDeviceListener)var3.next();
            ((Handler)this.mListeners.get(var4)).post(InputManagerV9.DeviceEvent.getDeviceEvent(var1, var2, var4));
         }
      }

   }

   public InputDevice getInputDevice(int var1) {
      return InputDevice.getDevice(var1);
   }

   public int[] getInputDeviceIds() {
      int[] var1 = InputDevice.getDeviceIds();
      long var2 = SystemClock.elapsedRealtime();
      int var4 = var1.length;

      for(int var5 = 0; var5 < var4; ++var5) {
         int var6 = var1[var5];
         if ((long[])this.mDevices.get(var6) == null) {
            this.mDevices.put(var6, new long[]{var2});
         }
      }

      return var1;
   }

   public void onGenericMotionEvent(MotionEvent var1) {
      int var2 = var1.getDeviceId();
      long[] var3 = (long[])this.mDevices.get(var2);
      if (var3 == null) {
         this.notifyListeners(0, var2);
         var3 = new long[1];
         this.mDevices.put(var2, var3);
      }

      var3[0] = SystemClock.elapsedRealtime();
   }

   public void onPause() {
      this.mDefaultHandler.removeMessages(101);
   }

   public void onResume() {
      this.mDefaultHandler.sendEmptyMessage(101);
   }

   public void registerInputDeviceListener(InputManagerCompat.InputDeviceListener var1, Handler var2) {
      this.mListeners.remove(var1);
      if (var2 == null) {
         var2 = this.mDefaultHandler;
      }

      this.mListeners.put(var1, var2);
   }

   public void unregisterInputDeviceListener(InputManagerCompat.InputDeviceListener var1) {
      this.mListeners.remove(var1);
   }

   private static class DeviceEvent implements Runnable {
      private static Queue sEventQueue = new ArrayDeque();
      private int mId;
      private InputManagerCompat.InputDeviceListener mListener;
      private int mMessageType;

      static InputManagerV9.DeviceEvent getDeviceEvent(int var0, int var1, InputManagerCompat.InputDeviceListener var2) {
         InputManagerV9.DeviceEvent var3 = (InputManagerV9.DeviceEvent)sEventQueue.poll();
         if (var3 == null) {
            var3 = new InputManagerV9.DeviceEvent();
         }

         var3.mMessageType = var0;
         var3.mId = var1;
         var3.mListener = var2;
         return var3;
      }

      public void run() {
         switch(this.mMessageType) {
         case 0:
            this.mListener.onInputDeviceAdded(this.mId);
            break;
         case 1:
            this.mListener.onInputDeviceChanged(this.mId);
            break;
         case 2:
            this.mListener.onInputDeviceRemoved(this.mId);
            break;
         default:
            Log.e("InputManagerV9", "Unknown Message Type");
         }

         sEventQueue.offer(this);
      }
   }

   private static class PollingMessageHandler extends Handler {
      private final WeakReference mInputManager;

      PollingMessageHandler(InputManagerV9 var1) {
         this.mInputManager = new WeakReference(var1);
      }

      public void handleMessage(Message var1) {
         super.handleMessage(var1);
         switch(var1.what) {
         case 101:
            InputManagerV9 var2 = (InputManagerV9)this.mInputManager.get();
            if (var2 != null) {
               long var3 = SystemClock.elapsedRealtime();
               int var5 = var2.mDevices.size();

               for(int var6 = 0; var6 < var5; ++var6) {
                  long[] var8 = (long[])var2.mDevices.valueAt(var6);
                  if (var8 != null && var3 - var8[0] > 3000L) {
                     int var9 = var2.mDevices.keyAt(var6);
                     if (InputDevice.getDevice(var9) == null) {
                        var2.notifyListeners(2, var9);
                        var2.mDevices.remove(var9);
                     } else {
                        var8[0] = var3;
                     }
                  }
               }

               this.sendEmptyMessageDelayed(101, 3000L);
               return;
            }
         default:
         }
      }
   }
}
