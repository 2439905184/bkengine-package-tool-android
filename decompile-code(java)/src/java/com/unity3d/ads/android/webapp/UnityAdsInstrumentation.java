package com.unity3d.ads.android.webapp;

import com.unity3d.ads.android.UnityAds;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.campaign.UnityAdsCampaign;
import com.unity3d.ads.android.data.UnityAdsDevice;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class UnityAdsInstrumentation {
   private static ArrayList _unsentEvents = null;

   public static void gaInstrumentationVideoAbort(UnityAdsCampaign var0, Map var1) {
      JSONObject var2 = mergeJSON(getBasicGAVideoProperties(var0), mapToJSON(var1));
      handleUnsentEvents();
      sendGAInstrumentationEvent("videoAnalyticsEventAbort", var2);
   }

   public static void gaInstrumentationVideoCaching(UnityAdsCampaign var0, Map var1) {
      JSONObject var2 = mergeJSON(getBasicGAVideoProperties(var0), mapToJSON(var1));
      handleUnsentEvents();
      sendGAInstrumentationEvent("videoAnalyticsEventCaching", var2);
   }

   public static void gaInstrumentationVideoError(UnityAdsCampaign var0, Map var1) {
      JSONObject var2 = mergeJSON(getBasicGAVideoProperties(var0), mapToJSON(var1));
      handleUnsentEvents();
      sendGAInstrumentationEvent("videoAnalyticsEventError", var2);
   }

   public static void gaInstrumentationVideoPlay(UnityAdsCampaign var0, Map var1) {
      JSONObject var2 = mergeJSON(getBasicGAVideoProperties(var0), mapToJSON(var1));
      handleUnsentEvents();
      sendGAInstrumentationEvent("videoAnalyticsEventPlay", var2);
   }

   private static JSONObject getBasicGAVideoProperties(UnityAdsCampaign var0) {
      if (var0 != null) {
         String var1 = "stream";
         if (var0.shouldCacheVideo() && UnityAdsUtils.canUseExternalStorage()) {
            var1 = "cached";
         }

         String var2 = UnityAdsDevice.getConnectionType();
         JSONObject var3 = new JSONObject();

         try {
            var3.put("videoPlaybackType", var1);
            var3.put("connectionType", var2);
            var3.put("campaignId", var0.getCampaignId());
            return var3;
         } catch (Exception var5) {
            UnityAdsDeviceLog.error("Could not create instrumentation JSON");
            return null;
         }
      } else {
         return null;
      }
   }

   private static void handleUnsentEvents() {
      sendGAInstrumentationEvents();
   }

   private static JSONObject mapToJSON(Map var0) {
      JSONObject var1;
      if (var0 != null) {
         var1 = new JSONObject();
         Iterator var2 = var0.keySet().iterator();

         while(var2.hasNext()) {
            String var3 = (String)var2.next();
            if (var0.containsKey(var3) && var0.get(var3) != null) {
               try {
                  var1.put(var3, var0.get(var3));
               } catch (Exception var5) {
                  UnityAdsDeviceLog.error("Could not add value: " + var3);
               }
            }
         }
      } else {
         var1 = null;
      }

      return var1;
   }

   private static JSONObject mergeJSON(JSONObject var0, JSONObject var1) {
      if (var0 != null && var1 != null) {
         Iterator var2 = var1.keys();

         while(var2.hasNext()) {
            try {
               String var4 = var2.next().toString();
               var0.put(var4, var1.get(var4));
            } catch (Exception var5) {
               UnityAdsDeviceLog.error("Problems creating JSON");
            }
         }
      } else if (var0 == null) {
         if (var1 != null) {
            return var1;
         }

         return null;
      }

      return var0;
   }

   private static void sendGAInstrumentationEvent(String var0, JSONObject var1) {
      JSONObject var2 = new JSONObject();
      JSONArray var3 = new JSONArray();
      JSONObject var4 = new JSONObject();

      try {
         var2.put("eventType", var0);
         var2.put("data", var1);
         var3.put(var2);
         var4.put("events", var3);
      } catch (Exception var7) {
         UnityAdsDeviceLog.error("Couldn't create final data");
      }

      if (UnityAds.mainview != null && UnityAds.mainview.webview != null && UnityAds.mainview.webview.isWebAppLoaded()) {
         UnityAdsDeviceLog.debug("Sending to webapp");
         UnityAds.mainview.webview.sendNativeEventToWebApp("googleAnalyticsEvent", var4);
      } else {
         UnityAdsDeviceLog.debug("WebApp not initialized, could not send event!");
         if (_unsentEvents == null) {
            _unsentEvents = new ArrayList();
         }

         HashMap var6 = new HashMap();
         var6.put(var0, var1);
         _unsentEvents.add(var6);
      }
   }

   private static void sendGAInstrumentationEvents() {
      JSONArray var0 = new JSONArray();
      JSONObject var1 = new JSONObject();
      if (_unsentEvents != null) {
         Iterator var2 = _unsentEvents.iterator();

         while(var2.hasNext()) {
            Map var3 = (Map)var2.next();
            JSONObject var4 = new JSONObject();
            String var5 = (String)var3.keySet().iterator().next();
            JSONObject var6 = (JSONObject)var3.get(var5);

            try {
               var4.put("eventType", var5);
               var4.put("data", var6);
            } catch (Exception var13) {
               continue;
            }

            var0.put(var4);

            try {
               var1.put("events", var0);
            } catch (Exception var12) {
            }
         }

         if (UnityAds.mainview != null && UnityAds.mainview.webview != null && UnityAds.mainview.webview.isWebAppLoaded()) {
            UnityAdsDeviceLog.debug("Sending to webapp");
            UnityAds.mainview.webview.sendNativeEventToWebApp("googleAnalyticsEvent", var1);
            _unsentEvents.clear();
            _unsentEvents = null;
         }
      }

   }
}
