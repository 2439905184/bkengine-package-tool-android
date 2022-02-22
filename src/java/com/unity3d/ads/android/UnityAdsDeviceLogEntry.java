package com.unity3d.ads.android;

public class UnityAdsDeviceLogEntry {
   private UnityAdsDeviceLogLevel _logLevel = null;
   private String _originalMessage = null;
   private StackTraceElement _stackTraceElement = null;

   public UnityAdsDeviceLogEntry(UnityAdsDeviceLogLevel var1, String var2, StackTraceElement var3) {
      this._logLevel = var1;
      this._originalMessage = var2;
      this._stackTraceElement = var3;
   }

   public UnityAdsDeviceLogLevel getLogLevel() {
      return this._logLevel;
   }

   public String getOriginalMessage() {
      return this._originalMessage;
   }

   public String getParsedMessage() {
      String var1 = this._originalMessage;
      String var2 = "UnknownClass";
      String var3 = "unknownMethod";
      int var4 = -1;
      if (this._stackTraceElement != null) {
         var2 = this._stackTraceElement.getClassName();
         var3 = this._stackTraceElement.getMethodName();
         var4 = this._stackTraceElement.getLineNumber();
      }

      if (var1 != null && var1.length() > 0) {
         var1 = " :: " + var1;
      }

      if (var1 == null) {
         var1 = "";
      }

      String var5 = " (line:" + var4 + ")";
      return var2 + "." + var3 + "()" + var5 + var1;
   }
}
