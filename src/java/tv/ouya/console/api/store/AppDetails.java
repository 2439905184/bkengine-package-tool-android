package tv.ouya.console.api.store;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.ouya.console.api.Product;

public final class AppDetails implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public AppDetails createFromParcel(Parcel var1) {
         String var2 = var1.readString();
         String var3 = var1.readString();
         String var4 = var1.readString();
         String var5 = var1.readString();
         Long var6 = var1.readLong();
         String var7 = var1.readString();
         String var8 = var1.readString();
         ArrayList var9 = new ArrayList();
         var1.readStringList(var9);
         Long var10 = var1.readLong();
         String var11 = var1.readString();
         String var12 = var1.readString();
         String var13 = var1.readString();
         boolean var14;
         if (var1.readByte() == 1) {
            var14 = true;
         } else {
            var14 = false;
         }

         Boolean var15 = var14;
         String var16 = var1.readString();
         boolean var17;
         if (var1.readByte() == 1) {
            var17 = true;
         } else {
            var17 = false;
         }

         Boolean var18 = var17;
         boolean var19;
         if (var1.readByte() == 1) {
            var19 = true;
         } else {
            var19 = false;
         }

         Boolean var20 = var19;
         String var21 = var1.readString();
         boolean var22;
         if (var1.readInt() == 1) {
            var22 = true;
         } else {
            var22 = false;
         }

         Product var23 = null;
         if (var22) {
            var23 = (Product)Product.CREATOR.createFromParcel(var1);
         }

         return new AppDetails(var2, var3, var4, var5, var6, var7, var8, var9, var10, var11, var12, var13, var15, var16, var18, var20, var21, var23, var1.readDouble(), var1.readInt());
      }

      public AppDetails[] newArray(int var1) {
         return new AppDetails[var1];
      }
   };
   public Long apkFileSize;
   public String contentRating;
   public String description;
   public String developer;
   public boolean founder;
   public List imageUrls;
   public boolean inAppPurchases;
   public String latestVersion;
   public Long likeCount;
   public String mainImageFullUrl;
   public String overview;
   public boolean premium;
   public Product primaryProduct;
   public String publishedAt;
   public double rating;
   public int ratingCount;
   public String title;
   public String uuid;
   public String versionNumber;
   public String videoUrl;

   public AppDetails() {
      this.imageUrls = new ArrayList();
   }

   public AppDetails(String var1, String var2, String var3, String var4, Long var5, String var6, String var7, List var8, Long var9, String var10, String var11, String var12, Boolean var13, String var14, Boolean var15, Boolean var16, String var17, Product var18, double var19, int var21) {
      this.title = var1;
      this.description = var2;
      this.mainImageFullUrl = var3;
      this.uuid = var4;
      this.apkFileSize = var5;
      this.versionNumber = var6;
      this.publishedAt = var7;
      this.imageUrls = var8;
      this.likeCount = var9;
      this.overview = var10;
      this.contentRating = var11;
      this.latestVersion = var12;
      this.founder = var13;
      this.developer = var14;
      this.premium = var15;
      this.inAppPurchases = var16;
      this.videoUrl = var17;
      this.primaryProduct = var18;
      this.rating = var19;
      this.ratingCount = var21;
   }

   public AppDetails(JSONObject var1) throws JSONException {
      this.readFromJSON(var1);
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof AppDetails)) {
            return false;
         }

         AppDetails var2 = (AppDetails)var1;
         if (!this.description.equals(var2.description)) {
            return false;
         }

         if (!this.mainImageFullUrl.equals(var2.mainImageFullUrl)) {
            return false;
         }

         if (!this.title.equals(var2.title)) {
            return false;
         }

         if (!this.uuid.equals(var2.uuid)) {
            return false;
         }

         if (!this.apkFileSize.equals(var2.apkFileSize)) {
            return false;
         }

         if (!this.versionNumber.equals(var2.versionNumber)) {
            return false;
         }

         if (!this.publishedAt.equals(var2.publishedAt)) {
            return false;
         }

         if (!this.likeCount.equals(var2.likeCount)) {
            return false;
         }

         if (!this.overview.equals(var2.overview)) {
            return false;
         }

         if (!this.contentRating.equals(var2.contentRating)) {
            return false;
         }

         if (!this.latestVersion.equals(var2.latestVersion)) {
            return false;
         }

         if (this.founder != var2.founder) {
            return false;
         }

         if (!this.developer.equals(var2.developer)) {
            return false;
         }

         if (this.premium != var2.premium) {
            return false;
         }

         if (this.inAppPurchases != var2.inAppPurchases) {
            return false;
         }

         if (this.videoUrl == null) {
            if (var2.videoUrl != null) {
               return false;
            }
         } else if (!this.videoUrl.equals(var2.videoUrl)) {
            return false;
         }

         if (this.primaryProduct == null) {
            if (var2.primaryProduct != null) {
               return false;
            }
         } else if (!this.primaryProduct.equals(var2.primaryProduct)) {
            return false;
         }

         if (this.rating != var2.rating) {
            return false;
         }

         if (this.ratingCount != var2.ratingCount) {
            return false;
         }
      }

      return true;
   }

   public AppDescription getDescription(String var1) {
      AppDescription.AppVersion var2 = new AppDescription.AppVersion();
      var2.setMainImageFullUrl(this.mainImageFullUrl);
      var2.setUploadedAt(this.publishedAt);
      var2.setUuid(this.uuid);
      var2.setContentRating(this.contentRating);
      HashMap var3 = new HashMap();
      var3.put("published", var2);
      return new AppDescription(var1, this.title, this.mainImageFullUrl, this.primaryProduct, var3, this.rating, this.ratingCount, this.premium, this.inAppPurchases, (String)null);
   }

   public int hashCode() {
      return 31 * (31 * (31 * this.title.hashCode() + this.description.hashCode()) + this.mainImageFullUrl.hashCode()) + this.uuid.hashCode();
   }

   public void readFromJSON(JSONObject var1) throws JSONException {
      this.title = var1.optString("title");
      this.description = var1.optString("description");
      this.mainImageFullUrl = var1.optString("mainImageFullUrl");
      this.uuid = var1.optString("uuid");
      this.apkFileSize = var1.optLong("apkFileSize");
      this.versionNumber = var1.optString("versionNumber");
      this.publishedAt = var1.optString("publishedAt");
      this.contentRating = var1.optString("contentRating");
      this.latestVersion = var1.optString("latestVersion");
      this.imageUrls = new ArrayList();
      JSONArray var2 = var1.optJSONArray("filepickerScreenshots");
      if (var2 == null || var2.length() == 0) {
         var2 = var1.optJSONArray("screenshots");
      }

      if (var2 != null) {
         for(int var4 = 0; var4 < var2.length(); ++var4) {
            this.imageUrls.add(var2.getString(var4));
         }
      }

      this.likeCount = var1.optLong("likeCount");
      this.overview = var1.optString("overview");
      this.founder = var1.optBoolean("founder");
      this.developer = var1.optString("developer");
      this.premium = var1.optBoolean("premium");
      this.inAppPurchases = var1.optBoolean("inAppPurchases");
      this.videoUrl = var1.optString("videoUrl");
      if (this.videoUrl.equals("null")) {
         this.videoUrl = null;
      }

      JSONObject var3 = var1.optJSONObject("primaryProduct");
      if (var3 != null) {
         this.primaryProduct = new Product();
         this.primaryProduct.readFromJSONObject(var3);
      }

      this.rating = var1.optDouble("ratingAverage", 0.0D);
      this.ratingCount = var1.optInt("ratingCount", 0);
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeString(this.title);
      var1.writeString(this.description);
      var1.writeString(this.mainImageFullUrl);
      var1.writeString(this.uuid);
      var1.writeLong(this.apkFileSize);
      var1.writeString(this.versionNumber);
      var1.writeString(this.publishedAt);
      var1.writeStringList(this.imageUrls);
      var1.writeLong(this.likeCount);
      var1.writeString(this.overview);
      var1.writeString(this.contentRating);
      var1.writeString(this.latestVersion);
      byte var4;
      if (this.founder) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeByte(var4);
      var1.writeString(this.developer);
      byte var5;
      if (this.premium) {
         var5 = var3;
      } else {
         var5 = 0;
      }

      var1.writeByte(var5);
      byte var6;
      if (this.inAppPurchases) {
         var6 = var3;
      } else {
         var6 = 0;
      }

      var1.writeByte(var6);
      var1.writeString(this.videoUrl);
      if (this.primaryProduct == null) {
         var3 = 0;
      }

      var1.writeInt(var3);
      if (this.primaryProduct != null) {
         this.primaryProduct.writeToParcel(var1, var2);
      }

      var1.writeDouble(this.rating);
      var1.writeInt(this.ratingCount);
   }
}
