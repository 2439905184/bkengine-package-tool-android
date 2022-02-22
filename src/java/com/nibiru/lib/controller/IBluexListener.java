package com.nibiru.lib.controller;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.nibiru.lib.BTDevice;

public interface IBluexListener extends IInterface {
   int[] getCurrentCursorState() throws RemoteException;

   int getEnterKeyCode() throws RemoteException;

   String getPackageName() throws RemoteException;

   String getToken() throws RemoteException;

   boolean isCursorReady() throws RemoteException;

   boolean isCursorShow() throws RemoteException;

   int isEnable() throws RemoteException;

   boolean isEnableLR2() throws RemoteException;

   int isIME() throws RemoteException;

   void onAccEvent(AccEvent[] var1) throws RemoteException;

   void onBluetoothStateChange(int var1) throws RemoteException;

   void onControllerStateChange(int var1, int var2, BTDevice var3) throws RemoteException;

   void onCursorSpeedChanged(int var1, int var2) throws RemoteException;

   void onError(String var1) throws RemoteException;

   void onErrorReportReady(int var1, String var2) throws RemoteException;

   void onExternalDeviceUpdate(BTDevice[] var1) throws RemoteException;

   void onGyroEvent(GyroEvent[] var1) throws RemoteException;

   void onInputViewResult(String var1, int var2) throws RemoteException;

   void onKeyEvent(ControllerKeyEvent[] var1) throws RemoteException;

   void onKeyStateUpdate(int var1, int[] var2) throws RemoteException;

   void onMotionSenseDataChanged(Bundle var1) throws RemoteException;

   void onStickEvent(StickEvent[] var1) throws RemoteException;

   void onVirtualServiceState(int var1) throws RemoteException;

   void setCursorModeForce(boolean var1) throws RemoteException;

   public abstract static class a extends Binder implements IBluexListener {
      public a() {
         this.attachInterface(this, "com.nibiru.lib.controller.IBluexListener");
      }

      public static IBluexListener a(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("com.nibiru.lib.controller.IBluexListener");
            return (IBluexListener)(var1 != null && var1 instanceof IBluexListener ? (IBluexListener)var1 : new IBluexListener.a.a(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onKeyEvent((ControllerKeyEvent[])var2.createTypedArray(ControllerKeyEvent.CREATOR));
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onStickEvent((StickEvent[])var2.createTypedArray(StickEvent.CREATOR));
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int var20 = var2.readInt();
            int var21 = var2.readInt();
            int var22 = var2.readInt();
            BTDevice var23 = null;
            if (var22 != 0) {
               var23 = (BTDevice)BTDevice.CREATOR.createFromParcel(var2);
            }

            this.onControllerStateChange(var20, var21, var23);
            var3.writeNoException();
            return true;
         case 4:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onBluetoothStateChange(var2.readInt());
            var3.writeNoException();
            return true;
         case 5:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onErrorReportReady(var2.readInt(), var2.readString());
            var3.writeNoException();
            return true;
         case 6:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onError(var2.readString());
            var3.writeNoException();
            return true;
         case 7:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int var19 = this.isEnable();
            var3.writeNoException();
            var3.writeInt(var19);
            return true;
         case 8:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int var18 = this.isIME();
            var3.writeNoException();
            var3.writeInt(var18);
            return true;
         case 9:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            String var17 = this.getPackageName();
            var3.writeNoException();
            var3.writeString(var17);
            return true;
         case 10:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onAccEvent((AccEvent[])var2.createTypedArray(AccEvent.CREATOR));
            var3.writeNoException();
            return true;
         case 11:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onGyroEvent((GyroEvent[])var2.createTypedArray(GyroEvent.CREATOR));
            var3.writeNoException();
            return true;
         case 12:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onKeyStateUpdate(var2.readInt(), var2.createIntArray());
            var3.writeNoException();
            return true;
         case 13:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onInputViewResult(var2.readString(), var2.readInt());
            var3.writeNoException();
            return true;
         case 14:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onVirtualServiceState(var2.readInt());
            var3.writeNoException();
            return true;
         case 15:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onExternalDeviceUpdate((BTDevice[])var2.createTypedArray(BTDevice.CREATOR));
            var3.writeNoException();
            return true;
         case 16:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            boolean var16;
            if (var2.readInt() != 0) {
               var16 = true;
            } else {
               var16 = false;
            }

            this.setCursorModeForce(var16);
            var3.writeNoException();
            return true;
         case 17:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            String var15 = this.getToken();
            var3.writeNoException();
            var3.writeString(var15);
            return true;
         case 18:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            boolean var13 = this.isCursorReady();
            var3.writeNoException();
            byte var14 = 0;
            if (var13) {
               var14 = 1;
            }

            var3.writeInt(var14);
            return true;
         case 19:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            boolean var11 = this.isEnableLR2();
            var3.writeNoException();
            byte var12 = 0;
            if (var11) {
               var12 = 1;
            }

            var3.writeInt(var12);
            return true;
         case 20:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            this.onCursorSpeedChanged(var2.readInt(), var2.readInt());
            var3.writeNoException();
            return true;
         case 21:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int[] var10 = this.getCurrentCursorState();
            var3.writeNoException();
            var3.writeIntArray(var10);
            return true;
         case 22:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            boolean var8 = this.isCursorShow();
            var3.writeNoException();
            byte var9 = 0;
            if (var8) {
               var9 = 1;
            }

            var3.writeInt(var9);
            return true;
         case 23:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int var7 = this.getEnterKeyCode();
            var3.writeNoException();
            var3.writeInt(var7);
            return true;
         case 24:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexListener");
            int var5 = var2.readInt();
            Bundle var6 = null;
            if (var5 != 0) {
               var6 = (Bundle)Bundle.CREATOR.createFromParcel(var2);
            }

            this.onMotionSenseDataChanged(var6);
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("com.nibiru.lib.controller.IBluexListener");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      static final class a implements IBluexListener {
         private IBinder dH;

         a(IBinder var1) {
            this.dH = var1;
         }

         public final IBinder asBinder() {
            return this.dH;
         }

         public final int[] getCurrentCursorState() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int[] var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(21, var1, var2, 0);
               var2.readException();
               var5 = var2.createIntArray();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final int getEnterKeyCode() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(23, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final String getPackageName() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            String var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(9, var1, var2, 0);
               var2.readException();
               var5 = var2.readString();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final String getToken() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            String var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(17, var1, var2, 0);
               var2.readException();
               var5 = var2.readString();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final boolean isCursorReady() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(18, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
               var8 = false;
            } finally {
               if (var8) {
                  var2.recycle();
                  var1.recycle();
               }
            }

            boolean var6 = false;
            if (var5 != 0) {
               var6 = true;
            }

            var2.recycle();
            var1.recycle();
            return var6;
         }

         public final boolean isCursorShow() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(22, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
               var8 = false;
            } finally {
               if (var8) {
                  var2.recycle();
                  var1.recycle();
               }
            }

            boolean var6 = false;
            if (var5 != 0) {
               var6 = true;
            }

            var2.recycle();
            var1.recycle();
            return var6;
         }

         public final int isEnable() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(7, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final boolean isEnableLR2() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(19, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
               var8 = false;
            } finally {
               if (var8) {
                  var2.recycle();
                  var1.recycle();
               }
            }

            boolean var6 = false;
            if (var5 != 0) {
               var6 = true;
            }

            var2.recycle();
            var1.recycle();
            return var6;
         }

         public final int isIME() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               this.dH.transact(8, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final void onAccEvent(AccEvent[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeTypedArray(var1, 0);
               this.dH.transact(10, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onBluetoothStateChange(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeInt(var1);
               this.dH.transact(4, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onControllerStateChange(int var1, int var2, BTDevice var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
                     var4.writeInt(var1);
                     var4.writeInt(var2);
                  } catch (Throwable var26) {
                     var10000 = var26;
                     var10001 = false;
                     break label170;
                  }

                  if (var3 != null) {
                     try {
                        var4.writeInt(1);
                        var3.writeToParcel(var4, 0);
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label170;
                     }
                  } else {
                     try {
                        var4.writeInt(0);
                     } catch (Throwable var24) {
                        var10000 = var24;
                        var10001 = false;
                        break label170;
                     }
                  }

                  label156:
                  try {
                     this.dH.transact(3, var4, var5, 0);
                     var5.readException();
                     break label166;
                  } catch (Throwable var23) {
                     var10000 = var23;
                     var10001 = false;
                     break label156;
                  }
               }

               Throwable var6 = var10000;
               var5.recycle();
               var4.recycle();
               throw var6;
            }

            var5.recycle();
            var4.recycle();
         }

         public final void onCursorSpeedChanged(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.dH.transact(20, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void onError(String var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeString(var1);
               this.dH.transact(6, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onErrorReportReady(int var1, String var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var3.writeInt(var1);
               var3.writeString(var2);
               this.dH.transact(5, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void onExternalDeviceUpdate(BTDevice[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeTypedArray(var1, 0);
               this.dH.transact(15, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onGyroEvent(GyroEvent[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeTypedArray(var1, 0);
               this.dH.transact(11, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onInputViewResult(String var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var3.writeString(var1);
               var3.writeInt(var2);
               this.dH.transact(13, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void onKeyEvent(ControllerKeyEvent[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeTypedArray(var1, 0);
               this.dH.transact(1, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onKeyStateUpdate(int var1, int[] var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var3.writeInt(var1);
               var3.writeIntArray(var2);
               this.dH.transact(12, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void onMotionSenseDataChanged(Bundle var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
                  } catch (Throwable var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label170;
                  }

                  if (var1 != null) {
                     try {
                        var2.writeInt(1);
                        var1.writeToParcel(var2, 0);
                     } catch (Throwable var23) {
                        var10000 = var23;
                        var10001 = false;
                        break label170;
                     }
                  } else {
                     try {
                        var2.writeInt(0);
                     } catch (Throwable var22) {
                        var10000 = var22;
                        var10001 = false;
                        break label170;
                     }
                  }

                  label156:
                  try {
                     this.dH.transact(24, var2, var3, 0);
                     var3.readException();
                     break label166;
                  } catch (Throwable var21) {
                     var10000 = var21;
                     var10001 = false;
                     break label156;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               var2.recycle();
               throw var4;
            }

            var3.recycle();
            var2.recycle();
         }

         public final void onStickEvent(StickEvent[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeTypedArray(var1, 0);
               this.dH.transact(2, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void onVirtualServiceState(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
               var2.writeInt(var1);
               this.dH.transact(14, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void setCursorModeForce(boolean var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label80: {
               Throwable var10000;
               label85: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexListener");
                  } catch (Throwable var11) {
                     var10000 = var11;
                     var10001 = false;
                     break label85;
                  }

                  byte var5 = 0;
                  if (var1) {
                     var5 = 1;
                  }

                  label75:
                  try {
                     var2.writeInt(var5);
                     this.dH.transact(16, var2, var3, 0);
                     var3.readException();
                     break label80;
                  } catch (Throwable var10) {
                     var10000 = var10;
                     var10001 = false;
                     break label75;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               var2.recycle();
               throw var4;
            }

            var3.recycle();
            var2.recycle();
         }
      }
   }
}
