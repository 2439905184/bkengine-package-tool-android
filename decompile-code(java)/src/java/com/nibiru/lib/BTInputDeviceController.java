package com.nibiru.lib;

import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.nibiru.lib.controller.AccEvent;
import com.nibiru.lib.controller.ControllerKeyEvent;
import com.nibiru.lib.controller.GlobalLog;
import com.nibiru.lib.controller.GyroEvent;
import com.nibiru.lib.controller.IBluexListener;
import com.nibiru.lib.controller.IBluexService;
import com.nibiru.lib.controller.StickEvent;
import java.util.ArrayList;
import java.util.List;

public class BTInputDeviceController implements BTDeviceCoreService {
   protected static final String TAG = "BTInputDeviceController";
   private OnBTDeviceStickListener A;
   private OnInfoReportReadyListener B;
   private OnReqAppCloseListener C;
   private int[] D;
   private boolean E = false;
   private boolean F = true;
   private float G = -128.0F;
   private float H = -128.0F;
   private long I = 0L;
   private boolean J = false;
   private boolean K = true;
   private boolean L = false;
   private String M = null;
   private List N = new ArrayList();
   private ServiceConnection O = new ServiceConnection() {
      public final void onServiceConnected(ComponentName var1, IBinder var2) {
         GlobalLog.e("service connected: " + BTInputDeviceController.this.M);
         BTInputDeviceController.this.q = IBluexService.Stub.asInterface(var2);

         try {
            BTInputDeviceController.this.q.registerListener(BTInputDeviceController.this.r);
         } catch (RemoteException var4) {
            var4.printStackTrace();
            return;
         }

         if (BTInputDeviceController.this.z != null) {
            BTInputDeviceController.this.z.onBTDeviceServiceConnected();
         }

      }

      public final void onServiceDisconnected(ComponentName var1) {
         GlobalLog.d("service disconnected");
         BTInputDeviceController.this.q = null;
         if (BTInputDeviceController.this.z != null) {
            BTInputDeviceController.this.z.onBTDeviceServiceDisconnected();
         }

         BTInputDeviceController.this.s.sendEmptyMessageDelayed(255, 3000L);
      }
   };
   private Context mContext;
   private IBluexService q;
   private IBluexListener r = new BTInputDeviceController.a();
   private final BluexHandler s = new BluexHandler(this);
   private OnBTDeviceStateListener t;
   private OnBTDeviceKeyListener u;
   private OnBTDeviceCombKeyListener v;
   private OnBTDeviceConfigureListener w;
   private OnBTServiceConnectionListener z;

   BTInputDeviceController() {
   }

   public void allocateDeviceId(String var1, int var2) throws Exception {
   }

   public boolean canSendTouchEvent(int var1) {
      return !this.N.contains(var1);
   }

   public void cancelStickSimMode() {
      this.s.getStickSim().stop();
   }

   public void configureBluexService(int var1, String var2) throws Exception {
      if (var1 >= 0) {
         if (this.q == null) {
            throw new Exception("no valid service");
         } else {
            this.q.configure(var1);
         }
      }
   }

   public void connectServiceAgain() {
      if (this.q == null) {
         this.registerBTDeviceService(this.mContext, this.z);
      }

   }

   public OnBTDeviceCombKeyListener getCombKeyListener() {
      return this.v;
   }

   public OnBTDeviceConfigureListener getConfigureListener() {
      return this.w;
   }

   public int[] getCurrentSpecKeyMap() {
      return this.D;
   }

   public OnBTDeviceKeyListener getKeyListener() {
      return this.u;
   }

   public KeyEvent getOriginalKey(KeyEvent var1) {
      if (this.D != null) {
         int var3;
         label22: {
            for(int var2 = 0; var2 < this.D.length; ++var2) {
               if (this.D[var2] == var1.getKeyCode()) {
                  var3 = var2;
                  break label22;
               }
            }

            var3 = 0;
         }

         if (var3 > 0) {
            return new KeyEvent(var1.getEventTime(), var1.getEventTime(), var1.getAction(), var3, var1.getRepeatCount(), var1.getMetaState(), var1.getDeviceId(), 0, 2);
         }
      }

      return var1;
   }

   public OnInfoReportReadyListener getReportListener() {
      return this.B;
   }

   public OnReqAppCloseListener getReqAppCloseListener() {
      return this.C;
   }

   public OnBTDeviceStateListener getStateListener() {
      return this.t;
   }

   public OnBTDeviceStickListener getStickListener() {
      return this.A;
   }

   public int getStickSimMode() {
      return this.s.getStickSim().getMode();
   }

   public KeyEvent getTranslateKey(KeyEvent var1) {
      if (this.D != null) {
         int var2 = this.D[var1.getKeyCode()];
         if (var2 > 0 && var2 != var1.getKeyCode()) {
            return new KeyEvent(var1.getEventTime(), var1.getEventTime(), var1.getAction(), var2, var1.getRepeatCount(), var1.getMetaState(), var1.getDeviceId(), 0, 2);
         }
      }

      return var1;
   }

   public boolean isEnable() {
      return this.K;
   }

   public boolean isHostControll() {
      return this.L;
   }

   public boolean isOnlyDirectMode() {
      return this.F;
   }

   public boolean isServiceConnected() {
      return this.q != null;
   }

   public boolean isStickSimModeContinuesKey() {
      return this.s.getStickSim().isContinueState();
   }

   public boolean isSupportTouch() {
      return this.J;
   }

   public void openBTDeviceSettingUI(Context var1, Bundle var2) throws Exception {
      if (var1 == null) {
         throw new NullPointerException("The context is null");
      } else {
         try {
            Intent var3 = new Intent("com.nibiru.view.devicelist");
            var3.putExtra("EXTRA_DATA", var2);
            var1.startActivity(var3);
         } catch (Exception var5) {
            throw new d();
         }
      }
   }

   public boolean registerBTDeviceService(Context var1, OnBTServiceConnectionListener var2) {
      if (var1 == null) {
         return false;
      } else {
         try {
            this.mContext = var1;
            this.setConnectListener(var2);
            this.M = BTUtil.getApplicationSessionInfo(this.mContext);
            boolean var4 = var1.bindService(new Intent("com.nibiru.service"), this.O, 1);
            return var4;
         } catch (Exception var5) {
            var5.printStackTrace();
            return false;
         }
      }
   }

   public void removeCombKeyListener() {
      this.v = null;
   }

   public void removeConfigureListener() {
      this.w = null;
   }

   public void removeConnectListener() {
      this.z = null;
   }

   public void removeKeyListener() {
      this.u = null;
   }

   public void removeReportListener() {
      this.B = null;
   }

   public void removeReqAppCloseListener() {
      this.C = null;
   }

   public void removeStateListener() {
      this.t = null;
   }

   public void removeStickListener() {
      this.A = null;
   }

   public void requestBTDeviceByPlayerOrder(int var1) throws Exception {
      if (var1 > 0) {
         if (this.q == null) {
            throw new Exception("no valid service");
         }

         BTDevice var2 = this.q.getDeviceByPlayerOrder(var1);
         if (this.t != null) {
            this.t.onReceiveBTDevice(var1, var2);
            return;
         }
      }

   }

   public void requestBTDeviceList() throws Exception {
      if (this.q == null) {
         throw new Exception("no valid service");
      } else {
         BTDevice[] var1 = this.q.getDeviceList();
         if (this.t != null) {
            this.t.onReceiveBTDeviceList(var1);
         }

      }
   }

   public void requestConnectDevice(BTDevice var1) throws Exception {
      if (var1 != null && var1.isValid()) {
         if (this.q == null) {
            throw new Exception("no valid service");
         } else {
            this.q.connectController(var1);
         }
      }
   }

   public void requestDisConnectDevice(BTDevice var1) throws Exception {
      GlobalLog.d("REQ DISCONN IN CLIENT");
      if (var1 != null && var1.isValid()) {
         this.q.disconnectController(var1);
      }
   }

   public void requestDriverList() throws Exception {
   }

   public void requestInfoReport(int var1) throws Exception {
      if (var1 >= 0) {
         if (this.q == null) {
            throw new Exception("no valid service");
         }

         this.q.requestErrorReport(var1);
      }

   }

   public void requestSetPlayerOrder(int var1, int var2) throws Exception {
      if (this.q == null) {
         throw new Exception("no valid service");
      } else {
         this.q.setPlayerOrder(var1, var2);
      }
   }

   public void sendTouchEvent() {
      if (!this.E && System.currentTimeMillis() - this.I > 3000L) {
         (new Thread(new BTInputDeviceController.b((byte)0))).start();
      }
   }

   public void setCombKeyIntervalTime(int var1) {
      long var2 = 50L;
      switch(var1) {
      case 0:
         var2 = 25L;
      case 1:
      default:
         break;
      case 2:
         var2 = 100L;
      }

      this.s.setCombKeyIntervalTime(var2);
   }

   public void setCombKeyListener(OnBTDeviceCombKeyListener var1) {
      this.s.resetCombKeyManager();
      this.v = var1;
   }

   public void setConfigureListener(OnBTDeviceConfigureListener var1) {
      this.w = var1;
   }

   public void setConnectListener(OnBTServiceConnectionListener var1) {
      this.z = var1;
      if (this.z != null && this.q != null) {
         this.z.onBTDeviceServiceConnected();
      }

   }

   public void setEnable(boolean var1) {
      this.K = var1;
   }

   public void setExcludeTouchKey(int[] var1) {
      if (var1 != null) {
         this.N.clear();
         int var2 = var1.length;

         for(int var3 = 0; var3 < var2; ++var3) {
            int var4 = var1[var3];
            this.N.add(var4);
         }
      }

   }

   public void setHostControll(boolean var1) {
      this.L = var1;
   }

   public void setKeyListener(OnBTDeviceKeyListener var1) {
      this.u = var1;
   }

   public void setReportListener(OnInfoReportReadyListener var1) {
      this.B = var1;
   }

   public void setReqAppCloseListener(OnReqAppCloseListener var1) {
      this.C = var1;
   }

   public void setSpecKeyMap(int[] var1) {
      this.D = var1;
   }

   public void setStateListener(OnBTDeviceStateListener var1) {
      this.t = var1;
   }

   public void setStickListener(OnBTDeviceStickListener var1) {
      this.A = var1;
   }

   public void setStickSimMode(int var1, int var2, boolean var3, int var4) {
      if (var1 != -1) {
         this.s.getStickSim().start();
      } else {
         this.s.getStickSim().stop();
      }

      this.s.getStickSim().setDirectionState(var2);
      this.s.getStickSim().setMode(var1);
      this.s.getStickSim().setIntervalTime(var4);
      this.s.getStickSim().setContinuesState(var3);
   }

   public void setStickSimMode(int var1, boolean var2) {
      this.setStickSimMode(var1, 0, var2, 500);
   }

   public void setTouchFocus(boolean var1) {
      this.J = var1;
   }

   public void setTouchFocusLocation(float var1, float var2) {
      this.G = var1;
      this.H = var2;
   }

   public boolean unregisterBTDeviceService() {
      if (this.mContext == null) {
         return false;
      } else {
         try {
            if (this.q != null) {
               this.q.unregisterListener(this.r);
            }

            this.mContext.unbindService(this.O);
            return true;
         } catch (Exception var5) {
            var5.printStackTrace();
         } finally {
            this.mContext = null;
            this.w = null;
            this.t = null;
            this.u = null;
            this.A = null;
            this.z = null;
            this.B = null;
            this.C = null;
            this.v = null;
            this.s.getStickSim().stop();
            this.q = null;
         }

         return false;
      }
   }

   final class a extends IBluexListener.a {
      public final int[] getCurrentCursorState() throws RemoteException {
         return null;
      }

      public final int getEnterKeyCode() throws RemoteException {
         return 0;
      }

      public final String getPackageName() throws RemoteException {
         return BTInputDeviceController.this.mContext == null ? "unknown" : BTInputDeviceController.this.mContext.getPackageName();
      }

      public final String getToken() throws RemoteException {
         return null;
      }

      public final boolean isCursorReady() throws RemoteException {
         return false;
      }

      public final boolean isCursorShow() throws RemoteException {
         return false;
      }

      public final int isEnable() throws RemoteException {
         return BTInputDeviceController.this.K ? 1 : -1;
      }

      public final boolean isEnableLR2() throws RemoteException {
         return false;
      }

      public final int isIME() throws RemoteException {
         return 0;
      }

      public final void onAccEvent(AccEvent[] var1) throws RemoteException {
      }

      public final void onBluetoothStateChange(int var1) throws RemoteException {
         if (this.isEnable() == 1 && BTInputDeviceController.this.t != null) {
            Message var2 = BTInputDeviceController.this.s.generateMessage(1030, (Object)null, var1, 0);
            BTInputDeviceController.this.s.sendMessage(var2);
         }

      }

      public final void onControllerStateChange(int var1, int var2, BTDevice var3) throws RemoteException {
         if (this.isEnable() == 1 && BTInputDeviceController.this.t != null) {
            Message var4 = BTInputDeviceController.this.s.generateMessage(1029, var3, var1, var2);
            BTInputDeviceController.this.s.sendMessage(var4);
         }

      }

      public final void onCursorSpeedChanged(int var1, int var2) throws RemoteException {
      }

      public final void onError(String var1) throws RemoteException {
         if (BTInputDeviceController.this.K && BTInputDeviceController.this.t != null) {
            Message var2 = BTInputDeviceController.this.s.generateMessage(1034, var1, 0, 0);
            BTInputDeviceController.this.s.sendMessage(var2);
         }

      }

      public final void onErrorReportReady(int var1, String var2) throws RemoteException {
         if (BTInputDeviceController.this.B != null) {
            Message var3 = BTInputDeviceController.this.s.generateMessage(0, var2, var1, 0);
            BTInputDeviceController.this.s.sendMessage(var3);
         }

      }

      public final void onExternalDeviceUpdate(BTDevice[] var1) throws RemoteException {
      }

      public final void onGyroEvent(GyroEvent[] var1) throws RemoteException {
      }

      public final void onInputViewResult(String var1, int var2) throws RemoteException {
      }

      public final void onKeyEvent(ControllerKeyEvent[] var1) throws RemoteException {
         if (BTInputDeviceController.this.K && BTInputDeviceController.this.u != null) {
            KeyEvent[] var2 = new KeyEvent[var1.length];

            for(int var3 = 0; var3 < var1.length; ++var3) {
               var2[var3] = var1[var3].getKeyEvent();
            }

            Message var4 = BTInputDeviceController.this.s.generateMessage(2057, var2, 0, 0);
            BTInputDeviceController.this.s.sendMessage(var4);
         }

      }

      public final void onKeyStateUpdate(int var1, int[] var2) throws RemoteException {
      }

      public final void onMotionSenseDataChanged(Bundle var1) throws RemoteException {
      }

      public final void onStickEvent(StickEvent[] var1) throws RemoteException {
         if (BTInputDeviceController.this.K && BTInputDeviceController.this.u != null) {
            MotionEvent[] var2 = new MotionEvent[var1.length];

            for(int var3 = 0; var3 < var1.length; ++var3) {
               var2[var3] = BTUtil.getMotionEvent(var1[var3]);
            }

            Message var4 = BTInputDeviceController.this.s.generateMessage(2057, var2, 0, 0);
            BTInputDeviceController.this.s.sendMessage(var4);
         }

      }

      public final void onVirtualServiceState(int var1) throws RemoteException {
      }

      public final void setCursorModeForce(boolean var1) throws RemoteException {
      }
   }

   final class b implements Runnable {
      private b() {
      }

      // $FF: synthetic method
      b(byte var2) {
         this();
      }

      public final void run() {
         if (!BTInputDeviceController.this.E) {
            try {
               BTInputDeviceController.this.E = true;
               Instrumentation var3 = new Instrumentation();
               long var4 = SystemClock.uptimeMillis();
               MotionEvent var6 = MotionEvent.obtain(var4, var4, 0, BTInputDeviceController.this.G, BTInputDeviceController.this.H, 0);
               long var7 = SystemClock.uptimeMillis();
               MotionEvent var9 = MotionEvent.obtain(var7, var7, 1, 1.0F + BTInputDeviceController.this.G, 1.0F + BTInputDeviceController.this.H, 0);
               var3.sendPointerSync(var6);
               var3.sendPointerSync(var9);
               GlobalLog.d("Touch RUN HERE");
               return;
            } catch (Exception var12) {
               var12.printStackTrace();
            } finally {
               BTInputDeviceController.this.E = false;
               BTInputDeviceController.this.I = System.currentTimeMillis();
            }

         }
      }
   }
}
