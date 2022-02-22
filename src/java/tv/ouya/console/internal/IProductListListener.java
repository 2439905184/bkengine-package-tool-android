package tv.ouya.console.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import tv.ouya.console.api.Product;

public interface IProductListListener extends IInterface {
   void onCancel() throws RemoteException;

   void onFailure(int var1, String var2, Bundle var3) throws RemoteException;

   void onSuccess(List var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IProductListListener {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IProductListListener";
      static final int TRANSACTION_onCancel = 3;
      static final int TRANSACTION_onFailure = 2;
      static final int TRANSACTION_onSuccess = 1;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IProductListListener");
      }

      public static IProductListListener asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IProductListListener");
            return (IProductListListener)(var1 != null && var1 instanceof IProductListListener ? (IProductListListener)var1 : new IProductListListener.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IProductListListener");
            this.onSuccess(var2.createTypedArrayList(Product.CREATOR));
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("tv.ouya.console.internal.IProductListListener");
            int var5 = var2.readInt();
            String var6 = var2.readString();
            Bundle var7;
            if (var2.readInt() != 0) {
               var7 = (Bundle)Bundle.CREATOR.createFromParcel(var2);
            } else {
               var7 = null;
            }

            this.onFailure(var5, var6, var7);
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("tv.ouya.console.internal.IProductListListener");
            this.onCancel();
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IProductListListener");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IProductListListener {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IProductListListener";
         }

         public void onCancel() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("tv.ouya.console.internal.IProductListListener");
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

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IProductListListener");
                     var4.writeInt(var1);
                     var4.writeString(var2);
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
                     this.mRemote.transact(2, var4, var5, 0);
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

         public void onSuccess(List var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            try {
               var2.writeInterfaceToken("tv.ouya.console.internal.IProductListListener");
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
