package tv.ouya.console.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import tv.ouya.console.api.Product;
import tv.ouya.console.api.Purchasable;
import tv.ouya.console.api.UserInfo;

public interface IStoreServiceDefinition extends IInterface {
   void requestAppDownloadUrl(String var1, IStringListener var2) throws RemoteException;

   void requestAppInfo(String var1, IAppDetailsListener var2) throws RemoteException;

   void requestAppList(IAppDescriptionListListener var1) throws RemoteException;

   void requestAppListForTag(String var1, IAppDescriptionListListener var2) throws RemoteException;

   void requestCachedUserInfo(IUserInfoListener var1) throws RemoteException;

   void requestCreateNewUser(UserInfo var1, boolean var2, IVoidListener var3) throws RemoteException;

   void requestDeregisterConsole(String var1, IVoidListener var2) throws RemoteException;

   void requestDeveloperAppList(IAppDescriptionListListener var1) throws RemoteException;

   void requestDeveloperPurchase(String var1, Purchasable var2, IStringListener var3) throws RemoteException;

   void requestLauncherPurchase(String var1, Product var2, Purchasable var3, IStringListener var4) throws RemoteException;

   void requestLauncherReceipts(String var1, IStringListener var2) throws RemoteException;

   void requestRegisterConsole(IVoidListener var1) throws RemoteException;

   void requestResendEmail(String var1, IVoidListener var2) throws RemoteException;

   void requestStoreStructure(IStoreStructureListener var1) throws RemoteException;

   void requestSystemMessage(String var1, IStringListener var2) throws RemoteException;

   void requestTagList(ITagListListener var1) throws RemoteException;

   void requestUpdateUserInfo(UserInfo var1, IVoidListener var2) throws RemoteException;

   void requestUserInfo(IUserInfoListener var1) throws RemoteException;

   void run(String var1, boolean var2, IStringListener var3) throws RemoteException;

   void runDelete(String var1, String var2, IStringListener var3) throws RemoteException;

   void runPost(String var1, String var2, IStringListener var3) throws RemoteException;

   void runPut(String var1, String var2, IStringListener var3) throws RemoteException;

   public abstract static class Stub extends Binder implements IStoreServiceDefinition {
      private static final String DESCRIPTOR = "tv.ouya.console.internal.IStoreServiceDefinition";
      static final int TRANSACTION_requestAppDownloadUrl = 1;
      static final int TRANSACTION_requestAppInfo = 2;
      static final int TRANSACTION_requestAppList = 3;
      static final int TRANSACTION_requestAppListForTag = 4;
      static final int TRANSACTION_requestCachedUserInfo = 15;
      static final int TRANSACTION_requestCreateNewUser = 6;
      static final int TRANSACTION_requestDeregisterConsole = 7;
      static final int TRANSACTION_requestDeveloperAppList = 8;
      static final int TRANSACTION_requestDeveloperPurchase = 22;
      static final int TRANSACTION_requestLauncherPurchase = 19;
      static final int TRANSACTION_requestLauncherReceipts = 20;
      static final int TRANSACTION_requestRegisterConsole = 9;
      static final int TRANSACTION_requestResendEmail = 10;
      static final int TRANSACTION_requestStoreStructure = 13;
      static final int TRANSACTION_requestSystemMessage = 14;
      static final int TRANSACTION_requestTagList = 5;
      static final int TRANSACTION_requestUpdateUserInfo = 11;
      static final int TRANSACTION_requestUserInfo = 12;
      static final int TRANSACTION_run = 16;
      static final int TRANSACTION_runDelete = 18;
      static final int TRANSACTION_runPost = 21;
      static final int TRANSACTION_runPut = 17;

      public Stub() {
         this.attachInterface(this, "tv.ouya.console.internal.IStoreServiceDefinition");
      }

      public static IStoreServiceDefinition asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            return (IStoreServiceDefinition)(var1 != null && var1 instanceof IStoreServiceDefinition ? (IStoreServiceDefinition)var1 : new IStoreServiceDefinition.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestAppDownloadUrl(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 2:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestAppInfo(var2.readString(), IAppDetailsListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 3:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestAppList(IAppDescriptionListListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 4:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestAppListForTag(var2.readString(), IAppDescriptionListListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 5:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestTagList(ITagListListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 6:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            UserInfo var14;
            if (var2.readInt() != 0) {
               var14 = (UserInfo)UserInfo.CREATOR.createFromParcel(var2);
            } else {
               var14 = null;
            }

            int var15 = var2.readInt();
            boolean var16 = false;
            if (var15 != 0) {
               var16 = true;
            }

            this.requestCreateNewUser(var14, var16, null.asInterface(var2.readStrongBinder()));
            return true;
         case 7:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestDeregisterConsole(var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 8:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestDeveloperAppList(IAppDescriptionListListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 9:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestRegisterConsole(null.asInterface(var2.readStrongBinder()));
            return true;
         case 10:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestResendEmail(var2.readString(), null.asInterface(var2.readStrongBinder()));
            return true;
         case 11:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            UserInfo var13;
            if (var2.readInt() != 0) {
               var13 = (UserInfo)UserInfo.CREATOR.createFromParcel(var2);
            } else {
               var13 = null;
            }

            this.requestUpdateUserInfo(var13, null.asInterface(var2.readStrongBinder()));
            return true;
         case 12:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestUserInfo(IUserInfoListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 13:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestStoreStructure(IStoreStructureListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 14:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestSystemMessage(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 15:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestCachedUserInfo(IUserInfoListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 16:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            String var10 = var2.readString();
            int var11 = var2.readInt();
            boolean var12 = false;
            if (var11 != 0) {
               var12 = true;
            }

            this.run(var10, var12, IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 17:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.runPut(var2.readString(), var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 18:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.runDelete(var2.readString(), var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 19:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            String var7 = var2.readString();
            Product var8;
            if (var2.readInt() != 0) {
               var8 = (Product)Product.CREATOR.createFromParcel(var2);
            } else {
               var8 = null;
            }

            Purchasable var9;
            if (var2.readInt() != 0) {
               var9 = (Purchasable)Purchasable.CREATOR.createFromParcel(var2);
            } else {
               var9 = null;
            }

            this.requestLauncherPurchase(var7, var8, var9, IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 20:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.requestLauncherReceipts(var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 21:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            this.runPost(var2.readString(), var2.readString(), IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 22:
            var2.enforceInterface("tv.ouya.console.internal.IStoreServiceDefinition");
            String var5 = var2.readString();
            Purchasable var6;
            if (var2.readInt() != 0) {
               var6 = (Purchasable)Purchasable.CREATOR.createFromParcel(var2);
            } else {
               var6 = null;
            }

            this.requestDeveloperPurchase(var5, var6, IStringListener.Stub.asInterface(var2.readStrongBinder()));
            return true;
         case 1598968902:
            var3.writeString("tv.ouya.console.internal.IStoreServiceDefinition");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IStoreServiceDefinition {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "tv.ouya.console.internal.IStoreServiceDefinition";
         }

         public void requestAppDownloadUrl(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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

         public void requestAppInfo(String var1, IAppDetailsListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(2, var3, (Parcel)null, 1);
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

         public void requestAppList(IAppDescriptionListListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(3, var2, (Parcel)null, 1);
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

         public void requestAppListForTag(String var1, IAppDescriptionListListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(4, var3, (Parcel)null, 1);
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

         public void requestCachedUserInfo(IUserInfoListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(15, var2, (Parcel)null, 1);
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

         public void requestCreateNewUser(UserInfo var1, boolean var2, IVoidListener var3) throws RemoteException {
            byte var4 = 1;
            Parcel var5 = Parcel.obtain();

            label349: {
               Throwable var10000;
               label354: {
                  boolean var10001;
                  try {
                     var5.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                  } catch (Throwable var49) {
                     var10000 = var49;
                     var10001 = false;
                     break label354;
                  }

                  if (var1 != null) {
                     try {
                        var5.writeInt(1);
                        var1.writeToParcel(var5, 0);
                     } catch (Throwable var48) {
                        var10000 = var48;
                        var10001 = false;
                        break label354;
                     }
                  } else {
                     try {
                        var5.writeInt(0);
                     } catch (Throwable var47) {
                        var10000 = var47;
                        var10001 = false;
                        break label354;
                     }
                  }

                  if (!var2) {
                     var4 = 0;
                  }

                  try {
                     var5.writeInt(var4);
                  } catch (Throwable var46) {
                     var10000 = var46;
                     var10001 = false;
                     break label354;
                  }

                  IBinder var7 = null;
                  if (var3 != null) {
                     try {
                        var7 = var3.asBinder();
                     } catch (Throwable var45) {
                        var10000 = var45;
                        var10001 = false;
                        break label354;
                     }
                  }

                  label332:
                  try {
                     var5.writeStrongBinder(var7);
                     this.mRemote.transact(6, var5, (Parcel)null, 1);
                     break label349;
                  } catch (Throwable var44) {
                     var10000 = var44;
                     var10001 = false;
                     break label332;
                  }
               }

               Throwable var6 = var10000;
               var5.recycle();
               throw var6;
            }

            var5.recycle();
         }

         public void requestDeregisterConsole(String var1, IVoidListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(7, var3, (Parcel)null, 1);
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

         public void requestDeveloperAppList(IAppDescriptionListListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(8, var2, (Parcel)null, 1);
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

         public void requestDeveloperPurchase(String var1, Purchasable var2, IStringListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();

            label231: {
               Throwable var10000;
               label235: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var4.writeString(var1);
                  } catch (Throwable var36) {
                     var10000 = var36;
                     var10001 = false;
                     break label235;
                  }

                  if (var2 != null) {
                     try {
                        var4.writeInt(1);
                        var2.writeToParcel(var4, 0);
                     } catch (Throwable var35) {
                        var10000 = var35;
                        var10001 = false;
                        break label235;
                     }
                  } else {
                     try {
                        var4.writeInt(0);
                     } catch (Throwable var34) {
                        var10000 = var34;
                        var10001 = false;
                        break label235;
                     }
                  }

                  IBinder var6 = null;
                  if (var3 != null) {
                     try {
                        var6 = var3.asBinder();
                     } catch (Throwable var33) {
                        var10000 = var33;
                        var10001 = false;
                        break label235;
                     }
                  }

                  label218:
                  try {
                     var4.writeStrongBinder(var6);
                     this.mRemote.transact(22, var4, (Parcel)null, 1);
                     break label231;
                  } catch (Throwable var32) {
                     var10000 = var32;
                     var10001 = false;
                     break label218;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               throw var5;
            }

            var4.recycle();
         }

         public void requestLauncherPurchase(String var1, Product var2, Purchasable var3, IStringListener var4) throws RemoteException {
            Parcel var5 = Parcel.obtain();

            label390: {
               Throwable var10000;
               label394: {
                  boolean var10001;
                  try {
                     var5.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var5.writeString(var1);
                  } catch (Throwable var63) {
                     var10000 = var63;
                     var10001 = false;
                     break label394;
                  }

                  if (var2 != null) {
                     try {
                        var5.writeInt(1);
                        var2.writeToParcel(var5, 0);
                     } catch (Throwable var62) {
                        var10000 = var62;
                        var10001 = false;
                        break label394;
                     }
                  } else {
                     try {
                        var5.writeInt(0);
                     } catch (Throwable var61) {
                        var10000 = var61;
                        var10001 = false;
                        break label394;
                     }
                  }

                  if (var3 != null) {
                     try {
                        var5.writeInt(1);
                        var3.writeToParcel(var5, 0);
                     } catch (Throwable var60) {
                        var10000 = var60;
                        var10001 = false;
                        break label394;
                     }
                  } else {
                     try {
                        var5.writeInt(0);
                     } catch (Throwable var59) {
                        var10000 = var59;
                        var10001 = false;
                        break label394;
                     }
                  }

                  IBinder var7 = null;
                  if (var4 != null) {
                     try {
                        var7 = var4.asBinder();
                     } catch (Throwable var58) {
                        var10000 = var58;
                        var10001 = false;
                        break label394;
                     }
                  }

                  label372:
                  try {
                     var5.writeStrongBinder(var7);
                     this.mRemote.transact(19, var5, (Parcel)null, 1);
                     break label390;
                  } catch (Throwable var57) {
                     var10000 = var57;
                     var10001 = false;
                     break label372;
                  }
               }

               Throwable var6 = var10000;
               var5.recycle();
               throw var6;
            }

            var5.recycle();
         }

         public void requestLauncherReceipts(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(20, var3, (Parcel)null, 1);
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

         public void requestRegisterConsole(IVoidListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(9, var2, (Parcel)null, 1);
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

         public void requestResendEmail(String var1, IVoidListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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

         public void requestStoreStructure(IStoreStructureListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(13, var2, (Parcel)null, 1);
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

         public void requestSystemMessage(String var1, IStringListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(14, var3, (Parcel)null, 1);
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

         public void requestTagList(ITagListListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(5, var2, (Parcel)null, 1);
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

         public void requestUpdateUserInfo(UserInfo var1, IVoidListener var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();

            label231: {
               Throwable var10000;
               label235: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                  } catch (Throwable var35) {
                     var10000 = var35;
                     var10001 = false;
                     break label235;
                  }

                  if (var1 != null) {
                     try {
                        var3.writeInt(1);
                        var1.writeToParcel(var3, 0);
                     } catch (Throwable var34) {
                        var10000 = var34;
                        var10001 = false;
                        break label235;
                     }
                  } else {
                     try {
                        var3.writeInt(0);
                     } catch (Throwable var33) {
                        var10000 = var33;
                        var10001 = false;
                        break label235;
                     }
                  }

                  IBinder var5 = null;
                  if (var2 != null) {
                     try {
                        var5 = var2.asBinder();
                     } catch (Throwable var32) {
                        var10000 = var32;
                        var10001 = false;
                        break label235;
                     }
                  }

                  label218:
                  try {
                     var3.writeStrongBinder(var5);
                     this.mRemote.transact(11, var3, (Parcel)null, 1);
                     break label231;
                  } catch (Throwable var31) {
                     var10000 = var31;
                     var10001 = false;
                     break label218;
                  }
               }

               Throwable var4 = var10000;
               var3.recycle();
               throw var4;
            }

            var3.recycle();
         }

         public void requestUserInfo(IUserInfoListener var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
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
                     this.mRemote.transact(12, var2, (Parcel)null, 1);
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

         public void run(String var1, boolean var2, IStringListener var3) throws RemoteException {
            byte var4 = 1;
            Parcel var5 = Parcel.obtain();

            label196: {
               Throwable var10000;
               label201: {
                  boolean var10001;
                  try {
                     var5.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var5.writeString(var1);
                  } catch (Throwable var27) {
                     var10000 = var27;
                     var10001 = false;
                     break label201;
                  }

                  if (!var2) {
                     var4 = 0;
                  }

                  try {
                     var5.writeInt(var4);
                  } catch (Throwable var26) {
                     var10000 = var26;
                     var10001 = false;
                     break label201;
                  }

                  IBinder var7 = null;
                  if (var3 != null) {
                     try {
                        var7 = var3.asBinder();
                     } catch (Throwable var25) {
                        var10000 = var25;
                        var10001 = false;
                        break label201;
                     }
                  }

                  label184:
                  try {
                     var5.writeStrongBinder(var7);
                     this.mRemote.transact(16, var5, (Parcel)null, 1);
                     break label196;
                  } catch (Throwable var24) {
                     var10000 = var24;
                     var10001 = false;
                     break label184;
                  }
               }

               Throwable var6 = var10000;
               var5.recycle();
               throw var6;
            }

            var5.recycle();
         }

         public void runDelete(String var1, String var2, IStringListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var4.writeString(var1);
                     var4.writeString(var2);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var6 = null;
                  if (var3 != null) {
                     try {
                        var6 = var3.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var4.writeStrongBinder(var6);
                     this.mRemote.transact(18, var4, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               throw var5;
            }

            var4.recycle();
         }

         public void runPost(String var1, String var2, IStringListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var4.writeString(var1);
                     var4.writeString(var2);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var6 = null;
                  if (var3 != null) {
                     try {
                        var6 = var3.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var4.writeStrongBinder(var6);
                     this.mRemote.transact(21, var4, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               throw var5;
            }

            var4.recycle();
         }

         public void runPut(String var1, String var2, IStringListener var3) throws RemoteException {
            Parcel var4 = Parcel.obtain();

            label112: {
               Throwable var10000;
               label116: {
                  boolean var10001;
                  try {
                     var4.writeInterfaceToken("tv.ouya.console.internal.IStoreServiceDefinition");
                     var4.writeString(var1);
                     var4.writeString(var2);
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label116;
                  }

                  IBinder var6 = null;
                  if (var3 != null) {
                     try {
                        var6 = var3.asBinder();
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label116;
                     }
                  }

                  label104:
                  try {
                     var4.writeStrongBinder(var6);
                     this.mRemote.transact(17, var4, (Parcel)null, 1);
                     break label112;
                  } catch (Throwable var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label104;
                  }
               }

               Throwable var5 = var10000;
               var4.recycle();
               throw var5;
            }

            var4.recycle();
         }
      }
   }
}
