package com.nibiru.lib.controller;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.nibiru.lib.BTDevice;

public interface IBluexService extends IInterface {
   void configure(int var1) throws RemoteException;

   boolean connectController(BTDevice var1) throws RemoteException;

   void connectVirutalService(String var1, int var2) throws RemoteException;

   void controllMotor(int var1, int var2, int var3) throws RemoteException;

   boolean controllMotor2(int var1, int var2, int var3, long var4) throws RemoteException;

   void deleteDevice(String var1) throws RemoteException;

   boolean disconnectController(BTDevice var1) throws RemoteException;

   void disconnectVirtualService(int var1) throws RemoteException;

   boolean enableGlobalControll(boolean var1, String var2) throws RemoteException;

   AccEvent getAccEvent(int var1) throws RemoteException;

   int getClassVersion() throws RemoteException;

   BTDevice getDeviceByPlayerOrder(int var1) throws RemoteException;

   int[] getDeviceKeyMap(int var1) throws RemoteException;

   BTDevice[] getDeviceList() throws RemoteException;

   GyroEvent getGyroEvent(int var1) throws RemoteException;

   int getKeyState(int var1, int var2) throws RemoteException;

   int getKeyState2(int var1) throws RemoteException;

   int[] getKeyStateMap(int var1) throws RemoteException;

   int getMouseSpeed() throws RemoteException;

   ControllerServiceState getServiceState() throws RemoteException;

   String getServiceToken() throws RemoteException;

   int getServiceVersion() throws RemoteException;

   float getStickState(int var1, int var2) throws RemoteException;

   StickEvent getStickState2(int var1) throws RemoteException;

   boolean handleExternalInput(NibiruInputEvent var1, String var2, int var3, int var4) throws RemoteException;

   void hideInputView() throws RemoteException;

   boolean isInputViewShow() throws RemoteException;

   boolean isSupportInput() throws RemoteException;

   int openDeviceManagerUI(Bundle var1) throws RemoteException;

   void registerListener(IBluexListener var1) throws RemoteException;

   void requestErrorReport(int var1) throws RemoteException;

   void resetCurrentApp() throws RemoteException;

   boolean sendInputEvent(NibiruInputEvent var1) throws RemoteException;

   boolean sendVirtualData(byte[] var1) throws RemoteException;

   void setCursorState(String var1, boolean var2, int var3) throws RemoteException;

   void setMouseSpeed(int var1) throws RemoteException;

   void setNibiruIMEShow(boolean var1) throws RemoteException;

   void setNibiruPlayer(boolean var1) throws RemoteException;

   void setPlayerOrder(int var1, int var2) throws RemoteException;

   void setSystemCursorMode(boolean var1) throws RemoteException;

   boolean startInputView(String var1, String var2, int var3, int var4) throws RemoteException;

   void startVirtualService(int var1) throws RemoteException;

   void stopVietualService(int var1) throws RemoteException;

   void switchMod(int var1, int var2) throws RemoteException;

   void unregisterListener(IBluexListener var1) throws RemoteException;

   void updateDeviceInfo(BTDevice var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IBluexService {
      public Stub() {
         this.attachInterface(this, "com.nibiru.lib.controller.IBluexService");
      }

      public static IBluexService asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("com.nibiru.lib.controller.IBluexService");
            return (IBluexService)(var1 != null && var1 instanceof IBluexService ? (IBluexService)var1 : new IBluexService.Stub.a(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.registerListener(IBluexListener.a.a(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.unregisterListener(IBluexListener.a.a(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var59 = var2.readInt();
            BTDevice var60 = null;
            if (var59 != 0) {
               var60 = (BTDevice)BTDevice.CREATOR.createFromParcel(var2);
            }

            boolean var61 = this.connectController(var60);
            var3.writeNoException();
            byte var62;
            if (var61) {
               var62 = 1;
            } else {
               var62 = 0;
            }

            var3.writeInt(var62);
            return true;
         case 4:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var55 = var2.readInt();
            BTDevice var56 = null;
            if (var55 != 0) {
               var56 = (BTDevice)BTDevice.CREATOR.createFromParcel(var2);
            }

            boolean var57 = this.disconnectController(var56);
            var3.writeNoException();
            byte var58 = 0;
            if (var57) {
               var58 = 1;
            }

            var3.writeInt(var58);
            return true;
         case 5:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            BTDevice[] var54 = this.getDeviceList();
            var3.writeNoException();
            var3.writeTypedArray(var54, 1);
            return true;
         case 6:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            BTDevice var53 = this.getDeviceByPlayerOrder(var2.readInt());
            var3.writeNoException();
            if (var53 != null) {
               var3.writeInt(1);
               var53.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 7:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.requestErrorReport(var2.readInt());
            var3.writeNoException();
            return true;
         case 8:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.setPlayerOrder(var2.readInt(), var2.readInt());
            var3.writeNoException();
            return true;
         case 9:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.resetCurrentApp();
            var3.writeNoException();
            return true;
         case 10:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.configure(var2.readInt());
            var3.writeNoException();
            return true;
         case 11:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int[] var52 = this.getDeviceKeyMap(var2.readInt());
            var3.writeNoException();
            var3.writeIntArray(var52);
            return true;
         case 12:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var50 = var2.readInt();
            BTDevice var51 = null;
            if (var50 != 0) {
               var51 = (BTDevice)BTDevice.CREATOR.createFromParcel(var2);
            }

            this.updateDeviceInfo(var51);
            var3.writeNoException();
            return true;
         case 13:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.deleteDevice(var2.readString());
            var3.writeNoException();
            return true;
         case 14:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            ControllerServiceState var49 = this.getServiceState();
            var3.writeNoException();
            if (var49 != null) {
               var3.writeInt(1);
               var49.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 15:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var47 = var2.readInt();
            boolean var48 = false;
            if (var47 != 0) {
               var48 = true;
            }

            this.setNibiruPlayer(var48);
            var3.writeNoException();
            return true;
         case 16:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.controllMotor(var2.readInt(), var2.readInt(), var2.readInt());
            var3.writeNoException();
            return true;
         case 17:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var45 = var2.readInt();
            boolean var46 = false;
            if (var45 != 0) {
               var46 = true;
            }

            this.setSystemCursorMode(var46);
            var3.writeNoException();
            return true;
         case 18:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int[] var44 = this.getKeyStateMap(var2.readInt());
            var3.writeNoException();
            var3.writeIntArray(var44);
            return true;
         case 19:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var43 = this.getKeyState(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeInt(var43);
            return true;
         case 20:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            float var42 = this.getStickState(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeFloat(var42);
            return true;
         case 21:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            StickEvent var41 = this.getStickState2(var2.readInt());
            var3.writeNoException();
            if (var41 != null) {
               var3.writeInt(1);
               var41.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 22:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var40 = this.getServiceVersion();
            var3.writeNoException();
            var3.writeInt(var40);
            return true;
         case 23:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var36 = var2.readInt();
            NibiruInputEvent var37 = null;
            if (var36 != 0) {
               var37 = (NibiruInputEvent)NibiruInputEvent.CREATOR.createFromParcel(var2);
            }

            boolean var38 = this.sendInputEvent(var37);
            var3.writeNoException();
            byte var39 = 0;
            if (var38) {
               var39 = 1;
            }

            var3.writeInt(var39);
            return true;
         case 24:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var33;
            if (var2.readInt() != 0) {
               var33 = true;
            } else {
               var33 = false;
            }

            boolean var34 = this.enableGlobalControll(var33, var2.readString());
            var3.writeNoException();
            byte var35 = 0;
            if (var34) {
               var35 = 1;
            }

            var3.writeInt(var35);
            return true;
         case 25:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.switchMod(var2.readInt(), var2.readInt());
            var3.writeNoException();
            return true;
         case 26:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var31 = this.startInputView(var2.readString(), var2.readString(), var2.readInt(), var2.readInt());
            var3.writeNoException();
            byte var32 = 0;
            if (var31) {
               var32 = 1;
            }

            var3.writeInt(var32);
            return true;
         case 27:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.hideInputView();
            var3.writeNoException();
            return true;
         case 28:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var30 = this.getKeyState2(var2.readInt());
            var3.writeNoException();
            var3.writeInt(var30);
            return true;
         case 29:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            GyroEvent var29 = this.getGyroEvent(var2.readInt());
            var3.writeNoException();
            if (var29 != null) {
               var3.writeInt(1);
               var29.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 30:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            AccEvent var28 = this.getAccEvent(var2.readInt());
            var3.writeNoException();
            if (var28 != null) {
               var3.writeInt(1);
               var28.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 31:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.setMouseSpeed(var2.readInt());
            var3.writeNoException();
            return true;
         case 32:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var27 = this.getMouseSpeed();
            var3.writeNoException();
            var3.writeInt(var27);
            return true;
         case 33:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var25 = this.isSupportInput();
            var3.writeNoException();
            byte var26 = 0;
            if (var25) {
               var26 = 1;
            }

            var3.writeInt(var26);
            return true;
         case 34:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var24 = this.getClassVersion();
            var3.writeNoException();
            var3.writeInt(var24);
            return true;
         case 35:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var22 = this.sendVirtualData(var2.createByteArray());
            var3.writeNoException();
            byte var23 = 0;
            if (var22) {
               var23 = 1;
            }

            var3.writeInt(var23);
            return true;
         case 36:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.startVirtualService(var2.readInt());
            var3.writeNoException();
            return true;
         case 37:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.stopVietualService(var2.readInt());
            var3.writeNoException();
            return true;
         case 38:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.connectVirutalService(var2.readString(), var2.readInt());
            var3.writeNoException();
            return true;
         case 39:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            this.disconnectVirtualService(var2.readInt());
            var3.writeNoException();
            return true;
         case 40:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var20 = this.isInputViewShow();
            var3.writeNoException();
            byte var21 = 0;
            if (var20) {
               var21 = 1;
            }

            var3.writeInt(var21);
            return true;
         case 41:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            String var19 = this.getServiceToken();
            var3.writeNoException();
            var3.writeString(var19);
            return true;
         case 42:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var16 = var2.readInt();
            Bundle var17 = null;
            if (var16 != 0) {
               var17 = (Bundle)Bundle.CREATOR.createFromParcel(var2);
            }

            int var18 = this.openDeviceManagerUI(var17);
            var3.writeNoException();
            var3.writeInt(var18);
            return true;
         case 43:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var12 = var2.readInt();
            NibiruInputEvent var13 = null;
            if (var12 != 0) {
               var13 = (NibiruInputEvent)NibiruInputEvent.CREATOR.createFromParcel(var2);
            }

            boolean var14 = this.handleExternalInput(var13, var2.readString(), var2.readInt(), var2.readInt());
            var3.writeNoException();
            byte var15 = 0;
            if (var14) {
               var15 = 1;
            }

            var3.writeInt(var15);
            return true;
         case 44:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            String var9 = var2.readString();
            int var10 = var2.readInt();
            boolean var11 = false;
            if (var10 != 0) {
               var11 = true;
            }

            this.setCursorState(var9, var11, var2.readInt());
            var3.writeNoException();
            return true;
         case 45:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            boolean var7 = this.controllMotor2(var2.readInt(), var2.readInt(), var2.readInt(), var2.readLong());
            var3.writeNoException();
            byte var8 = 0;
            if (var7) {
               var8 = 1;
            }

            var3.writeInt(var8);
            return true;
         case 46:
            var2.enforceInterface("com.nibiru.lib.controller.IBluexService");
            int var5 = var2.readInt();
            boolean var6 = false;
            if (var5 != 0) {
               var6 = true;
            }

            this.setNibiruIMEShow(var6);
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("com.nibiru.lib.controller.IBluexService");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      static final class a implements IBluexService {
         private IBinder dH;

         a(IBinder var1) {
            this.dH = var1;
         }

         public final IBinder asBinder() {
            return this.dH;
         }

         public final void configure(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(10, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final boolean connectController(BTDevice var1) throws RemoteException {
            boolean var2 = true;
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            label186: {
               Throwable var10000;
               label190: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var27) {
                     var10000 = var27;
                     var10001 = false;
                     break label190;
                  }

                  if (var1 != null) {
                     try {
                        var3.writeInt(1);
                        var1.writeToParcel(var3, 0);
                     } catch (Throwable var26) {
                        var10000 = var26;
                        var10001 = false;
                        break label190;
                     }
                  } else {
                     try {
                        var3.writeInt(0);
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label190;
                     }
                  }

                  label176:
                  try {
                     this.dH.transact(3, var3, var4, 0);
                     var4.readException();
                     var7 = var4.readInt();
                     break label186;
                  } catch (Throwable var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label176;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            if (var7 == 0) {
               var2 = false;
            }

            var4.recycle();
            var3.recycle();
            return var2;
         }

         public final void connectVirutalService(String var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var3.writeString(var1);
               var3.writeInt(var2);
               this.dH.transact(38, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void controllMotor(int var1, int var2, int var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            try {
               var4.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var4.writeInt(var1);
               var4.writeInt(var2);
               var4.writeInt(var3);
               this.dH.transact(16, var4, var5, 0);
               var5.readException();
            } finally {
               var5.recycle();
               var4.recycle();
            }

         }

         public final boolean controllMotor2(int var1, int var2, int var3, long var4) throws RemoteException {
            Parcel var6 = Parcel.obtain();
            Parcel var7 = Parcel.obtain();
            boolean var13 = false;

            int var10;
            try {
               var13 = true;
               var6.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var6.writeInt(var1);
               var6.writeInt(var2);
               var6.writeInt(var3);
               var6.writeLong(var4);
               this.dH.transact(45, var6, var7, 0);
               var7.readException();
               var10 = var7.readInt();
               var13 = false;
            } finally {
               if (var13) {
                  var7.recycle();
                  var6.recycle();
               }
            }

            boolean var11 = false;
            if (var10 != 0) {
               var11 = true;
            }

            var7.recycle();
            var6.recycle();
            return var11;
         }

         public final void deleteDevice(String var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeString(var1);
               this.dH.transact(13, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final boolean disconnectController(BTDevice var1) throws RemoteException {
            boolean var2 = true;
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            label186: {
               Throwable var10000;
               label190: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var27) {
                     var10000 = var27;
                     var10001 = false;
                     break label190;
                  }

                  if (var1 != null) {
                     try {
                        var3.writeInt(1);
                        var1.writeToParcel(var3, 0);
                     } catch (Throwable var26) {
                        var10000 = var26;
                        var10001 = false;
                        break label190;
                     }
                  } else {
                     try {
                        var3.writeInt(0);
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label190;
                     }
                  }

                  label176:
                  try {
                     this.dH.transact(4, var3, var4, 0);
                     var4.readException();
                     var7 = var4.readInt();
                     break label186;
                  } catch (Throwable var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label176;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            if (var7 == 0) {
               var2 = false;
            }

            var4.recycle();
            var3.recycle();
            return var2;
         }

         public final void disconnectVirtualService(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(39, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final boolean enableGlobalControll(boolean var1, String var2) throws RemoteException {
            byte var3 = 1;
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            int var9;
            label89: {
               Throwable var10000;
               label93: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label93;
                  }

                  byte var7;
                  if (var1) {
                     var7 = var3;
                  } else {
                     var7 = 0;
                  }

                  label84:
                  try {
                     var4.writeInt(var7);
                     var4.writeString(var2);
                     this.dH.transact(24, var4, var5, 0);
                     var5.readException();
                     var9 = var5.readInt();
                     break label89;
                  } catch (Throwable var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label84;
                  }
               }

               Throwable var6 = var10000;
               var5.recycle();
               var4.recycle();
               throw var6;
            }

            if (var9 == 0) {
               var3 = 0;
            }

            var5.recycle();
            var4.recycle();
            return (boolean)var3;
         }

         public final AccEvent getAccEvent(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();
            boolean var8 = false;

            AccEvent var6;
            label36: {
               try {
                  var8 = true;
                  var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  var2.writeInt(var1);
                  this.dH.transact(30, var2, var3, 0);
                  var3.readException();
                  if (var3.readInt() != 0) {
                     var6 = (AccEvent)AccEvent.CREATOR.createFromParcel(var3);
                     var8 = false;
                     break label36;
                  }

                  var8 = false;
               } finally {
                  if (var8) {
                     var3.recycle();
                     var2.recycle();
                  }
               }

               var6 = null;
            }

            var3.recycle();
            var2.recycle();
            return var6;
         }

         public final int getClassVersion() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(34, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final BTDevice getDeviceByPlayerOrder(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();
            boolean var8 = false;

            BTDevice var6;
            label36: {
               try {
                  var8 = true;
                  var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  var2.writeInt(var1);
                  this.dH.transact(6, var2, var3, 0);
                  var3.readException();
                  if (var3.readInt() != 0) {
                     var6 = (BTDevice)BTDevice.CREATOR.createFromParcel(var3);
                     var8 = false;
                     break label36;
                  }

                  var8 = false;
               } finally {
                  if (var8) {
                     var3.recycle();
                     var2.recycle();
                  }
               }

               var6 = null;
            }

            var3.recycle();
            var2.recycle();
            return var6;
         }

         public final int[] getDeviceKeyMap(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int[] var6;
            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(11, var2, var3, 0);
               var3.readException();
               var6 = var3.createIntArray();
            } finally {
               var3.recycle();
               var2.recycle();
            }

            return var6;
         }

         public final BTDevice[] getDeviceList() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            BTDevice[] var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(5, var1, var2, 0);
               var2.readException();
               var5 = (BTDevice[])var2.createTypedArray(BTDevice.CREATOR);
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final GyroEvent getGyroEvent(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();
            boolean var8 = false;

            GyroEvent var6;
            label36: {
               try {
                  var8 = true;
                  var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  var2.writeInt(var1);
                  this.dH.transact(29, var2, var3, 0);
                  var3.readException();
                  if (var3.readInt() != 0) {
                     var6 = (GyroEvent)GyroEvent.CREATOR.createFromParcel(var3);
                     var8 = false;
                     break label36;
                  }

                  var8 = false;
               } finally {
                  if (var8) {
                     var3.recycle();
                     var2.recycle();
                  }
               }

               var6 = null;
            }

            var3.recycle();
            var2.recycle();
            return var6;
         }

         public final int getKeyState(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.dH.transact(19, var3, var4, 0);
               var4.readException();
               var7 = var4.readInt();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public final int getKeyState2(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int var6;
            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(28, var2, var3, 0);
               var3.readException();
               var6 = var3.readInt();
            } finally {
               var3.recycle();
               var2.recycle();
            }

            return var6;
         }

         public final int[] getKeyStateMap(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int[] var6;
            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(18, var2, var3, 0);
               var3.readException();
               var6 = var3.createIntArray();
            } finally {
               var3.recycle();
               var2.recycle();
            }

            return var6;
         }

         public final int getMouseSpeed() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(32, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final ControllerServiceState getServiceState() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var7 = false;

            ControllerServiceState var5;
            label36: {
               try {
                  var7 = true;
                  var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  this.dH.transact(14, var1, var2, 0);
                  var2.readException();
                  if (var2.readInt() != 0) {
                     var5 = (ControllerServiceState)ControllerServiceState.CREATOR.createFromParcel(var2);
                     var7 = false;
                     break label36;
                  }

                  var7 = false;
               } finally {
                  if (var7) {
                     var2.recycle();
                     var1.recycle();
                  }
               }

               var5 = null;
            }

            var2.recycle();
            var1.recycle();
            return var5;
         }

         public final String getServiceToken() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            String var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(41, var1, var2, 0);
               var2.readException();
               var5 = var2.readString();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final int getServiceVersion() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            int var5;
            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(22, var1, var2, 0);
               var2.readException();
               var5 = var2.readInt();
            } finally {
               var2.recycle();
               var1.recycle();
            }

            return var5;
         }

         public final float getStickState(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            float var7;
            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.dH.transact(20, var3, var4, 0);
               var4.readException();
               var7 = var4.readFloat();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public final StickEvent getStickState2(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();
            boolean var8 = false;

            StickEvent var6;
            label36: {
               try {
                  var8 = true;
                  var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  var2.writeInt(var1);
                  this.dH.transact(21, var2, var3, 0);
                  var3.readException();
                  if (var3.readInt() != 0) {
                     var6 = (StickEvent)StickEvent.CREATOR.createFromParcel(var3);
                     var8 = false;
                     break label36;
                  }

                  var8 = false;
               } finally {
                  if (var8) {
                     var3.recycle();
                     var2.recycle();
                  }
               }

               var6 = null;
            }

            var3.recycle();
            var2.recycle();
            return var6;
         }

         public final boolean handleExternalInput(NibiruInputEvent var1, String var2, int var3, int var4) throws RemoteException {
            boolean var5 = true;
            Parcel var6 = Parcel.obtain();
            Parcel var7 = Parcel.obtain();

            int var10;
            label186: {
               Throwable var10000;
               label190: {
                  boolean var10001;
                  try {
                     var6.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var30) {
                     var10000 = var30;
                     var10001 = false;
                     break label190;
                  }

                  if (var1 != null) {
                     try {
                        var6.writeInt(1);
                        var1.writeToParcel(var6, 0);
                     } catch (Throwable var29) {
                        var10000 = var29;
                        var10001 = false;
                        break label190;
                     }
                  } else {
                     try {
                        var6.writeInt(0);
                     } catch (Throwable var28) {
                        var10000 = var28;
                        var10001 = false;
                        break label190;
                     }
                  }

                  label176:
                  try {
                     var6.writeString(var2);
                     var6.writeInt(var3);
                     var6.writeInt(var4);
                     this.dH.transact(43, var6, var7, 0);
                     var7.readException();
                     var10 = var7.readInt();
                     break label186;
                  } catch (Throwable var27) {
                     var10000 = var27;
                     var10001 = false;
                     break label176;
                  }
               }

               Throwable var8 = var10000;
               var7.recycle();
               var6.recycle();
               throw var8;
            }

            if (var10 == 0) {
               var5 = false;
            }

            var7.recycle();
            var6.recycle();
            return var5;
         }

         public final void hideInputView() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(27, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }

         public final boolean isInputViewShow() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(40, var1, var2, 0);
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

         public final boolean isSupportInput() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(33, var1, var2, 0);
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

         public final int openDeviceManagerUI(Bundle var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int var6;
            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var26) {
                     var10000 = var26;
                     var10001 = false;
                     break label170;
                  }

                  if (var1 != null) {
                     try {
                        var2.writeInt(1);
                        var1.writeToParcel(var2, 0);
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label170;
                     }
                  } else {
                     try {
                        var2.writeInt(0);
                     } catch (Throwable var24) {
                        var10000 = var24;
                        var10001 = false;
                        break label170;
                     }
                  }

                  label156:
                  try {
                     this.dH.transact(42, var2, var3, 0);
                     var3.readException();
                     var6 = var3.readInt();
                     break label166;
                  } catch (Throwable var23) {
                     var10000 = var23;
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
            return var6;
         }

         public final void registerListener(IBluexListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var5;
                  if (var1 != null) {
                     try {
                        var5 = var1.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var5 = null;
                  }

                  label108:
                  try {
                     var2.writeStrongBinder(var5);
                     this.dH.transact(1, var2, var3, 0);
                     var3.readException();
                     break label116;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label108;
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

         public final void requestErrorReport(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(7, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void resetCurrentApp() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               this.dH.transact(9, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }

         public final boolean sendInputEvent(NibiruInputEvent var1) throws RemoteException {
            boolean var2 = true;
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            label186: {
               Throwable var10000;
               label190: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var27) {
                     var10000 = var27;
                     var10001 = false;
                     break label190;
                  }

                  if (var1 != null) {
                     try {
                        var3.writeInt(1);
                        var1.writeToParcel(var3, 0);
                     } catch (Throwable var26) {
                        var10000 = var26;
                        var10001 = false;
                        break label190;
                     }
                  } else {
                     try {
                        var3.writeInt(0);
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label190;
                     }
                  }

                  label176:
                  try {
                     this.dH.transact(23, var3, var4, 0);
                     var4.readException();
                     var7 = var4.readInt();
                     break label186;
                  } catch (Throwable var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label176;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            if (var7 == 0) {
               var2 = false;
            }

            var4.recycle();
            var3.recycle();
            return var2;
         }

         public final boolean sendVirtualData(byte[] var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();
            boolean var9 = false;

            int var6;
            try {
               var9 = true;
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeByteArray(var1);
               this.dH.transact(35, var2, var3, 0);
               var3.readException();
               var6 = var3.readInt();
               var9 = false;
            } finally {
               if (var9) {
                  var3.recycle();
                  var2.recycle();
               }
            }

            boolean var7 = false;
            if (var6 != 0) {
               var7 = true;
            }

            var3.recycle();
            var2.recycle();
            return var7;
         }

         public final void setCursorState(String var1, boolean var2, int var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            label80: {
               Throwable var10000;
               label85: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                     var4.writeString(var1);
                  } catch (Throwable var13) {
                     var10000 = var13;
                     var10001 = false;
                     break label85;
                  }

                  byte var7 = 0;
                  if (var2) {
                     var7 = 1;
                  }

                  label75:
                  try {
                     var4.writeInt(var7);
                     var4.writeInt(var3);
                     this.dH.transact(44, var4, var5, 0);
                     var5.readException();
                     break label80;
                  } catch (Throwable var12) {
                     var10000 = var12;
                     var10001 = false;
                     break label75;
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

         public final void setMouseSpeed(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(31, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void setNibiruIMEShow(boolean var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label80: {
               Throwable var10000;
               label85: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
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
                     this.dH.transact(46, var2, var3, 0);
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

         public final void setNibiruPlayer(boolean var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label80: {
               Throwable var10000;
               label85: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
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
                     this.dH.transact(15, var2, var3, 0);
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

         public final void setPlayerOrder(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.dH.transact(8, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void setSystemCursorMode(boolean var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label80: {
               Throwable var10000;
               label85: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
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
                     this.dH.transact(17, var2, var3, 0);
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

         public final boolean startInputView(String var1, String var2, int var3, int var4) throws RemoteException {
            Parcel var5 = Parcel.obtain();
            Parcel var6 = Parcel.obtain();
            boolean var12 = false;

            int var9;
            try {
               var12 = true;
               var5.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var5.writeString(var1);
               var5.writeString(var2);
               var5.writeInt(var3);
               var5.writeInt(var4);
               this.dH.transact(26, var5, var6, 0);
               var6.readException();
               var9 = var6.readInt();
               var12 = false;
            } finally {
               if (var12) {
                  var6.recycle();
                  var5.recycle();
               }
            }

            boolean var10 = false;
            if (var9 != 0) {
               var10 = true;
            }

            var6.recycle();
            var5.recycle();
            return var10;
         }

         public final void startVirtualService(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(36, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void stopVietualService(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var2.writeInt(var1);
               this.dH.transact(37, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }

         public final void switchMod(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.dH.transact(25, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public final void unregisterListener(IBluexListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var5;
                  if (var1 != null) {
                     try {
                        var5 = var1.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var5 = null;
                  }

                  label108:
                  try {
                     var2.writeStrongBinder(var5);
                     this.dH.transact(2, var2, var3, 0);
                     var3.readException();
                     break label116;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label108;
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

         public final void updateDeviceInfo(BTDevice var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.nibiru.lib.controller.IBluexService");
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
                     this.dH.transact(12, var2, var3, 0);
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
      }
   }
}
