package tv.ouya.console.api;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.ouya.console.internal.GamerInfoListenerBinder;
import tv.ouya.console.internal.IIapServiceDefinition;
import tv.ouya.console.internal.ProductListListenerBinder;
import tv.ouya.console.internal.StringListenerBinder;

public class OuyaFacade implements ServiceConnection {
   private static final String[] ALL_DATA_COLUMNS = new String[]{"property_name", "value"};
   private static final String EXTRA_DEVICE_ENUM = "DEVICE_ENUM";
   private static final String EXTRA_DEVICE_NAME = "DEVICE_NAME";
   private static final String EXTRA_PACKAGE_NAME = "package_name";
   private static final String EXTRA_SUPPORTED_DEVICE = "SUPPORTED_DEVICE";
   private static final String LOG_TAG = "OUYAF";
   private static final String ODK_INITIALIZED_ACTION = "tv.ouya.ODK_INITIALIZED";
   private static final String ODK_SHUTDOWN_ACTION = "tv.ouya.ODK_SHUTDOWN";
   static final int ODK_VERSION_NUMBER = 62;
   private static final String OUYA_DEVICE_INFO_ACTION = "tv.ouya.DEVICE_INFO_ACTION";
   private static final String[] USER_DATA_COLUMNS = new String[]{"value"};
   private static boolean hasShownNonOuyaMessage = false;
   private static OuyaFacade instance = new OuyaFacade();
   private boolean bindRequestHasBeenMade;
   private Context context;
   private String developerId;
   private OuyaFacade.DeviceHardware mDeviceHardware;
   private List pendingRequests = new ArrayList();
   private IIapServiceDefinition remoteService;

   OuyaFacade() {
      Log.v("OUYAF", "ODK version number: 62");
   }

   public static OuyaFacade getInstance() {
      return instance;
   }

   public static int getOdkVersionNumber() {
      return 62;
   }

   private void runRequest(Runnable var1) {
      this.ensureServiceIsBound();
      if (this.remoteService != null) {
         var1.run();
      } else {
         this.pendingRequests.add(var1);
      }
   }

   @Deprecated
   static void setInstance(OuyaFacade var0) {
      instance = var0;
   }

   @Deprecated
   public boolean bindRequestHasBeenMade() {
      return this.bindRequestHasBeenMade;
   }

   void ensureServiceIsBound() {
      if (this.context == null) {
         Log.e("OUYAF", "Dropping request because connect has been shut down");
      } else if (!this.bindRequestHasBeenMade) {
         Log.d("inAppPurchase", "Binding to IapService");
         Intent var2 = new Intent();
         var2.setClassName("tv.ouya", "tv.ouya.console.service.iap.IapService");
         this.context.bindService(var2, this, 1);
         this.bindRequestHasBeenMade = true;
         return;
      }

   }

   public Map getAllGameData() {
      Cursor var1 = this.context.getContentResolver().query(Uri.parse("content://tv.ouya.userdata/settings/"), ALL_DATA_COLUMNS, (String)null, (String[])null, (String)null, (CancellationSignal)null);
      Object var2 = null;

      while(true) {
         label154: {
            Throwable var3;
            label153: {
               HashMap var5;
               label152: {
                  Throwable var10000;
                  label160: {
                     boolean var10001;
                     try {
                        if (!var1.moveToNext()) {
                           break;
                        }
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break label160;
                     }

                     if (var2 != null) {
                        var5 = (HashMap)var2;
                        break label152;
                     }

                     label146:
                     try {
                        var5 = new HashMap();
                        break label152;
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break label146;
                     }
                  }

                  var3 = var10000;
                  break label153;
               }

               label142:
               try {
                  var5.put(var1.getString(0), var1.getString(1));
                  break label154;
               } finally {
                  break label142;
               }
            }

            var1.close();
            throw var3;
         }

      }

      var1.close();
      return (Map)var2;
   }

   public OuyaFacade.DeviceHardware getDeviceHardware() {
      if (this.mDeviceHardware == null) {
         if (!this.isInitialized()) {
            throw new RuntimeException("Must call OuyaFacade.init first");
         }

         Intent var1 = this.context.registerReceiver((BroadcastReceiver)null, new IntentFilter("tv.ouya.DEVICE_INFO_ACTION"));
         if (var1 == null) {
            return new OuyaFacade.DeviceHardware(false, "unknown", OuyaFacade.DeviceEnum.UNKNOWN);
         }

         boolean var2 = var1.getBooleanExtra("SUPPORTED_DEVICE", false);
         String var3 = var1.getStringExtra("DEVICE_NAME");
         String var4 = var1.getStringExtra("DEVICE_ENUM");
         OuyaFacade.DeviceEnum var5 = OuyaFacade.DeviceEnum.UNKNOWN;

         label20: {
            OuyaFacade.DeviceEnum var8;
            try {
               var8 = OuyaFacade.DeviceEnum.valueOf(var4);
            } catch (Exception var9) {
               Log.w("OUYAF", "Error looking up deviceEnum for: " + var4);
               break label20;
            }

            var5 = var8;
         }

         this.mDeviceHardware = new OuyaFacade.DeviceHardware(var2, var3, var5);
      }

      return this.mDeviceHardware;
   }

   public String getGameData(String var1) {
      String[] var2 = new String[]{var1};
      Cursor var3 = this.context.getContentResolver().query(Uri.parse("content://tv.ouya.userdata/settings/" + var1), USER_DATA_COLUMNS, "property_name = ?", var2, (String)null, (CancellationSignal)null);

      try {
         if (var3.moveToNext()) {
            String var5 = var3.getString(0);
            return var5;
         }
      } finally {
         var3.close();
      }

      return null;
   }

   @Deprecated
   IIapServiceDefinition getRemoteService() {
      return this.remoteService;
   }

   public void init(Context var1, String var2) {
      if (!this.isInitialized()) {
         this.context = var1.getApplicationContext();
         this.developerId = var2;
         Intent var3 = new Intent("tv.ouya.ODK_INITIALIZED");
         var3.putExtra("package_name", var1.getPackageName());
         this.context.sendBroadcast(var3);
      }
   }

   public boolean isInitialized() {
      return this.context != null;
   }

   public boolean isRunningOnOUYAHardware() {
      boolean var1;
      if (!"cardhu".equals(Build.DEVICE) && !"ouya_1_1".equals(Build.DEVICE)) {
         var1 = false;
      } else {
         var1 = true;
      }

      if (!var1 && !hasShownNonOuyaMessage) {
         hasShownNonOuyaMessage = true;
         Log.w("OUYAF", "Not running on Ouya hardware: " + Build.DEVICE);
      }

      return var1;
   }

   public boolean isRunningOnOUYASupportedHardware() {
      return this.getDeviceHardware().isSupported();
   }

   public void onServiceConnected(ComponentName var1, IBinder var2) {
      Log.d("inAppPurchase", "Successfully bound to IapService");
      this.remoteService = IIapServiceDefinition.Stub.asInterface(var2);

      while(this.pendingRequests.size() > 0) {
         ((Runnable)this.pendingRequests.remove(0)).run();
      }

   }

   public void onServiceDisconnected(ComponentName var1) {
      this.remoteService = null;
      this.bindRequestHasBeenMade = false;
   }

   public void putGameData(String var1, String var2) {
      ContentValues var3 = new ContentValues();
      var3.put("value", var2);
      String[] var4 = new String[]{var1};
      if (this.context.getContentResolver().query(Uri.parse("content://tv.ouya.userdata/settings/" + var1), (String[])null, "property_name = ?", var4, (String)null).getCount() > 0) {
         this.context.getContentResolver().update(Uri.parse("content://tv.ouya.userdata/settings/" + var1), var3, "property_name = ?", var4);
      } else {
         this.context.getContentResolver().insert(Uri.parse("content://tv.ouya.userdata/settings/" + var1), var3);
      }
   }

   public void requestGamerInfo(OuyaResponseListener var1) {
      this.runRequest(new OuyaFacade.RequestGamerInfoRunnable(var1));
   }

   public void requestGamerUuid(OuyaResponseListener var1) {
      this.runRequest(new OuyaFacade.RequestGamerUuidRunnable(var1));
   }

   public void requestProductList(List var1, OuyaResponseListener var2) {
      this.runRequest(new OuyaFacade.RequestProductListRunnable(var1, var2));
   }

   public void requestPurchase(Purchasable var1, OuyaResponseListener var2) {
      this.runRequest(new OuyaFacade.RequestPurchaseRunnable(var1, var2));
   }

   public void requestReceipts(OuyaResponseListener var1) {
      this.runRequest(new OuyaFacade.RequestReceiptsRunnable(var1));
   }

   public void setTestMode() {
      this.runRequest(new OuyaFacade.SetTestModeRunnable());
   }

   public void shutdown() {
      if (this.context != null) {
         if (this.remoteService != null) {
            this.context.unbindService(this);
            this.remoteService = null;
            this.bindRequestHasBeenMade = false;
         }

         Intent var1 = new Intent("tv.ouya.ODK_SHUTDOWN");
         var1.putExtra("package_name", this.context.getPackageName());
         this.context.sendBroadcast(var1);
         this.context = null;
      }

   }

   public static enum DeviceEnum {
      MOJO,
      OUYA,
      UNKNOWN;

      static {
         OuyaFacade.DeviceEnum[] var0 = new OuyaFacade.DeviceEnum[]{OUYA, MOJO, UNKNOWN};
      }
   }

   public static class DeviceHardware {
      private OuyaFacade.DeviceEnum mDeviceEnum;
      private String mDeviceName;
      private boolean mIsSupported;

      DeviceHardware(boolean var1, String var2, OuyaFacade.DeviceEnum var3) {
         this.mIsSupported = var1;
         this.mDeviceName = var2;
         this.mDeviceEnum = var3;
      }

      public OuyaFacade.DeviceEnum deviceEnum() {
         return this.mDeviceEnum;
      }

      public String deviceName() {
         return this.mDeviceName;
      }

      public boolean isSupported() {
         return this.mIsSupported;
      }
   }

   private class RequestGamerInfoRunnable extends RequestRunnable {
      public RequestGamerInfoRunnable(OuyaResponseListener var2) {
         super(var2, "fetching gamer info");
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.requestGamerInfo(OuyaFacade.this.developerId, new GamerInfoListenerBinder(this.listener));
      }
   }

   private class RequestGamerUuidRunnable extends RequestRunnable {
      public RequestGamerUuidRunnable(OuyaResponseListener var2) {
         super(var2, "fetching gamer UUID");
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.requestGamerUuid(OuyaFacade.this.developerId, new StringListenerBinder(this.listener));
      }
   }

   private class RequestProductListRunnable extends RequestRunnable {
      private final List purchasables;

      public RequestProductListRunnable(List var2, OuyaResponseListener var3) {
         super(var3, "fetching product list");
         this.purchasables = var2;
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.requestProductListForVersion(OuyaFacade.this.developerId, 5, this.purchasables, new ProductListListenerBinder(this.listener));
      }
   }

   private class RequestPurchaseRunnable extends RequestRunnable {
      private final Purchasable purchasable;

      public RequestPurchaseRunnable(Purchasable var2, OuyaResponseListener var3) {
         super(var3, "purchasing");
         this.purchasable = var2;
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.requestPurchase(OuyaFacade.this.developerId, this.purchasable, new StringListenerBinder(this.listener));
      }
   }

   private class RequestReceiptsRunnable extends RequestRunnable {
      private RequestReceiptsRunnable(OuyaResponseListener var2) {
         super(var2, "fetching receipts");
      }

      // $FF: synthetic method
      RequestReceiptsRunnable(OuyaResponseListener var2, Object var3) {
         this(var2);
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.requestReceipts(OuyaFacade.this.developerId, new StringListenerBinder(this.listener));
      }
   }

   private class SetTestModeRunnable extends RequestRunnable {
      public SetTestModeRunnable() {
         super(new OuyaResponseListener() {
            public void onCancel() {
            }

            public void onFailure(int var1, String var2, Bundle var3) {
            }

            public void onSuccess(Object var1) {
            }
         }, "setting test mode");
      }

      void doRun() throws RemoteException {
         OuyaFacade.this.remoteService.setTestMode();
      }
   }
}
