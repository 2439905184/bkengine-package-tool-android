package tv.ouya.console.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import tv.ouya.console.api.store.AppDescription;

public interface IAppDescriptionListListener extends IInterface {
   void onCancel() throws RemoteException;

   void onFailure(int var1, String var2, Bundle var3) throws RemoteException;

   void onSuccess(List var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IAppDescriptionListListener {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IAppDescriptionListListener";
      static final int TRANSACTION_onCancel = 3;
      static final int TRANSACTION_onFailure = 2;
      static final int TRANSACTION_onSuccess = 1;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IAppDescriptionListListener");
      }

      public static IAppDescriptionListListener asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IAppDescriptionListListener");
            return (IAppDescriptionListListener)(var1 != null && var1 instanceof IAppDescriptionListListener ? (IAppDescriptionListListener)var1 : new IAppDescriptionListListener.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IAppDescriptionListListener");
            this.onSuccess(var2.createTypedArrayList(AppDescription.CREATOR));
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("tv.ouya.console.internal.IAppDescriptionListListener");
            int var5 = var2.readInt();
            String var6 = var2.readString();
            Bundle var7 = new Bundle();
            this.onFailure(var5, var6, var7);
            var3.writeNoException();
            if (var7 != null) {
               var3.writeInt(1);
               var7.writeToParcel(var3, 1);
               return true;
            }

            var3.writeInt(0);
            return true;
         case 3:
            var2.enforceInterface("tv.ouya.console.internal.IAppDescriptionListListener");
            this.onCancel();
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IAppDescriptionListListener");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IAppDescriptionListListener {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IAppDescriptionListListener";
         }

         public void onCancel() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("tv.ouya.console.internal.IAppDescriptionListListener");
               this.mRemote.transact(3, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }

         public void onFailure(int var1, String var2, Bundle var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            try {
               var4.writeInterfaceToken("tv.ouya.console.internal.IAppDescriptionListListener");
               var4.writeInt(var1);
               var4.writeString(var2);
               this.mRemote.transact(2, var4, var5, 0);
               var5.readException();
               if (var5.readInt() != 0) {
                  var3.readFromParcel(var5);
               }
            } finally {
               var5.recycle();
               var4.recycle();
            }

         }

         public void onSuccess(List var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("tv.ouya.console.internal.IAppDescriptionListListener");
               var2.writeTypedList(var1);
               this.mRemote.transact(1, var2, var3, 0);
               var3.readException();
            } finally {
               var3.recycle();
               var2.recycle();
            }

         }
      }
   }
}
