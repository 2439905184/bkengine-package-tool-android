package tv.ouya.console.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Currency;
import org.json.JSONException;
import org.json.JSONObject;

public class Product implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public Product createFromParcel(Parcel var1) {
         return new Product(var1.readString(), var1.readString(), var1.readInt(), var1.readDouble(), var1.readString(), var1.readDouble(), var1.readDouble(), var1.readString(), var1.readString());
      }

      public Product[] newArray(int var1) {
         return new Product[var1];
      }
   };
   public static final int CURRENT_PRODUCT_VERSION = 5;
   public static final int INITIAL_PRODUCT_VERSION = 1;
   private String currencyCode;
   private String description;
   private String developerName;
   private String identifier;
   private double localPrice;
   private String name;
   private double originalPrice;
   private double percentOff;
   private int priceInCents;
   private int productVersionToBundle = 5;

   public Product() {
   }

   public Product(String var1, String var2, int var3, double var4, String var6, double var7, double var9, String var11, String var12) {
      this.identifier = var1;
      this.name = var2;
      this.priceInCents = var3;
      this.localPrice = var4;
      this.currencyCode = var6;
      this.originalPrice = var7;
      this.percentOff = var9;
      this.description = var11;
      this.developerName = var12;
   }

   public Product(JSONObject var1) throws JSONException {
      this.readFromJSONObject(var1);
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof Product)) {
            return false;
         }

         Product var2 = (Product)var1;
         if (this.priceInCents != var2.priceInCents) {
            return false;
         }

         if (!this.name.equals(var2.name)) {
            return false;
         }

         if (!this.identifier.equals(var2.identifier)) {
            return false;
         }

         if (this.localPrice != var2.localPrice) {
            return false;
         }

         if (this.currencyCode != null && !this.currencyCode.equals(var2.currencyCode)) {
            return false;
         }

         if (this.originalPrice != var2.originalPrice) {
            return false;
         }

         if (this.percentOff != var2.percentOff) {
            return false;
         }

         if (!this.description.equals(var2.description)) {
            return false;
         }

         if (!this.developerName.equals(var2.developerName)) {
            return false;
         }
      }

      return true;
   }

   public String getCurrencyCode() {
      return this.currencyCode;
   }

   public String getDescription() {
      return this.description;
   }

   public String getDeveloperName() {
      return this.developerName;
   }

   public String getFormattedPrice() {
      DecimalFormat var1;
      if (this.currencyCode != null && !this.currencyCode.isEmpty()) {
         var1 = (DecimalFormat)NumberFormat.getCurrencyInstance();
         var1.setCurrency(Currency.getInstance(this.currencyCode));
      } else {
         var1 = new DecimalFormat("#.00");
      }

      return var1.format(this.localPrice);
   }

   public String getIdentifier() {
      return this.identifier;
   }

   public double getLocalPrice() {
      return this.localPrice;
   }

   public String getName() {
      return this.name;
   }

   public double getOriginalPrice() {
      return this.originalPrice;
   }

   public double getPercentOff() {
      return this.percentOff;
   }

   @Deprecated
   public int getPriceInCents() {
      return this.priceInCents;
   }

   public int hashCode() {
      int var1 = 31 * (31 * (31 * this.identifier.hashCode() + this.name.hashCode()) + this.priceInCents) + Double.valueOf(this.localPrice).hashCode();
      if (this.currencyCode != null) {
         var1 = var1 * 31 + this.currencyCode.hashCode();
      }

      return var1;
   }

   public void readFromJSONObject(JSONObject var1) throws JSONException {
      this.identifier = var1.getString("identifier");
      this.name = var1.getString("name");
      this.priceInCents = var1.optInt("priceInCents");
      this.localPrice = var1.optDouble("localPrice");
      this.currencyCode = var1.optString("currency", (String)null);
      this.originalPrice = var1.optDouble("originalPrice");
      this.percentOff = var1.optDouble("percentOff");
      this.description = var1.optString("description", "");
      this.developerName = var1.optString("developerName", "");
   }

   public void setCurrencyCode(String var1) {
      this.currencyCode = var1;
   }

   public void setDeveloperName(String var1) {
      this.developerName = var1;
   }

   public void setProductVersionToBundle(int var1) {
      this.productVersionToBundle = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.identifier);
      var1.writeString(this.name);
      var1.writeInt(this.priceInCents);
      if (this.productVersionToBundle >= 2) {
         var1.writeDouble(this.localPrice);
         var1.writeString(this.currencyCode);
      }

      if (this.productVersionToBundle >= 3) {
         var1.writeDouble(this.originalPrice);
         var1.writeDouble(this.percentOff);
      }

      if (this.productVersionToBundle >= 4) {
         var1.writeString(this.description);
      }

      if (this.productVersionToBundle >= 5) {
         var1.writeString(this.developerName);
      }

   }
}
