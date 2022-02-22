package com.unity3d.ads.android.webapp;

import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import org.json.JSONObject;

public class UnityAdsWebBridge {
   private IUnityAdsWebBridgeListener _listener = null;

   public UnityAdsWebBridge(IUnityAdsWebBridgeListener var1) {
      this._listener = var1;
   }

   private UnityAdsWebBridge.UnityAdsWebEvent getEventType(String var1) {
      UnityAdsWebBridge.UnityAdsWebEvent[] var2 = UnityAdsWebBridge.UnityAdsWebEvent.values();
      int var3 = var2.length;

      for(int var4 = 0; var4 < var3; ++var4) {
         UnityAdsWebBridge.UnityAdsWebEvent var5 = var2[var4];
         if (var5.toString().equals(var1)) {
            return var5;
         }
      }

      return null;
   }

   @JavascriptInterface
   public boolean handleWebEvent(String var1, String var2) {
      UnityAdsDeviceLog.debug(var1 + ", " + var2);
      if (this._listener != null && var2 != null) {
         JSONObject var3 = null;

         JSONObject var6;
         label58: {
            JSONObject var4;
            JSONObject var13;
            label57: {
               Exception var5;
               label56: {
                  try {
                     var4 = new JSONObject(var2);
                  } catch (Exception var17) {
                     var5 = var17;
                     break label56;
                  }

                  try {
                     var13 = var4.getJSONObject("data");
                     break label57;
                  } catch (Exception var16) {
                     var5 = var16;
                     var3 = var4;
                  }
               }

               UnityAdsDeviceLog.error("Error while parsing parameters: " + var5.getMessage());
               var6 = null;
               break label58;
            }

            var6 = var13;
            var3 = var4;
         }

         if (var3 != null && var1 != null) {
            UnityAdsWebBridge.UnityAdsWebEvent var7 = this.getEventType(var1);
            if (var7 != null) {
               switch(var7) {
               case PlayVideo:
                  this._listener.onPlayVideo(var6);
                  break;
               case PauseVideo:
                  this._listener.onPauseVideo(var6);
                  break;
               case CloseView:
                  this._listener.onCloseAdsView(var6);
                  break;
               case LoadComplete:
                  this._listener.onWebAppLoadComplete(var6);
                  break;
               case InitComplete:
                  this._listener.onWebAppInitComplete(var6);
                  break;
               case Orientation:
                  this._listener.onOrientationRequest(var6);
                  break;
               case PlayStore:
                  this._listener.onOpenPlayStore(var6);
                  break;
               case NavigateTo:
                  if (var6.has("clickUrl")) {
                     String var9;
                     try {
                        var9 = var6.getString("clickUrl");
                     } catch (Exception var15) {
                        UnityAdsDeviceLog.error("Error fetching clickUrl");
                        return false;
                     }

                     if (var9 != null) {
                        try {
                           Intent var10 = new Intent("android.intent.action.VIEW");
                           var10.setData(Uri.parse(var9));
                           UnityAdsProperties.getCurrentActivity().startActivity(var10);
                        } catch (Exception var14) {
                           UnityAdsDeviceLog.error("Could not start activity for opening URL: " + var9 + ", maybe malformed URL?");
                        }
                     }
                  }
               }

               return true;
            }
         }
      }

      return false;
   }

   private static enum UnityAdsWebEvent {
      CloseView,
      InitComplete,
      LoadComplete,
      NavigateTo,
      Orientation,
      PauseVideo,
      PlayStore,
      PlayVideo;

      static {
         UnityAdsWebBridge.UnityAdsWebEvent[] var0 = new UnityAdsWebBridge.UnityAdsWebEvent[]{PlayVideo, PauseVideo, CloseView, LoadComplete, InitComplete, Orientation, PlayStore, NavigateTo};
      }

      public String toString() {
         switch(this) {
         case PlayVideo:
            return "playVideo";
         case PauseVideo:
            return "pauseVideo";
         case CloseView:
            return "close";
         case LoadComplete:
            return "loadComplete";
         case InitComplete:
            return "initComplete";
         case Orientation:
            return "orientation";
         case PlayStore:
            return "appStore";
         case NavigateTo:
            return "navigateTo";
         default:
            return null;
         }
      }
   }
}
