package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IControllerMonitor extends IInterface {
   void onLog(int var1, int var2, String var3) throws RemoteException;

   public abstract static class Stub extends Binder implements IControllerMonitor {
      private static final String DESCRIPTOR = "com.bda.controller.IControllerMonitor";
      static final int TRANSACTION_onLog = 1;

      public Stub() {
         this.attachInterface(this, "com.bda.controller.IControllerMonitor");
      }

      public static IControllerMonitor asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("com.bda.controller.IControllerMonitor");
            return (IControllerMonitor)(var1 != null && var1 instanceof IControllerMonitor ? (IControllerMonitor)var1 : new IControllerMonitor.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("com.bda.controller.IControllerMonitor");
            this.onLog(var2.readInt(), var2.readInt(), var2.readString());
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("com.bda.controller.IControllerMonitor");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IControllerMonitor {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "com.bda.controller.IControllerMonitor";
         }

         public void onLog(int var1, int var2, String var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            try {
               var4.writeInterfaceToken("com.bda.controller.IControllerMonitor");
               var4.writeInt(var1);
               var4.writeInt(var2);
               var4.writeString(var3);
               this.mRemote.transact(1, var4, var5, 0);
               var5.readException();
            } finally {
               var5.recycle();
               var4.recycle();
            }

         }
      }
   }
}
