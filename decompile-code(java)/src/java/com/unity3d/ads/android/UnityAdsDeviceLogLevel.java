package com.unity3d.ads.android;

public class UnityAdsDeviceLogLevel {
   private UnityAdsDeviceLog.UnityAdsLogLevel _level = null;
   private String _logTag = null;
   private String _receivingMethodName = null;

   public UnityAdsDeviceLogLevel(UnityAdsDeviceLog.UnityAdsLogLevel var1, String var2, String var3) {
      this._level = var1;
      this._logTag = var2;
      this._receivingMethodName = var3;
   }

   public UnityAdsDeviceLog.UnityAdsLogLevel getLevel() {
      return this._level;
   }

   public String getLogTag() {
      return this._logTag;
   }

   public String getReceivingMethodName() {
      return this._receivingMethodName;
   }
}
