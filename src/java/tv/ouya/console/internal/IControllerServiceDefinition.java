package tv.ouya.console.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IControllerServiceDefinition extends IInterface {
   int getDeviceIdForPlayer(int var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IControllerServiceDefinition {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IControllerServiceDefinition";
      static final int TRANSACTION_getDeviceIdForPlayer = 1;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IControllerServiceDefinition");
      }

      public static IControllerServiceDefinition asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IControllerServiceDefinition");
            return (IControllerServiceDefinition)(var1 != null && var1 instanceof IControllerServiceDefinition ? (IControllerServiceDefinition)var1 : new IControllerServiceDefinition.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IControllerServiceDefinition");
            int var5 = this.getDeviceIdForPlayer(var2.readInt());
            var3.writeNoException();
            var3.writeInt(var5);
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IControllerServiceDefinition");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IControllerServiceDefinition {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public int getDeviceIdForPlayer(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int var6;
            try {
               var2.writeInterfaceToken("tv.ouya.console.internal.IControllerServiceDefinition");
               var2.writeInt(var1);
               this.mRemote.transact(1, var2, var3, 0);
               var3.readException();
               var6 = var3.readInt();
            } finally {
               var3.recycle();
               var2.recycle();
            }

            return var6;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IControllerServiceDefinition";
         }
      }
   }
}
