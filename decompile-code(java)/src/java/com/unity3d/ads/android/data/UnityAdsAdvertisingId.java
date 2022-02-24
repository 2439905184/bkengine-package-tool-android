package com.unity3d.ads.android.data;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class UnityAdsAdvertisingId {
   private static UnityAdsAdvertisingId impl = null;
   private String advertisingIdentifier = null;
   private boolean limitedAdvertisingTracking = false;

   private void fetchAdvertisingIdFallback(Context var1) {
      UnityAdsAdvertisingId.GoogleAdvertisingServiceConnection var2 = new UnityAdsAdvertisingId.GoogleAdvertisingServiceConnection();
      Intent var3 = new Intent("com.google.android.gms.ads.identifier.service.START");
      var3.setPackage("com.google.android.gms");
      if (var1.bindService(var3, var2, 1)) {
         try {
            UnityAdsAdvertisingId.GoogleAdvertisingInfo var7 = UnityAdsAdvertisingId.GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder.Create(var2.getBinder());
            this.advertisingIdentifier = var7.getId();
            this.limitedAdvertisingTracking = var7.getEnabled(true);
            return;
         } catch (Exception var10) {
         } finally {
            var1.unbindService(var2);
         }

      }
   }

   public static String getAdvertisingTrackingId() {
      return getImpl().advertisingIdentifier;
   }

   private static UnityAdsAdvertisingId getImpl() {
      if (impl == null) {
         impl = new UnityAdsAdvertisingId();
      }

      return impl;
   }

   public static boolean getLimitedAdTracking() {
      return getImpl().limitedAdvertisingTracking;
   }

   public static void init(Activity var0) {
      if (!getImpl().fetchAdvertisingId(var0)) {
         getImpl().fetchAdvertisingIdFallback(var0.getApplicationContext());
      }

   }

   public boolean fetchAdvertisingId(Activity var1) {
      try {
         if (Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", new Class[]{Context.class}).invoke((Object)null, new Object[]{var1}).equals(0)) {
            Object var3 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[]{Context.class}).invoke((Object)null, new Object[]{var1});
            Class var4 = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            this.advertisingIdentifier = (String)var4.getMethod("getId", new Class[0]).invoke(var3, new Object[0]);
            this.limitedAdvertisingTracking = (Boolean)var4.getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(var3, new Object[0]);
            return true;
         } else {
            UnityAdsDeviceLog.debug("Google Play Services not integrated, using fallback");
            return false;
         }
      } catch (Exception var5) {
         UnityAdsDeviceLog.debug("Exception while trying to access Google Play Services " + var5);
         return false;
      }
   }

   private interface GoogleAdvertisingInfo extends IInterface {
      boolean getEnabled(boolean var1) throws RemoteException;

      String getId() throws RemoteException;

      public abstract static class GoogleAdvertisingInfoBinder extends Binder implements UnityAdsAdvertisingId.GoogleAdvertisingInfo {
         public static UnityAdsAdvertisingId.GoogleAdvertisingInfo Create(IBinder var0) {
            if (var0 == null) {
               return null;
            } else {
               IInterface var1 = var0.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
               return (UnityAdsAdvertisingId.GoogleAdvertisingInfo)(var1 != null && var1 instanceof UnityAdsAdvertisingId.GoogleAdvertisingInfo ? (UnityAdsAdvertisingId.GoogleAdvertisingInfo)var1 : new UnityAdsAdvertisingId.GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder.GoogleAdvertisingInfoImplementation(var0));
            }
         }

         public boolean onTransact(int var1, Parcel var2, Parcel var3, int var4) throws RemoteException {
            switch(var1) {
            case 1:
               var2.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
               String var8 = this.getId();
               var3.writeNoException();
               var3.writeString(var8);
               return true;
            case 2:
               var2.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
               boolean var5;
               if (var2.readInt() != 0) {
                  var5 = true;
               } else {
                  var5 = false;
               }

               boolean var6 = this.getEnabled(var5);
               var3.writeNoException();
               byte var7 = 0;
               if (var6) {
                  var7 = 1;
               }

               var3.writeInt(var7);
               return true;
            default:
               return super.onTransact(var1, var2, var3, var4);
            }
         }

         private static class GoogleAdvertisingInfoImplementation implements UnityAdsAdvertisingId.GoogleAdvertisingInfo {
            private IBinder _binder;

            GoogleAdvertisingInfoImplementation(IBinder var1) {
               this._binder = var1;
            }

            public IBinder asBinder() {
               return this._binder;
            }

            public boolean getEnabled(boolean var1) throws RemoteException {
               byte var2 = 1;
               Parcel var3 = Parcel.obtain();
               Parcel var4 = Parcel.obtain();

               int var8;
               label89: {
                  Throwable var10000;
                  label93: {
                     boolean var10001;
                     try {
                        var3.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                     } catch (Throwable var14) {
                        var10000 = var14;
                        var10001 = false;
                        break label93;
                     }

                     byte var6;
                     if (var1) {
                        var6 = var2;
                     } else {
                        var6 = 0;
                     }

                     label84:
                     try {
                        var3.writeInt(var6);
                        this._binder.transact(2, var3, var4, 0);
                        var4.readException();
                        var8 = var4.readInt();
                        break label89;
                     } catch (Throwable var13) {
                        var10000 = var13;
                        var10001 = false;
                        break label84;
                     }
                  }

                  Throwable var5 = var10000;
                  var4.recycle();
                  var3.recycle();
                  throw var5;
               }

               if (var8 == 0) {
                  var2 = 0;
               }

               var4.recycle();
               var3.recycle();
               return (boolean)var2;
            }

            public String getId() throws RemoteException {
               Parcel var1 = Parcel.obtain();
               Parcel var2 = Parcel.obtain();

               String var5;
               try {
                  var1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                  this._binder.transact(1, var1, var2, 0);
                  var2.readException();
                  var5 = var2.readString();
               } finally {
                  var2.recycle();
                  var1.recycle();
               }

               return var5;
            }
         }
      }
   }

   private class GoogleAdvertisingServiceConnection implements ServiceConnection {
      private final BlockingQueue _binderQueue;
      boolean _consumed;

      private GoogleAdvertisingServiceConnection() {
         this._consumed = false;
         this._binderQueue = new LinkedBlockingQueue();
      }

      // $FF: synthetic method
      GoogleAdvertisingServiceConnection(Object var2) {
         this();
      }

      public IBinder getBinder() throws InterruptedException {
         if (this._consumed) {
            throw new IllegalStateException();
         } else {
            this._consumed = true;
            return (IBinder)this._binderQueue.take();
         }
      }

      public void onServiceConnected(ComponentName var1, IBinder var2) {
         try {
            this._binderQueue.put(var2);
         } catch (InterruptedException var4) {
         }
      }

      public void onServiceDisconnected(ComponentName var1) {
      }
   }
}
