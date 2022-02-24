package tv.ouya.console.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Date;
import java.util.TimeZone;

public class Receipt implements Parcelable {
   public static final Creator CREATOR;
   private static final SimpleDateFormat DATE_PARSER = new SimpleDateFormat("yyy-MM-dd'T'HH:mm:ss'Z'");
   private String currency;
   private String gamer;
   private Date generatedDate;
   private String identifier;
   private double localPrice;
   private int priceInCents;
   private Date purchaseDate;
   private String uuid;

   static {
      DATE_PARSER.setTimeZone(TimeZone.getTimeZone("UTC"));
      CREATOR = new Creator() {
         public Receipt createFromParcel(Parcel var1) {
            return new Receipt(var1.readString(), var1.readInt(), new Date(var1.readLong()), new Date(var1.readLong()), var1.readString(), var1.readString(), var1.readDouble(), var1.readString());
         }

         public Receipt[] newArray(int var1) {
            return new Receipt[var1];
         }
      };
   }

   public Receipt() {
   }

   public Receipt(String var1, int var2, Date var3, Date var4, String var5, String var6, double var7, String var9) {
      this.identifier = var1;
      this.priceInCents = var2;
      this.purchaseDate = var3;
      this.generatedDate = var4;
      this.gamer = var5;
      this.uuid = var6;
      this.localPrice = var7;
      this.currency = var9;
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof Receipt)) {
            return false;
         }

         Receipt var2 = (Receipt)var1;
         if (!this.identifier.equals(var2.identifier)) {
            return false;
         }

         if (this.priceInCents != var2.priceInCents) {
            return false;
         }

         if (!this.purchaseDate.equals(var2.purchaseDate)) {
            return false;
         }

         if (!this.gamer.equals(var2.gamer)) {
            return false;
         }

         if (!this.uuid.equals(var2.uuid)) {
            return false;
         }

         if (this.localPrice != var2.localPrice) {
            return false;
         }

         if (this.currency != null && !this.currency.equals(var2.currency)) {
            return false;
         }
      }

      return true;
   }

   public String getCurrency() {
      return this.currency;
   }

   public String getFormattedPrice() {
      DecimalFormat var1;
      if (this.currency != null && !this.currency.isEmpty()) {
         var1 = (DecimalFormat)NumberFormat.getCurrencyInstance();
         var1.setCurrency(Currency.getInstance(this.currency));
      } else {
         var1 = new DecimalFormat("#.00");
      }

      return var1.format(this.localPrice);
   }

   public String getGamer() {
      return this.gamer;
   }

   public Date getGeneratedDate() {
      return this.generatedDate;
   }

   public String getIdentifier() {
      return this.identifier;
   }

   public double getLocalPrice() {
      return this.localPrice;
   }

   @Deprecated
   public int getPriceInCents() {
      return this.priceInCents;
   }

   public Date getPurchaseDate() {
      return this.purchaseDate;
   }

   public String getUuid() {
      return this.uuid;
   }

   public int hashCode() {
      int var1 = 31 * (31 * (31 * (31 * (31 * this.identifier.hashCode() + this.priceInCents) + this.purchaseDate.hashCode()) + this.gamer.hashCode()) + this.uuid.hashCode()) + Double.valueOf(this.localPrice).hashCode();
      if (this.currency != null) {
         var1 = var1 * 31 + this.currency.hashCode();
      }

      return var1;
   }

   public void setDate(String var1) {
      try {
         this.setPurchaseDate(DATE_PARSER.parse(var1));
      } catch (ParseException var3) {
         throw new RuntimeException(var3);
      }
   }

   public void setIdentifier(String var1) {
      this.identifier = var1;
   }

   public void setPriceInCents(int var1) {
      this.priceInCents = var1;
   }

   public void setPurchaseDate(Date var1) {
      this.purchaseDate = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.identifier);
      var1.writeInt(this.priceInCents);
      var1.writeLong(this.purchaseDate.getTime());
      var1.writeLong(this.generatedDate.getTime());
      var1.writeString(this.gamer);
      var1.writeString(this.uuid);
      var1.writeDouble(this.localPrice);
      var1.writeString(this.currency);
   }
}
