package tv.ouya.console.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONException;
import org.json.JSONObject;

public class CreditCardInfo implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public CreditCardInfo createFromParcel(Parcel var1) {
         byte var2 = 1;
         double var3 = var1.readDouble();
         String var5 = var1.readString();
         String var6 = var1.readString();
         String var7 = var1.readString();
         String var8 = var1.readString();
         if (var1.readInt() != var2) {
            var2 = 0;
         }

         return new CreditCardInfo(var3, var5, var6, var7, var8, (boolean)var2);
      }

      public CreditCardInfo[] newArray(int var1) {
         return new CreditCardInfo[var1];
      }
   };
   private double balance;
   private String currencyCode;
   private String expiresAt;
   private boolean infoRequired;
   private String lastFourDigits;
   private String provider;

   public CreditCardInfo() {
   }

   public CreditCardInfo(double var1, String var3, String var4, String var5, String var6, boolean var7) {
      this.balance = var1;
      this.lastFourDigits = var3;
      this.provider = var4;
      this.expiresAt = var5;
      this.currencyCode = var6;
      this.infoRequired = var7;
   }

   public CreditCardInfo(JSONObject var1) throws JSONException {
      this.readFromJSONObject(var1);
   }

   private void readFromJSONObject(JSONObject var1) throws JSONException {
      this.balance = var1.optDouble("balance");
      this.currencyCode = var1.optString("currency");
      this.infoRequired = var1.getBoolean("requiresPaymentMethod");
      if (var1.isNull("credit_card")) {
         this.expiresAt = null;
         this.provider = null;
         this.lastFourDigits = null;
      } else {
         JSONObject var2 = var1.getJSONObject("credit_card");
         this.lastFourDigits = var2.optString("last_four");
         this.provider = var2.optString("provider");
         this.expiresAt = var2.optString("expires_at");
      }
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof CreditCardInfo)) {
            return false;
         }

         CreditCardInfo var2 = (CreditCardInfo)var1;
         if (this.balance != var2.balance) {
            return false;
         }

         if (!this.lastFourDigits.equals(var2.lastFourDigits)) {
            return false;
         }

         if (!this.provider.equals(var2.provider)) {
            return false;
         }

         if (!this.expiresAt.equals(var2.expiresAt)) {
            return false;
         }

         if (!this.currencyCode.equals(var2.currencyCode)) {
            return false;
         }

         if (this.infoRequired != var2.infoRequired) {
            return false;
         }
      }

      return true;
   }

   public double getBalance() {
      return this.balance;
   }

   public String getCurrencyCode() {
      return this.currencyCode;
   }

   public String getExpiresAt() {
      return this.expiresAt;
   }

   public String getLastFourDigits() {
      return this.lastFourDigits;
   }

   public String getProvider() {
      return this.provider;
   }

   public int hashCode() {
      int var1 = Double.valueOf(this.balance).hashCode();
      if (this.lastFourDigits != null) {
         var1 = var1 * 31 + this.lastFourDigits.hashCode();
      }

      if (this.provider != null) {
         var1 = var1 * 31 + this.provider.hashCode();
      }

      if (this.expiresAt != null) {
         var1 = var1 * 31 + this.expiresAt.hashCode();
      }

      if (this.currencyCode != null) {
         var1 = var1 * 31 + this.currencyCode.hashCode();
      }

      return var1;
   }

   public boolean isInfoRequired() {
      return this.infoRequired;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeDouble(this.balance);
      var1.writeString(this.lastFourDigits);
      var1.writeString(this.provider);
      var1.writeString(this.expiresAt);
      var1.writeString(this.currencyCode);
      byte var3;
      if (this.infoRequired) {
         var3 = 1;
      } else {
         var3 = 0;
      }

      var1.writeInt(var3);
   }
}
