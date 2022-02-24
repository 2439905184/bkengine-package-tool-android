package com.bda.controller;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IControllerListener extends IInterface {
   void onKeyEvent(KeyEvent var1) throws RemoteException;

   void onMotionEvent(MotionEvent var1) throws RemoteException;

   void onStateEvent(StateEvent var1) throws RemoteException;

   public abstract static class Stub extends Binder implements IControllerListener {
      private static final String DESCRIPTOR = "com.bda.controller.IControllerListener";
      static final int TRANSACTION_onKeyEvent = 1;
      static final int TRANSACTION_onMotionEvent = 2;
      static final int TRANSACTION_onStateEvent = 3;

      public Stub() {
         this.attachInterface(this, "com.bda.controller.IControllerListener");
      }

      public static IControllerListener asInterface(IBinder var0) {
         if (var0 == null) {
            return null;
         } else {
            IInterface var1 = var0.queryLocalInterface("com.bda.controller.IControllerListener");
            return (IControllerListener)(var1 != null && var1 instanceof IControllerListener ? (IControllerListener)var1 : new IControllerListener.Stub.Proxy(var0));
         }
      }

      public IBinder asBinder() {
         return this;
      }

      public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
         switch(var1) {
         case 1:
            var2.enforceInterface("com.bda.controller.IControllerListener");
            KeyEvent var7;
            if (var2.readInt() != 0) {
               var7 = (KeyEvent)KeyEvent.CREATOR.createFromParcel(var2);
            } else {
               var7 = null;
            }

            this.onKeyEvent(var7);
            var3.writeNoException();
            return true;
         case 2:
            var2.enforceInterface("com.bda.controller.IControllerListener");
            MotionEvent var6;
            if (var2.readInt() != 0) {
               var6 = (MotionEvent)MotionEvent.CREATOR.createFromParcel(var2);
            } else {
               var6 = null;
            }

            this.onMotionEvent(var6);
            var3.writeNoException();
            return true;
         case 3:
            var2.enforceInterface("com.bda.controller.IControllerListener");
            StateEvent var5;
            if (var2.readInt() != 0) {
               var5 = (StateEvent)StateEvent.CREATOR.createFromParcel(var2);
            } else {
               var5 = null;
            }

            this.onStateEvent(var5);
            var3.writeNoException();
            return true;
         case 1598968902:
            var3.writeString("com.bda.controller.IControllerListener");
            return true;
         default:
            return super.onTransact(var1, var2, var3, var4);
         }
      }

      private static class Proxy implements IControllerListener {
         private IBinder mRemote;

         Proxy(IBinder var1) {
            this.mRemote = var1;
         }

         public IBinder asBinder() {
            return this.mRemote;
         }

         public String getInterfaceDescriptor() {
            return "com.bda.controller.IControllerListener";
         }

         public void onKeyEvent(KeyEvent var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.bda.controller.IControllerListener");
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
                     this.mRemote.transact(1, var2, var3, 0);
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

         public void onMotionEvent(MotionEvent var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.bda.controller.IControllerListener");
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
                     this.mRemote.transact(2, var2, var3, 0);
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

         public void onStateEvent(StateEvent var1) throws RemoteException {
            Parcel var2 = Parcel.obtain();
            Parcel var3 = Parcel.obtain();

            label166: {
               Throwable var10000;
               label170: {
                  boolean var10001;
                  try {
                     var2.writeInterfaceToken("com.bda.controller.IControllerListener");
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
                     this.mRemote.transact(3, var2, var3, 0);
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
