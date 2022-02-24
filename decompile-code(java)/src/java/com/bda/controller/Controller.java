package com.bda.controller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;

public final class Controller {
   public static final int ACTION_CONNECTED = 1;
   public static final int ACTION_CONNECTING = 2;
   public static final int ACTION_DISCONNECTED = 0;
   public static final int ACTION_DOWN = 0;
   public static final int ACTION_FALSE = 0;
   public static final int ACTION_TRUE = 1;
   public static final int ACTION_UP = 1;
   public static final int ACTION_VERSION_MOGA = 0;
   public static final int ACTION_VERSION_MOGAPRO = 1;
   public static final int AXIS_LTRIGGER = 17;
   public static final int AXIS_RTRIGGER = 18;
   public static final int AXIS_RZ = 14;
   public static final int AXIS_X = 0;
   public static final int AXIS_Y = 1;
   public static final int AXIS_Z = 11;
   static final int CONTROLLER_ID = 1;
   public static final int INFO_ACTIVE_DEVICE_COUNT = 2;
   public static final int INFO_KNOWN_DEVICE_COUNT = 1;
   public static final int INFO_UNKNOWN = 0;
   public static final int KEYCODE_BUTTON_A = 96;
   public static final int KEYCODE_BUTTON_B = 97;
   public static final int KEYCODE_BUTTON_L1 = 102;
   public static final int KEYCODE_BUTTON_L2 = 104;
   public static final int KEYCODE_BUTTON_R1 = 103;
   public static final int KEYCODE_BUTTON_R2 = 105;
   public static final int KEYCODE_BUTTON_SELECT = 109;
   public static final int KEYCODE_BUTTON_START = 108;
   public static final int KEYCODE_BUTTON_THUMBL = 106;
   public static final int KEYCODE_BUTTON_THUMBR = 107;
   public static final int KEYCODE_BUTTON_X = 99;
   public static final int KEYCODE_BUTTON_Y = 100;
   public static final int KEYCODE_DPAD_DOWN = 20;
   public static final int KEYCODE_DPAD_LEFT = 21;
   public static final int KEYCODE_DPAD_RIGHT = 22;
   public static final int KEYCODE_DPAD_UP = 19;
   public static final int KEYCODE_UNKNOWN = 0;
   static final int LEGACY_KEYCODE_BUTTON_X = 98;
   static final int LEGACY_KEYCODE_BUTTON_Y = 99;
   public static final int STATE_CONNECTION = 1;
   public static final int STATE_CURRENT_PRODUCT_VERSION = 4;
   public static final int STATE_POWER_LOW = 2;
   @Deprecated
   public static final int STATE_SELECTED_VERSION = 4;
   public static final int STATE_SUPPORTED_PRODUCT_VERSION = 3;
   @Deprecated
   public static final int STATE_SUPPORTED_VERSION = 3;
   public static final int STATE_UNKNOWN;
   int mActivityEvent = 6;
   final Context mContext;
   Handler mHandler = null;
   boolean mIsBound = false;
   ControllerListener mListener = null;
   final IControllerListener.Stub mListenerStub = new Controller.IControllerListenerStub();
   ControllerMonitor mMonitor = null;
   final IControllerMonitor.Stub mMonitorStub = new Controller.IControllerMonitorStub();
   IControllerService mService = null;
   final Controller.ServiceConnection mServiceConnection = new Controller.ServiceConnection();

   Controller(Context var1) {
      this.mContext = var1;
   }

   public static final Controller getInstance(Context var0) {
      return new Controller(var0);
   }

   public void allowNewConnections() {
      if (this.mService != null) {
         try {
            this.mService.allowNewConnections();
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   public void disallowNewConnections() {
      if (this.mService != null) {
         try {
            this.mService.disallowNewConnections();
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   public final void exit() {
      this.setListener((ControllerListener)null, (Handler)null);
      this.setMonitor((ControllerMonitor)null);
      if (this.mIsBound) {
         this.mContext.unbindService(this.mServiceConnection);
         this.mIsBound = false;
      }

   }

   public final float getAxisValue(int var1) {
      if (this.mService != null) {
         try {
            float var3 = this.mService.getAxisValue(1, var1);
            return var3;
         } catch (RemoteException var4) {
         }
      }

      return 0.0F;
   }

   public final int getInfo(int var1) {
      if (this.mService != null) {
         try {
            int var3 = this.mService.getInfo(var1);
            return var3;
         } catch (RemoteException var4) {
         }
      }

      return 0;
   }

   public final int getKeyCode(int var1) {
      int var2 = 1;
      if (this.mService != null) {
         int var6;
         try {
            var6 = this.mService.getKeyCode2(1, var1);
         } catch (RemoteException var8) {
            switch(var1) {
            case 99:
               var1 = 98;
               break;
            case 100:
               var1 = 99;
            }

            try {
               int var5 = this.mService.getKeyCode(1, var1);
               return var5;
            } catch (RemoteException var7) {
               return var2;
            }
         }

         var2 = var6;
      }

      return var2;
   }

   public final int getState(int var1) {
      if (this.mService != null) {
         try {
            int var3 = this.mService.getState(1, var1);
            return var3;
         } catch (RemoteException var4) {
         }
      }

      return 0;
   }

   public final boolean init() {
      if (!this.mIsBound) {
         Intent var1 = new Intent(IControllerService.class.getName());
         this.mContext.startService(var1);
         this.mContext.bindService(var1, this.mServiceConnection, 1);
         this.mIsBound = true;
      }

      return this.mIsBound;
   }

   public void isAllowingNewConnections() {
      if (this.mService != null) {
         try {
            this.mService.isAllowingNewConnections();
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   public final void onPause() {
      this.mActivityEvent = 6;
      this.sendMessage(1, this.mActivityEvent);
      this.registerListener();
   }

   public final void onResume() {
      this.mActivityEvent = 5;
      this.sendMessage(1, this.mActivityEvent);
      this.registerListener();
   }

   void registerListener() {
      if (this.mListener != null && this.mService != null) {
         try {
            this.mService.registerListener2(this.mListenerStub, this.mActivityEvent);
         } catch (RemoteException var4) {
            try {
               this.mService.registerListener(this.mListenerStub, this.mActivityEvent);
               return;
            } catch (RemoteException var3) {
               return;
            }
         }
      }

   }

   void registerMonitor() {
      if (this.mMonitor != null && this.mService != null) {
         try {
            this.mService.registerMonitor(this.mMonitorStub, this.mActivityEvent);
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   void sendMessage(int var1, int var2) {
      if (this.mService != null) {
         try {
            this.mService.sendMessage(var1, var2);
         } catch (RemoteException var4) {
            return;
         }
      }

   }

   public final void setListener(ControllerListener var1, Handler var2) {
      this.unregisterListener();
      this.mListener = var1;
      this.mHandler = var2;
      this.registerListener();
   }

   public final void setMonitor(ControllerMonitor var1) {
      this.unregisterMonitor();
      this.mMonitor = var1;
      this.registerMonitor();
   }

   void unregisterListener() {
      if (this.mService != null) {
         try {
            this.mService.unregisterListener(this.mListenerStub, this.mActivityEvent);
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   void unregisterMonitor() {
      if (this.mService != null) {
         try {
            this.mService.unregisterMonitor(this.mMonitorStub, this.mActivityEvent);
         } catch (RemoteException var2) {
            return;
         }
      }

   }

   class IControllerListenerStub extends IControllerListener.Stub {
      public void onKeyEvent(KeyEvent var1) throws RemoteException {
         if (var1.getControllerId() == 1 && Controller.this.mListener != null) {
            Controller.KeyRunnable var2 = Controller.this.new KeyRunnable(var1);
            if (Controller.this.mHandler == null) {
               var2.run();
               return;
            }

            Controller.this.mHandler.post(var2);
         }

      }

      public void onMotionEvent(MotionEvent var1) throws RemoteException {
         if (var1.getControllerId() == 1 && Controller.this.mListener != null) {
            Controller.MotionRunnable var2 = Controller.this.new MotionRunnable(var1);
            if (Controller.this.mHandler == null) {
               var2.run();
               return;
            }

            Controller.this.mHandler.post(var2);
         }

      }

      public void onStateEvent(StateEvent var1) throws RemoteException {
         if (var1.getControllerId() == 1 && Controller.this.mListener != null) {
            Controller.StateRunnable var2 = Controller.this.new StateRunnable(var1);
            if (Controller.this.mHandler == null) {
               var2.run();
               return;
            }

            Controller.this.mHandler.post(var2);
         }

      }
   }

   class IControllerMonitorStub extends IControllerMonitor.Stub {
      public void onLog(int var1, int var2, String var3) throws RemoteException {
         if (Controller.this.mMonitor != null) {
            Controller.this.mMonitor.onLog(var1, var2, var3);
         }

      }
   }

   class KeyRunnable implements Runnable {
      final KeyEvent mEvent;

      public KeyRunnable(KeyEvent var2) {
         this.mEvent = var2;
      }

      public void run() {
         if (Controller.this.mListener != null) {
            Controller.this.mListener.onKeyEvent(this.mEvent);
         }

      }
   }

   class MotionRunnable implements Runnable {
      final MotionEvent mEvent;

      public MotionRunnable(MotionEvent var2) {
         this.mEvent = var2;
      }

      public void run() {
         if (Controller.this.mListener != null) {
            Controller.this.mListener.onMotionEvent(this.mEvent);
         }

      }
   }

   class ServiceConnection implements android.content.ServiceConnection {
      public final void onServiceConnected(ComponentName var1, IBinder var2) {
         Controller.this.mService = IControllerService.Stub.asInterface(var2);
         Controller.this.registerListener();
         Controller.this.registerMonitor();
         if (Controller.this.mActivityEvent == 5) {
            Controller.this.sendMessage(1, 5);
            Controller.this.sendMessage(1, 7);
         }

      }

      public final void onServiceDisconnected(ComponentName var1) {
         Controller.this.mService = null;
      }
   }

   class StateRunnable implements Runnable {
      final StateEvent mEvent;

      public StateRunnable(StateEvent var2) {
         this.mEvent = var2;
      }

      public void run() {
         if (Controller.this.mListener != null) {
            Controller.this.mListener.onStateEvent(this.mEvent);
         }

      }
   }
}
