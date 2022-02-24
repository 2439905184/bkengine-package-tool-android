package tv.ouya.console.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import tv.ouya.console.api.Purchasable;

public interface IIapServiceDefinition extends IInterface {
   void requestGamerInfo(String var1, IStringListener var2) throws RemoteException;

   void requestGamerUuid(String var1, IStringListener var2) throws RemoteException;

   void requestProductList(String var1, List var2, IProductListListener var3) throws RemoteException;

   void requestProductListForVersion(String var1, int var2, List var3, IProductListListener var4) throws RemoteException;

   void requestPurchase(String var1, Purchasable var2, IStringListener var3) throws RemoteException;

   void requestReceipts(String var1, IStringListener var2) throws RemoteException;

   void setTestMode() throws RemoteException;

   public abstract static class Stub extends Binder implements IIapServiceDefinition {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IIapServiceDefinition";
      static final int TRANSACTION_requestGamerInfo = 7;
      static final int TRANSACTION_requestGamerUuid = 5;
      static final int TRANSACTION_requestProductList = 2;
      static final int TRANSACTION_requestProductListForVersion = 6;
      static final int TRANSACTION_requestPurchase = 3;
      static final int TRANSACTION_requestReceipts = 4;
      static final int TRANSACTION_setTestMode = 1;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IIapServiceDefinition");
      }

      public static IIapServiceDefinition asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IIapServiceDefinition");
            return (IIapServiceDefinition)(var1 != null && var1 instanceof IIapServiceDefinition ? (IIapServiceDefinition)var1 : new IIapServiceDefinition.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.setTestMode();
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.requestProductList(var2.readString(), var2.createTypedArrayList(Purchasable.CREATOR), IProductListListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            String var5 = var2.readString();
            Purchasable var6;
            if (var2.readInt() != 0) {
               var6 = (Purchasable)Purchasable.CREATOR.createFromParcel(var2);
            } else {
               var6 = null;
            }

            this.requestPurchase(var5, var6, IStringListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 4:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.requestReceipts(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 5:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.requestGamerUuid(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 6:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.requestProductListForVersion(var2.readString(), var2.readInt(), var2.createTypedArrayList(Purchasable.CREATOR), IProductListListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 7:
            var2.enforceInterface("tv.ouya.console.internal.IIapServiceDefinition");
            this.requestGamerInfo(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IIapServiceDefinition");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IIapServiceDefinition {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IIapServiceDefinition";
         }

         public void requestGamerInfo(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var2 != null) {
                     try {
                        var6 = var2.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var6 = null;
                  }

                  label108:
                  try {
                     var3.writeStrongBinder(var6);
                     this.mRemote.transact(7, var3, var4, 0);
                     var4.readException();
                     break label116;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label108;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            var4.recycle();
            var3.recycle();
         }

         public void requestGamerUuid(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var2 != null) {
                     try {
                        var6 = var2.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var6 = null;
                  }

                  label108:
                  try {
                     var3.writeStrongBinder(var6);
                     this.mRemote.transact(5, var3, var4, 0);
                     var4.readException();
                     break label116;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label108;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            var4.recycle();
            var3.recycle();
         }

         public void requestProductList(String var1, List var2, IProductListListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var4.writeString(var1);
                     var4.writeTypedList(var2);
                  } catch (Throwable var19) {
                     var10000 = var19;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var7;
                  if (var3 != null) {
                     try {
                        var7 = var3.asBinder();
                     } catch (Throwable var18) {
                        var10000 = var18;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var7 = null;
                  }

                  label108:
                  try {
                     var4.writeStrongBinder(var7);
                     this.mRemote.transact(2, var4, var5, 0);
                     var5.readException();
                     break label116;
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label108;
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

         public void requestProductListForVersion(String var1, int var2, List var3, IProductListListener var4) throws RemoteException {
            Parcel var5 = Parcel.obtain();
            Parcel var6 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var5.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var5.writeString(var1);
                     var5.writeInt(var2);
                     var5.writeTypedList(var3);
                  } catch (Throwable var20) {
                     var10000 = var20;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var8;
                  if (var4 != null) {
                     try {
                        var8 = var4.asBinder();
                     } catch (Throwable var19) {
                        var10000 = var19;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var8 = null;
                  }

                  label108:
                  try {
                     var5.writeStrongBinder(var8);
                     this.mRemote.transact(6, var5, var6, 0);
                     var6.readException();
                     break label116;
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label108;
                  }
               }

               Throwable var7 = var10000;
               var6.recycle();
               var5.recycle();
               throw var7;
            }

            var6.recycle();
            var5.recycle();
         }

         public void requestPurchase(String var1, Purchasable var2, IStringListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();
            Parcel var5 = Parcel.obtain();

            label237: {
               Throwable var10000;
               label241: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var4.writeString(var1);
                  } catch (Throwable var37) {
                     var10000 = var37;
                     var10001 = false;
                     break label241;
                  }

                  if (var2 != null) {
                     try {
                        var4.writeInt(1);
                        var2.writeToParcel(var4, 0);
                     } catch (Throwable var36) {
                        var10000 = var36;
                        var10001 = false;
                        break label241;
                     }
                  } else {
                     try {
                        var4.writeInt(0);
                     } catch (Throwable var35) {
                        var10000 = var35;
                        var10001 = false;
                        break label241;
                     }
                  }

                  IBinder var7;
                  if (var3 != null) {
                     try {
                        var7 = var3.asBinder();
                     } catch (Throwable var34) {
                        var10000 = var34;
                        var10001 = false;
                        break label241;
                     }
                  } else {
                     var7 = null;
                  }

                  label224:
                  try {
                     var4.writeStrongBinder(var7);
                     this.mRemote.transact(3, var4, var5, 0);
                     var5.readException();
                     break label237;
                  } catch (Throwable var33) {
                     var10000 = var33;
                     var10001 = false;
                     break label224;
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

         public void requestReceipts(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var2 != null) {
                     try {
                        var6 = var2.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label120;
                     }
                  } else {
                     var6 = null;
                  }

                  label108:
                  try {
                     var3.writeStrongBinder(var6);
                     this.mRemote.transact(4, var3, var4, 0);
                     var4.readException();
                     break label116;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label108;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               var3.recycle();
               throw var5;
            }

            var4.recycle();
            var3.recycle();
         }

         public void setTestMode() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("tv.ouya.console.internal.IIapServiceDefinition");
               this.mRemote.transact(1, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }
      }
   }
}
