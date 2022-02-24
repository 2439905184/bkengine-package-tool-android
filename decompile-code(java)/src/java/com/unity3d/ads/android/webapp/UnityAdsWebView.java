package com.unity3d.ads.android.webapp;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebStorage.QuotaUpdater;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.data.UnityAdsDevice;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import java.io.File;
import java.lang.reflect.Method;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

@TargetApi(9)
public class UnityAdsWebView extends WebView {
   private String _currentWebView;
   private IUnityAdsWebViewListener _listener = null;
   private String _url = null;
   private boolean _webAppLoadComplete;
   private Condition _webAppLoadCondition;
   private Lock _webAppLoadLock = new ReentrantLock();
   private boolean _webAppLoaded = false;
   private UnityAdsWebBridge _webBridge;

   public UnityAdsWebView(Activity var1, IUnityAdsWebViewListener var2, UnityAdsWebBridge var3) {
      super(var1);
      this._webAppLoadCondition = this._webAppLoadLock.newCondition();
      this._webAppLoadComplete = false;
      this._webBridge = null;
      this._currentWebView = "start";
      UnityAdsDeviceLog.debug("Loading WebView from URL: " + UnityAdsProperties.WEBVIEW_BASE_URL);
      this.init(var1, UnityAdsProperties.WEBVIEW_BASE_URL, var2, var3);
   }

   public UnityAdsWebView(Activity var1, String var2, IUnityAdsWebViewListener var3, UnityAdsWebBridge var4) {
      super(var1);
      this._webAppLoadCondition = this._webAppLoadLock.newCondition();
      this._webAppLoadComplete = false;
      this._webBridge = null;
      this._currentWebView = "start";
      this.init(var1, var2, var3, var4);
   }

   public UnityAdsWebView(Context var1) {
      super(var1);
      this._webAppLoadCondition = this._webAppLoadLock.newCondition();
      this._webAppLoadComplete = false;
      this._webBridge = null;
      this._currentWebView = "start";
   }

   public UnityAdsWebView(Context var1, AttributeSet var2) {
      super(var1, var2);
      this._webAppLoadCondition = this._webAppLoadLock.newCondition();
      this._webAppLoadComplete = false;
      this._webBridge = null;
      this._currentWebView = "start";
   }

   public UnityAdsWebView(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
      this._webAppLoadCondition = this._webAppLoadLock.newCondition();
      this._webAppLoadComplete = false;
      this._webBridge = null;
      this._currentWebView = "start";
   }

   private void init(Activity var1, String var2, IUnityAdsWebViewListener var3, UnityAdsWebBridge var4) {
      this._listener = var3;
      this._url = var2;
      this._webBridge = var4;
      this.setupUnityAdsView();
      this.loadUrl(this._url);
      if (VERSION.SDK_INT > 8) {
         this.setOnLongClickListener(new OnLongClickListener() {
            public boolean onLongClick(View var1) {
               return true;
            }
         });
         this.setLongClickable(false);
      }

   }

   @SuppressLint({"SetJavaScriptEnabled"})
   private void setupUnityAdsView() {
      this.getSettings().setJavaScriptEnabled(true);
      if (this._url != null && this._url.indexOf("_raw.html") != -1) {
         this.getSettings().setCacheMode(2);
         UnityAdsDeviceLog.debug("LOAD_NO_CACHE");
      } else if (VERSION.SDK_INT < 17) {
         this.getSettings().setCacheMode(0);
      } else {
         this.getSettings().setCacheMode(-1);
      }

      Context var1 = this.getContext();
      String var2 = null;
      if (var1 != null) {
         File var4 = this.getContext().getCacheDir();
         var2 = null;
         if (var4 != null) {
            var2 = this.getContext().getCacheDir().toString();
         }
      }

      this.getSettings().setSupportZoom(false);
      this.getSettings().setBuiltInZoomControls(false);
      this.getSettings().setLightTouchEnabled(false);
      this.getSettings().setRenderPriority(RenderPriority.HIGH);
      this.getSettings().setSupportMultipleWindows(false);
      this.getSettings().setAllowFileAccess(false);
      this.setHorizontalScrollBarEnabled(false);
      this.setVerticalScrollBarEnabled(false);
      this.setClickable(true);
      this.setFocusable(true);
      this.setFocusableInTouchMode(true);
      this.setInitialScale(0);
      this.setBackgroundColor(-16777216);
      this.setBackgroundDrawable((Drawable)null);
      this.setBackgroundResource(0);
      this.setWebViewClient(new UnityAdsWebView.UnityAdsViewClient());
      this.setWebChromeClient(new UnityAdsWebView.UnityAdsViewChromeClient());
      if (var2 != null) {
         boolean var3 = true;
         if (VERSION.SDK_INT <= 7) {
            var3 = false;
         }

         this.getSettings().setAppCacheEnabled(var3);
         this.getSettings().setDomStorageEnabled(true);
         this.getSettings().setAppCacheMaxSize(10485760L);
         this.getSettings().setAppCachePath(var2);
      }

      UnityAdsDeviceLog.debug("Adding javascript interface");
      this.addJavascriptInterface(this._webBridge, "unityadsnativebridge");
   }

   public void clearWebView() {
      this._webAppLoaded = false;
      this._listener = null;
      this.setWebViewClient((WebViewClient)null);
      this.setWebChromeClient((WebChromeClient)null);
   }

   public String getWebViewCurrentView() {
      return this._currentWebView;
   }

   public void initWebApp(JSONObject var1) {
      if (this.isWebAppLoaded()) {
         JSONObject var2 = new JSONObject();

         label80: {
            label85: {
               boolean var10001;
               String var6;
               try {
                  var2.put("campaignData", var1);
                  var2.put("platform", "android");
                  var6 = UnityAdsDevice.getAdvertisingTrackingId();
               } catch (Exception var27) {
                  var10001 = false;
                  break label85;
               }

               if (var6 != null) {
                  byte var7;
                  label67: {
                     label66: {
                        try {
                           if (UnityAdsDevice.isLimitAdTrackingEnabled()) {
                              break label66;
                           }
                        } catch (Exception var25) {
                           var10001 = false;
                           break label85;
                        }

                        var7 = 1;
                        break label67;
                     }

                     var7 = 0;
                  }

                  try {
                     var2.put("trackingEnabled", var7);
                     var2.put("advertisingTrackingId", UnityAdsUtils.Md5(var6).toLowerCase());
                     var2.put("rawAdvertisingTrackingId", var6);
                  } catch (Exception var24) {
                     var10001 = false;
                     break label85;
                  }
               } else {
                  try {
                     var2.put("deviceId", UnityAdsDevice.getAndroidId(true));
                     if (!"unknown".equals(UnityAdsDevice.getAndroidId(false))) {
                        var2.put("androidId", UnityAdsDevice.getAndroidId(true));
                        var2.put("rawAndroidId", UnityAdsDevice.getAndroidId(false));
                     }
                  } catch (Exception var23) {
                     var10001 = false;
                     break label85;
                  }

                  try {
                     if (!"unknown".equals(UnityAdsDevice.getAndroidSerial())) {
                        var2.put("serialId", UnityAdsDevice.getAndroidSerial());
                     }
                  } catch (Exception var26) {
                     var10001 = false;
                     break label85;
                  }

                  try {
                     var2.put("macAddress", UnityAdsDevice.getMacAddress());
                  } catch (Exception var22) {
                     var10001 = false;
                     break label85;
                  }
               }

               try {
                  var2.put("sdkVersion", "1401");
                  var2.put("gameId", UnityAdsProperties.UNITY_ADS_GAME_ID);
                  var2.put("screenDensity", UnityAdsDevice.getScreenDensity());
                  var2.put("screenSize", UnityAdsDevice.getScreenSize());
                  var2.put("zones", UnityAdsWebData.getZoneManager().getZonesJson());
                  if (UnityAdsProperties.UNITY_VERSION != null && UnityAdsProperties.UNITY_VERSION.length() > 0) {
                     var2.put("unityVersion", UnityAdsProperties.UNITY_VERSION);
                  }
               } catch (Exception var21) {
                  var10001 = false;
                  break label85;
               }

               try {
                  var2.put("softwareVersion", UnityAdsDevice.getSoftwareVersion());
                  var2.put("deviceType", UnityAdsDevice.getDeviceType());
                  break label80;
               } catch (Exception var20) {
                  var10001 = false;
               }
            }

            UnityAdsDeviceLog.debug("Error creating webview init params");
            return;
         }

         Object[] var18 = new Object[]{"javascript:unityads.", "init", var2.toString()};
         String var19 = String.format("%s%s(%s);", var18);
         UnityAdsDeviceLog.debug("Initializing WebView with JS call: " + var19);
         UnityAdsUtils.runOnUiThread(new UnityAdsWebView.UnityAdsJavascriptRunner(var19, this));
      }

   }

   public boolean isWebAppLoadComplete() {
      return this._webAppLoadComplete;
   }

   public boolean isWebAppLoaded() {
      return this._webAppLoaded;
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      switch(var1) {
      case 4:
         UnityAdsDeviceLog.entered();
         if (this._listener != null) {
            this._listener.onBackButtonClicked(this);
         }

         return true;
      default:
         return false;
      }
   }

   public void sendNativeEventToWebApp(String var1, JSONObject var2) {
      if (this.isWebAppLoaded()) {
         String var3 = "{}";
         if (var2 != null) {
            var3 = var2.toString();
         }

         String var4 = String.format("%s%s(\"%s\", %s);", new Object[]{"javascript:unityads.", "handleNativeEvent", var1, var3});
         UnityAdsDeviceLog.debug("Send native event to WebApp: " + var4);
         UnityAdsUtils.runOnUiThread(new UnityAdsWebView.UnityAdsJavascriptRunner(var4, this));
      }

   }

   public void setRenderMode(int var1) {
      try {
         Class[] var3 = new Class[]{Integer.TYPE, Paint.class};
         Method var4 = View.class.getMethod("setLayerType", var3);
         Object[] var5 = new Object[]{var1, null};
         var4.invoke(this, var5);
      } catch (Exception var6) {
         UnityAdsDeviceLog.error("Could not invoke setLayerType");
      }
   }

   public void setWebAppLoadComplete() {
      this._webAppLoadLock.lock();

      try {
         this._webAppLoadComplete = true;
         this._webAppLoadCondition.signalAll();
      } finally {
         this._webAppLoadLock.unlock();
      }

   }

   public void setWebViewCurrentView(String var1) {
      this.setWebViewCurrentView(var1, (JSONObject)null);
   }

   public void setWebViewCurrentView(String var1, JSONObject var2) {
      if (this.isWebAppLoaded()) {
         String var3 = "{}";
         if (var2 != null) {
            var3 = var2.toString();
         }

         String var4 = String.format("%s%s(\"%s\", %s);", new Object[]{"javascript:unityads.", "setView", var1, var3});
         this._currentWebView = var1;
         UnityAdsUtils.runOnUiThread(new UnityAdsWebView.UnityAdsJavascriptRunner(var4, this));
         UnityAdsDeviceLog.debug("Send change view to WebApp: " + var4);
         if (var2 != null && UnityAdsProperties.getBaseActivity() != null) {
            String var5 = "test";

            label32: {
               String var7;
               try {
                  var7 = var2.getString("action");
               } catch (Exception var8) {
                  break label32;
               }

               var5 = var7;
            }

            UnityAdsDeviceLog.debug("dataHasApiActionKey=" + var2.has("action"));
            UnityAdsDeviceLog.debug("actionEqualsWebViewApiOpen=" + var5.equals("open"));
            UnityAdsDeviceLog.debug("isDebuggable=" + UnityAdsUtils.isDebuggable(UnityAdsProperties.getBaseActivity()));
            UnityAdsDeviceLog.debug("runWebViewTests=" + UnityAdsProperties.RUN_WEBVIEW_TESTS);
            UnityAdsDeviceLog.debug("testJavaScriptContents=" + UnityAdsProperties.TEST_JAVASCRIPT);
            if (var2.has("action") && var5 != null && var5.equals("open") && UnityAdsUtils.isDebuggable(UnityAdsProperties.getBaseActivity()) && UnityAdsProperties.RUN_WEBVIEW_TESTS && UnityAdsProperties.TEST_JAVASCRIPT != null) {
               UnityAdsDeviceLog.debug("Running test-javascript: " + UnityAdsProperties.TEST_JAVASCRIPT);
               UnityAdsUtils.runOnUiThread(new UnityAdsWebView.UnityAdsJavascriptRunner(UnityAdsProperties.TEST_JAVASCRIPT, this));
               UnityAdsProperties.RUN_WEBVIEW_TESTS = false;
            }
         }
      }

   }

   public void waitForWebAppLoadComplete() {
      this._webAppLoadLock.lock();

      try {
         this._webAppLoadCondition.await();
         return;
      } catch (InterruptedException var5) {
      } finally {
         this._webAppLoadLock.unlock();
      }

   }

   private class UnityAdsJavascriptRunner implements Runnable {
      private String _jsString = null;
      private WebView _webView = null;

      public UnityAdsJavascriptRunner(String var2, WebView var3) {
         this._jsString = var2;
         this._webView = var3;
      }

      public void run() {
         if (this._jsString != null) {
            label35: {
               boolean var10001;
               int var2;
               try {
                  var2 = VERSION.SDK_INT;
               } catch (Exception var10) {
                  var10001 = false;
                  break label35;
               }

               if (var2 >= 19) {
                  try {
                     Method var4 = WebView.class.getMethod("evaluateJavascript", new Class[]{String.class, ValueCallback.class});
                     WebView var5 = this._webView;
                     Object[] var6 = new Object[]{this._jsString, null};
                     var4.invoke(var5, var6);
                     return;
                  } catch (Exception var8) {
                     try {
                        UnityAdsDeviceLog.error("Could not invoke evaluateJavascript");
                        return;
                     } catch (Exception var7) {
                        var10001 = false;
                     }
                  }
               } else {
                  try {
                     UnityAdsWebView.this.loadUrl(this._jsString);
                     return;
                  } catch (Exception var9) {
                     var10001 = false;
                  }
               }
            }

            UnityAdsDeviceLog.error("Error while processing JavaScriptString!");
         } else {
            UnityAdsDeviceLog.error("Could not process JavaScript, the string is NULL");
         }
      }
   }

   private class UnityAdsViewChromeClient extends WebChromeClient {
      private UnityAdsViewChromeClient() {
      }

      // $FF: synthetic method
      UnityAdsViewChromeClient(Object var2) {
         this();
      }

      public void onConsoleMessage(String var1, int var2, String var3) {
         String var4 = var3;

         File var6;
         label19: {
            File var5;
            try {
               var5 = new File(var3);
            } catch (Exception var8) {
               UnityAdsDeviceLog.error("Could not handle sourceId: " + var8.getMessage());
               var6 = null;
               break label19;
            }

            var6 = var5;
         }

         if (var6 != null && var6.getName() != null) {
            var4 = var6.getName();
         }

         UnityAdsDeviceLog.debug("JavaScript (sourceId=" + var4 + ", line=" + var2 + "): " + var1);
      }

      public void onReachedMaxAppCacheSize(long var1, long var3, QuotaUpdater var5) {
         var5.updateQuota(2L * var1);
      }
   }

   private class UnityAdsViewClient extends WebViewClient {
      private UnityAdsViewClient() {
      }

      // $FF: synthetic method
      UnityAdsViewClient(Object var2) {
         this();
      }

      public void onLoadResource(WebView var1, String var2) {
         super.onLoadResource(var1, var2);
      }

      public void onPageFinished(WebView var1, String var2) {
         super.onPageFinished(var1, var2);
         UnityAdsDeviceLog.debug("Finished url: " + var2);
         if (UnityAdsWebView.this._listener != null && !UnityAdsWebView.this._webAppLoaded) {
            UnityAdsWebView.this._webAppLoaded = true;
            UnityAdsWebView.this._listener.onWebAppLoaded();
         }

      }

      public void onReceivedError(WebView var1, int var2, String var3, String var4) {
         UnityAdsDeviceLog.error(var2 + " (" + var4 + ") " + var3);
         super.onReceivedError(var1, var2, var3, var4);
      }

      public boolean shouldOverrideUrlLoading(WebView var1, String var2) {
         UnityAdsDeviceLog.debug("Trying to load url: " + var2);
         return false;
      }
   }
}
