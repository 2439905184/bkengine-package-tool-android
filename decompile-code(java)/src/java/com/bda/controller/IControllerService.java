package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IControllerService extends IInterface {
   void allowNewConnections() throws RemoteException;

   void disallowNewConnections() throws RemoteException;

   float getAxisValue(int var1, int var2) throws RemoteException;

   int getInfo(int var1) throws RemoteException;

   int getKeyCode(int var1, int var2) throws RemoteException;

   int getKeyCode2(int var1, int var2) throws RemoteException;

   int getState(int var1, int var2) throws RemoteException;

   boolean isAllowingNewConnections() throws RemoteException;

   void registerListener(IControllerListener var1, int var2) throws RemoteException;

   void registerListener2(IControllerListener var1, int var2) throws RemoteException;

   void registerMonitor(IControllerMonitor var1, int var2) throws RemoteException;

   void sendMessage(int var1, int var2) throws RemoteException;

   void unregisterListener(IControllerListener var1, int var2) throws RemoteException;

   void unregisterMonitor(IControllerMonitor var1, int var2) throws RemoteException;

   public abstract static class Stub extends Binder implements IControllerService {
      private static final String DESCRIPTOR = "com.bda.controller.IControllerService";
      static final int TRANSACTION_allowNewConnections = 12;
      static final int TRANSACTION_disallowNewConnections = 13;
      static final int TRANSACTION_getAxisValue = 7;
      static final int TRANSACTION_getInfo = 5;
      static final int TRANSACTION_getKeyCode = 6;
      static final int TRANSACTION_getKeyCode2 = 11;
      static final int TRANSACTION_getState = 8;
      static final int TRANSACTION_isAllowingNewConnections = 14;
      static final int TRANSACTION_registerListener = 1;
      static final int TRANSACTION_registerListener2 = 10;
      static final int TRANSACTION_registerMonitor = 3;
      static final int TRANSACTION_sendMessage = 9;
      static final int TRANSACTION_unregisterListener = 2;
      static final int TRANSACTION_unregisterMonitor = 4;

      public Stub() {
         this.attachInterface(this, "com.bda.controller.IControllerService");
      }

      public static IControllerService asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("com.bda.controller.IControllerService");
            return (IControllerService)(var1 != null && var1 instanceof IControllerService ? (IControllerService)var1 : new IControllerService.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.registerListener(IControllerListener.Stub.asInterface(var2.readStrongBinder()), var2.readInt());
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.unregisterListener(IControllerListener.Stub.asInterface(var2.readStrongBinder()), var2.readInt());
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.registerMonitor(IControllerMonitor.Stub.asInterface(var2.readStrongBinder()), var2.readInt());
            var3.writeNoException();
            return true;
         case 4:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.unregisterMonitor(IControllerMonitor.Stub.asInterface(var2.readStrongBinder()), var2.readInt());
            var3.writeNoException();
            return true;
         case 5:
            var2.enforceInterface("com.bda.controller.IControllerService");
            int var11 = this.getInfo(var2.readInt());
            var3.writeNoException();
            var3.writeInt(var11);
            return true;
         case 6:
            var2.enforceInterface("com.bda.controller.IControllerService");
            int var10 = this.getKeyCode(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeInt(var10);
            return true;
         case 7:
            var2.enforceInterface("com.bda.controller.IControllerService");
            float var9 = this.getAxisValue(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeFloat(var9);
            return true;
         case 8:
            var2.enforceInterface("com.bda.controller.IControllerService");
            int var8 = this.getState(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeInt(var8);
            return true;
         case 9:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.sendMessage(var2.readInt(), var2.readInt());
            var3.writeNoException();
            return true;
         case 10:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.registerListener2(IControllerListener.Stub.asInterface(var2.readStrongBinder()), var2.readInt());
            var3.writeNoException();
            return true;
         case 11:
            var2.enforceInterface("com.bda.controller.IControllerService");
            int var7 = this.getKeyCode2(var2.readInt(), var2.readInt());
            var3.writeNoException();
            var3.writeInt(var7);
            return true;
         case 12:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.allowNewConnections();
            var3.writeNoException();
            return true;
         case 13:
            var2.enforceInterface("com.bda.controller.IControllerService");
            this.disallowNewConnections();
            var3.writeNoException();
            return true;
         case 14:
            var2.enforceInterface("com.bda.controller.IControllerService");
            boolean var5 = this.isAllowingNewConnections();
            var3.writeNoException();
            byte var6;
            if (var5) {
               var6 = 1;
            } else {
               var6 = 0;
            }

            var3.writeInt(var6);
            return true;
         case 1598968902:
            var3.writeString("com.bda.controller.IControllerService");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IControllerService {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public void allowNewConnections() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("com.bda.controller.IControllerService");
               this.mRemote.transact(12, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public void disallowNewConnections() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();

            try {
               var1.writeInterfaceToken("com.bda.controller.IControllerService");
               this.mRemote.transact(13, var1, var2, 0);
               var2.readException();
            } finally {
               var2.recycle();
               var1.recycle();
            }

         }

         public float getAxisValue(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            float var7;
            try {
               var3.writeInterfaceToken("com.bda.controller.IControllerService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.mRemote.transact(7, var3, var4, 0);
               var4.readException();
               var7 = var4.readFloat();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public int getInfo(int var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            int var6;
            try {
               var2.writeInterfaceToken("com.bda.controller.IControllerService");
               var2.writeInt(var1);
               this.mRemote.transact(5, var2, var3, 0);
               var3.readException();
               var6 = var3.readInt();
            } finally {
               var3.recycle();
               var2.recycle();
            }

            return var6;
         }

         public String getInterfaceDescriptor() {
            return "com.bda.controller.IControllerService";
         }

         public int getKeyCode(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            try {
               var3.writeInterfaceToken("com.bda.controller.IControllerService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.mRemote.transact(6, var3, var4, 0);
               var4.readException();
               var7 = var4.readInt();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public int getKeyCode2(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            try {
               var3.writeInterfaceToken("com.bda.controller.IControllerService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.mRemote.transact(11, var3, var4, 0);
               var4.readException();
               var7 = var4.readInt();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public int getState(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            int var7;
            try {
               var3.writeInterfaceToken("com.bda.controller.IControllerService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.mRemote.transact(8, var3, var4, 0);
               var4.readException();
               var7 = var4.readInt();
            } finally {
               var4.recycle();
               var3.recycle();
            }

            return var7;
         }

         public boolean isAllowingNewConnections() throws RemoteException {
            Parcel var1 = Parcel.obtain();
            Parcel var2 = Parcel.obtain();
            boolean var8 = false;

            int var5;
            try {
               var8 = true;
               var1.writeInterfaceToken("com.bda.controller.IControllerService");
               this.mRemote.transact(14, var1, var2, 0);
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

         public void registerListener(IControllerListener var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.bda.controller.IControllerService");
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var1 != null) {
                     try {
                        var6 = var1.asBinder();
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
                     var3.writeInt(var2);
                     this.mRemote.transact(1, var3, var4, 0);
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

         public void registerListener2(IControllerListener var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.bda.controller.IControllerService");
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var1 != null) {
                     try {
                        var6 = var1.asBinder();
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
                     var3.writeInt(var2);
                     this.mRemote.transact(10, var3, var4, 0);
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

         public void registerMonitor(IControllerMonitor var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.bda.controller.IControllerService");
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var1 != null) {
                     try {
                        var6 = var1.asBinder();
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
                     var3.writeInt(var2);
                     this.mRemote.transact(3, var3, var4, 0);
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

         public void sendMessage(int var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            try {
               var3.writeInterfaceToken("com.bda.controller.IControllerService");
               var3.writeInt(var1);
               var3.writeInt(var2);
               this.mRemote.transact(9, var3, var4, 0);
               var4.readException();
            } finally {
               var4.recycle();
               var3.recycle();
            }

         }

         public void unregisterListener(IControllerListener var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.bda.controller.IControllerService");
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var1 != null) {
                     try {
                        var6 = var1.asBinder();
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
                     var3.writeInt(var2);
                     this.mRemote.transact(2, var3, var4, 0);
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

         public void unregisterMonitor(IControllerMonitor var1, int var2) throws RemoteException {
            Parcel var3 = Parcel.obtain();
            Parcel var4 = Parcel.obtain();

            label116: {
               Throwable var10000;
               label120: {
                  boolean var10001;
                  try {
                     var3.writeInterfaceToken("com.bda.controller.IControllerService");
                  } catch (Throwable var18) {
                     var10000 = var18;
                     var10001 = false;
                     break label120;
                  }

                  IBinder var6;
                  if (var1 != null) {
                     try {
                        var6 = var1.asBinder();
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
                     var3.writeInt(var2);
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
      }
   }
}
