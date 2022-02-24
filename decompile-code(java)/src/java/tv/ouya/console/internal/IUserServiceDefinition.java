package tv.ouya.console.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IUserServiceDefinition extends IInterface {
   void requestAddLike(String var1, IVoidListener var2) throws RemoteException;

   void requestRedeemVoucher(String var1, IStringListener var2) throws RemoteException;

   void requestRedeemVoucherForce(String var1, IStringListener var2) throws RemoteException;

   void requestRemoveLike(String var1, IVoidListener var2) throws RemoteException;

   void requestUserAddCreditCard(String var1, String var2, String var3, String var4, String var5, String var6, IVoidListener var7) throws RemoteException;

   void requestUserAddCreditCardWithZIP(String var1, String var2, String var3, String var4, String var5, String var6, String var7, IVoidListener var8) throws RemoteException;

   void requestUserAddsAccount(IVoidListener var1) throws RemoteException;

   void requestUserGetCreditCard(ICreditCardInfoListener var1) throws RemoteException;

   void requestUserLikes(IStringListener var1) throws RemoteException;

   void requestUsername(String var1, IStringListener var2) throws RemoteException;

   void uploadLogFiles(IVoidListener var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IUserServiceDefinition {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IUserServiceDefinition";
      static final int TRANSACTION_requestAddLike = 5;
      static final int TRANSACTION_requestRedeemVoucher = 9;
      static final int TRANSACTION_requestRedeemVoucherForce = 10;
      static final int TRANSACTION_requestRemoveLike = 6;
      static final int TRANSACTION_requestUserAddCreditCard = 3;
      static final int TRANSACTION_requestUserAddCreditCardWithZIP = 8;
      static final int TRANSACTION_requestUserAddsAccount = 2;
      static final int TRANSACTION_requestUserGetCreditCard = 4;
      static final int TRANSACTION_requestUserLikes = 7;
      static final int TRANSACTION_requestUsername = 1;
      static final int TRANSACTION_uploadLogFiles = 11;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IUserServiceDefinition");
      }

      public static IUserServiceDefinition asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IUserServiceDefinition");
            return (IUserServiceDefinition)(var1 != null && var1 instanceof IUserServiceDefinition ? (IUserServiceDefinition)var1 : new IUserServiceDefinition.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUsername(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 2:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUserAddsAccount(null.asInterface(var2.readStrongBinder()));
            return true;
         case 3:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUserAddCreditCard(var2.readString(), var2.readString(), var2.readString(), var2.readString(), var2.readString(), var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 4:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUserGetCreditCard(ICreditCardInfoListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 5:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestAddLike(var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 6:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestRemoveLike(var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 7:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUserLikes(IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 8:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestUserAddCreditCardWithZIP(var2.readString(), var2.readString(), var2.readString(), var2.readString(), var2.readString(), var2.readString(), var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 9:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestRedeemVoucher(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 10:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.requestRedeemVoucherForce(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 11:
            var2.enforceInterface("tv.ouya.console.internal.IUserServiceDefinition");
            this.uploadLogFiles(null.asInterface(var2.readStrongBinder()));
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IUserServiceDefinition");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IUserServiceDefinition {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IUserServiceDefinition";
         }

         public void requestAddLike(String var1, IVoidListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(5, var3, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void requestRedeemVoucher(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(9, var3, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void requestRedeemVoucherForce(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(10, var3, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void requestRemoveLike(String var1, IVoidListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(6, var3, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void requestUserAddCreditCard(String var1, String var2, String var3, String var4, String var5, String var6, IVoidListener var7) throws RemoteException {
            Parcel var8 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var8.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var8.writeString(var1);
                     var8.writeString(var2);
                     var8.writeString(var3);
                     var8.writeString(var4);
                     var8.writeString(var5);
                     var8.writeString(var6);
                  } catch (Throwable var22) {
                     var10000 = var22;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var10 = null;
                  if (var7 != null) {
                     try {
                        var10 = var7.asBinder();
                     } catch (Throwable var21) {
                        var10000 = var21;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var8.writeStrongBinder(var10);
                     this.mRemote.transact(3, var8, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var20) {
                     var10000 = var20;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var9 = var10000;
               var8.recycle();
               throw var9;
            }

            var8.recycle();
         }

         public void requestUserAddCreditCardWithZIP(String var1, String var2, String var3, String var4, String var5, String var6, String var7, IVoidListener var8) throws RemoteException {
            Parcel var9 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var9.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var9.writeString(var1);
                     var9.writeString(var2);
                     var9.writeString(var3);
                     var9.writeString(var4);
                     var9.writeString(var5);
                     var9.writeString(var6);
                     var9.writeString(var7);
                  } catch (Throwable var23) {
                     var10000 = var23;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var11 = null;
                  if (var8 != null) {
                     try {
                        var11 = var8.asBinder();
                     } catch (Throwable var22) {
                        var10000 = var22;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var9.writeStrongBinder(var11);
                     this.mRemote.transact(8, var9, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var21) {
                     var10000 = var21;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var10 = var10000;
               var9.recycle();
               throw var10;
            }

            var9.recycle();
         }

         public void requestUserAddsAccount(IVoidListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var4 = null;
                  if (var1 != null) {
                     try {
                        var4 = var1.asBinder();
                     } catch (Throwable var15) {
                        var10000 = var15;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var2.writeStrongBinder(var4);
                     this.mRemote.transact(2, var2, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var3 = var10000;
               var2.recycle();
               throw var3;
            }

            var2.recycle();
         }

         public void requestUserGetCreditCard(ICreditCardInfoListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var4 = null;
                  if (var1 != null) {
                     try {
                        var4 = var1.asBinder();
                     } catch (Throwable var15) {
                        var10000 = var15;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var2.writeStrongBinder(var4);
                     this.mRemote.transact(4, var2, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var3 = var10000;
               var2.recycle();
               throw var3;
            }

            var2.recycle();
         }

         public void requestUserLikes(IStringListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var4 = null;
                  if (var1 != null) {
                     try {
                        var4 = var1.asBinder();
                     } catch (Throwable var15) {
                        var10000 = var15;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var2.writeStrongBinder(var4);
                     this.mRemote.transact(7, var2, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var3 = var10000;
               var2.recycle();
               throw var3;
            }

            var2.recycle();
         }

         public void requestUsername(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                     var3.writeString(var1);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(1, var3, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var15) {
                     var10000 = var15;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void uploadLogFiles(IVoidListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IUserServiceDefinition");
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var4 = null;
                  if (var1 != null) {
                     try {
                        var4 = var1.asBinder();
                     } catch (Throwable var15) {
                        var10000 = var15;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var2.writeStrongBinder(var4);
                     this.mRemote.transact(11, var2, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var14) {
                     var10000 = var14;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var3 = var10000;
               var2.recycle();
               throw var3;
            }

            var2.recycle();
         }
      }
   }
}
