package com.unity3d.ads.android.zone;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UnityAdsZoneManager {
   private UnityAdsZone _currentZone = null;
   private UnityAdsZone _defaultZone = null;
   private Map _zones = null;

   public UnityAdsZoneManager(JSONArray var1) {
      this._zones = new HashMap();

      for(int var2 = 0; var2 < var1.length(); ++var2) {
         label76: {
            boolean var10001;
            JSONObject var4;
            Object var5;
            label77: {
               try {
                  var4 = var1.getJSONObject(var2);
                  if (var4.getBoolean("incentivised")) {
                     var5 = new UnityAdsIncentivizedZone(var4);
                     break label77;
                  }
               } catch (JSONException var11) {
                  var10001 = false;
                  break label76;
               }

               try {
                  var5 = new UnityAdsZone(var4);
               } catch (JSONException var10) {
                  var10001 = false;
                  break label76;
               }
            }

            label78: {
               try {
                  if (!((UnityAdsZone)var5).isDefault()) {
                     break label78;
                  }

                  if (((UnityAdsZone)var5).isIncentivized()) {
                     this._defaultZone = new UnityAdsIncentivizedZone(var4);
                     break label78;
                  }
               } catch (JSONException var9) {
                  var10001 = false;
                  break label76;
               }

               try {
                  this._defaultZone = new UnityAdsZone(var4);
               } catch (JSONException var8) {
                  var10001 = false;
                  break label76;
               }
            }

            try {
               if (this._currentZone == null && ((UnityAdsZone)var5).isDefault()) {
                  this._currentZone = (UnityAdsZone)var5;
               }
            } catch (JSONException var7) {
               var10001 = false;
               break label76;
            }

            try {
               this._zones.put(((UnityAdsZone)var5).getZoneId(), var5);
               continue;
            } catch (JSONException var6) {
               var10001 = false;
            }
         }

         UnityAdsDeviceLog.error("Failed to parse zone");
      }

   }

   public void clear() {
      this._currentZone = null;
      this._zones.clear();
      this._zones = null;
   }

   public UnityAdsZone getCurrentZone() {
      return this._currentZone;
   }

   public UnityAdsZone getZone(String var1) {
      return this._zones.containsKey(var1) ? (UnityAdsZone)this._zones.get(var1) : null;
   }

   public JSONArray getZonesJson() {
      JSONArray var1 = new JSONArray();
      Iterator var2 = this._zones.values().iterator();

      while(var2.hasNext()) {
         var1.put(((UnityAdsZone)var2.next()).getZoneOptions());
      }

      return var1;
   }

   public Map getZonesMap() {
      return this._zones;
   }

   public boolean setCurrentZone(String var1) {
      if (this._zones.containsKey(var1)) {
         this._currentZone = (UnityAdsZone)this._zones.get(var1);
         return true;
      } else {
         this._currentZone = null;
         return false;
      }
   }

   public int zoneCount() {
      return this._zones != null ? this._zones.size() : 0;
   }
}
