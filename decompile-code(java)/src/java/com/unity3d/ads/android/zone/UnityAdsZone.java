package com.unity3d.ads.android.zone;

import com.unity3d.ads.android.UnityAdsDeviceLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UnityAdsZone {
   private ArrayList _allowClientOverrides = new ArrayList();
   private boolean _default = false;
   private String _gamerSid = null;
   private JSONObject _initialOptions = null;
   private JSONObject _options = null;
   private String _zoneId = null;
   private String _zoneName = null;

   public UnityAdsZone(JSONObject var1) throws JSONException {
      this._initialOptions = new JSONObject(var1.toString());
      this._options = var1;
      this._zoneId = var1.getString("id");
      this._zoneName = var1.getString("name");
      this._default = var1.optBoolean("default", true);
      JSONArray var2 = var1.optJSONArray("allowClientOverrides");
      if (var2 != null) {
         for(int var3 = 0; var3 < var2.length(); ++var3) {
            this._allowClientOverrides.add(var2.getString(var3));
         }
      }

   }

   public long allowVideoSkipInSeconds() {
      return this._options.optLong("allowSkipVideoInSeconds", 0L);
   }

   public boolean allowsOverride(String var1) {
      return this._allowClientOverrides.contains(var1);
   }

   public long disableBackButtonForSeconds() {
      return this._options.optLong("disableBackButtonForSeconds", 0L);
   }

   public String getGamerSid() {
      return this._gamerSid;
   }

   public String getZoneId() {
      return this._zoneId;
   }

   public String getZoneName() {
      return this._zoneName;
   }

   public JSONObject getZoneOptions() {
      return this._options;
   }

   public boolean isDefault() {
      return this._default;
   }

   public boolean isIncentivized() {
      return false;
   }

   public void mergeOptions(Map var1) {
      try {
         this._options = new JSONObject(this._initialOptions.toString());
         this.setGamerSid((String)null);
      } catch (JSONException var7) {
      }

      if (var1 != null) {
         Iterator var3 = var1.entrySet().iterator();

         while(var3.hasNext()) {
            Entry var4 = (Entry)var3.next();
            if (this.allowsOverride((String)var4.getKey())) {
               try {
                  this._options.put((String)var4.getKey(), var4.getValue());
               } catch (JSONException var6) {
                  UnityAdsDeviceLog.error("Unable to set JSON value");
               }
            }
         }

         if (var1.containsKey("sid")) {
            this.setGamerSid((String)var1.get("sid"));
         }
      }

   }

   public boolean muteVideoSounds() {
      return this._options.optBoolean("muteVideoSounds", false);
   }

   public boolean noOfferScreen() {
      return this._options.optBoolean("noOfferScreen", true);
   }

   public boolean openAnimated() {
      return this._options.optBoolean("openAnimated", false);
   }

   public void setGamerSid(String var1) {
      this._gamerSid = var1;
   }

   public boolean useDeviceOrientationForVideo() {
      return this._options.optBoolean("useDeviceOrientationForVideo", false);
   }
}
