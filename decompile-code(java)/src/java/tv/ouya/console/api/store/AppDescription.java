package tv.ouya.console.api.store;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;
import tv.ouya.console.api.Product;

public class AppDescription implements Parcelable {
   private static final String[] APP_STATUSES = new String[]{"unsubmitted", "submitted", "under_review", "approved", "published", "rejected"};
   public static final Creator CREATOR = new Creator() {
      public AppDescription createFromParcel(Parcel var1) {
         String var2 = var1.readString();
         String var3 = var1.readString();
         String var4 = var1.readString();
         boolean var5;
         if (var1.readInt() == 1) {
            var5 = true;
         } else {
            var5 = false;
         }

         Product var6 = null;
         if (var5) {
            var6 = (Product)Product.CREATOR.createFromParcel(var1);
         }

         int var7 = var1.readInt();
         HashMap var8 = null;
         if (var7 > -1) {
            var8 = new HashMap();

            for(int var9 = 0; var9 < var7; ++var9) {
               String var15 = var1.readString();
               AppDescription.AppVersion var16 = new AppDescription.AppVersion();
               var16.setUuid(var1.readString());
               var16.setUploadedAt(var1.readString());
               var16.setMainImageFullUrl(var1.readString());
               var16.setContentRating(var1.readString());
               var8.put(var15, var16);
            }
         }

         double var10 = var1.readDouble();
         int var12 = var1.readInt();
         boolean var13;
         if (var1.readByte() == 1) {
            var13 = true;
         } else {
            var13 = false;
         }

         boolean var14;
         if (var1.readByte() == 1) {
            var14 = true;
         } else {
            var14 = false;
         }

         return new AppDescription(var2, var3, var4, var6, var8, var10, var12, var13, var14, var1.readString());
      }

      public AppDescription[] newArray(int var1) {
         return new AppDescription[var1];
      }
   };
   private static final String DATE_FORMAT = "yyy-MM-dd'T'HH:mm:ss'Z'";
   private String imageUrl;
   private boolean inAppPurchases;
   private boolean premium;
   public Product primaryProduct;
   private double rating;
   private int ratingCount;
   private String title;
   private String type;
   private String uuid;
   private HashMap versions;

   public AppDescription() {
   }

   public AppDescription(String var1, String var2, String var3, Product var4, HashMap var5, double var6, int var8, boolean var9, boolean var10, String var11) {
      this.uuid = var1;
      this.title = var2;
      this.imageUrl = var3;
      this.versions = var5;
      this.primaryProduct = var4;
      this.rating = var6;
      this.ratingCount = var8;
      this.premium = var9;
      this.inAppPurchases = var10;
      this.type = var11;
   }

   public AppDescription(String var1, String var2, HashMap var3) {
      this(var1, var2, (String)null, (Product)null, var3, 0.0D, 0, false, false, (String)null);
   }

   public AppDescription(JSONObject var1) throws JSONException {
      this.readFromJSON(var1);
   }

   private AppDescription.AppVersion getMostRecentVersion() {
      if (this.versions == null) {
         return AppDescription.AppVersion.EMPTY_VERSION;
      } else {
         String[] var1 = APP_STATUSES;
         int var2 = var1.length;

         for(int var3 = 0; var3 < var2; ++var3) {
            String var4 = var1[var3];
            if (this.versions.containsKey(var4)) {
               return (AppDescription.AppVersion)this.versions.get(var4);
            }
         }

         return AppDescription.AppVersion.EMPTY_VERSION;
      }
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof AppDescription)) {
            return false;
         } else {
            AppDescription var2 = (AppDescription)var1;
            if (this.title != null) {
               if (!this.title.equals(var2.title)) {
                  return false;
               }
            } else if (var2.title != null) {
               return false;
            }

            label77: {
               if (this.uuid != null) {
                  if (this.uuid.equals(var2.uuid)) {
                     break label77;
                  }
               } else if (var2.uuid == null) {
                  break label77;
               }

               return false;
            }

            label70: {
               if (this.imageUrl != null) {
                  if (this.imageUrl.equals(var2.imageUrl)) {
                     break label70;
                  }
               } else if (var2.imageUrl == null) {
                  break label70;
               }

               return false;
            }

            if (this.primaryProduct == null) {
               if (var2.primaryProduct != null) {
                  return false;
               }
            } else if (!this.primaryProduct.equals(var2.primaryProduct)) {
               return false;
            }

            label62: {
               if (this.versions != null) {
                  if (this.versions.equals(var2.versions)) {
                     break label62;
                  }
               } else if (var2.versions == null) {
                  break label62;
               }

               return false;
            }

            if (this.rating != var2.rating) {
               return false;
            } else if (this.ratingCount != var2.ratingCount) {
               return false;
            } else if (this.premium != var2.premium) {
               return false;
            } else if (this.inAppPurchases != var2.inAppPurchases) {
               return false;
            } else if (this.type != null && !this.type.equals(var2.type)) {
               return false;
            } else {
               return true;
            }
         }
      } else {
         return true;
      }
   }

   public String getImageUrl() {
      return this.imageUrl;
   }

   public boolean getInAppPurchases() {
      return this.inAppPurchases;
   }

   public Intent getLaunchIntent(Context var1) {
      PackageManager var2 = var1.getPackageManager();
      Intent var3 = new Intent("android.intent.action.MAIN", (Uri)null);
      var3.addFlags(268435456);
      var3.addCategory("android.intent.category.LAUNCHER");
      var3.addCategory("tv.ouya.intent.category.GAME");
      var3.setPackage(this.getUuid());
      ResolveInfo var8 = var2.resolveActivity(var3, 0);
      if (var8 == null) {
         var3.removeCategory("tv.ouya.intent.category.GAME");
         var3.addCategory("tv.ouya.intent.category.APP");
         var8 = var2.resolveActivity(var3, 0);
      }

      if (var8 == null) {
         var3.removeCategory("tv.ouya.intent.category.APP");
         var8 = var2.resolveActivity(var3, 0);
      }

      if (var8 == null) {
         return null;
      } else {
         var3.setClassName(var8.activityInfo.applicationInfo.packageName, var8.activityInfo.name);
         return var3;
      }
   }

   public String getMostRecentVersionContentRating() {
      return this.getMostRecentVersion().getContentRating();
   }

   public String getMostRecentVersionMainImageFullUrl() {
      return this.getMostRecentVersion().getMainImageFullUrl();
   }

   public String getMostRecentVersionUploadedAt() {
      return this.getMostRecentVersion().getUploadedAt();
   }

   public String getMostRecentVersionUuid() {
      return this.getMostRecentVersion().getUuid();
   }

   public boolean getPremium() {
      return this.premium;
   }

   public Product getPrimaryProduct() {
      return this.primaryProduct;
   }

   public double getRating() {
      return this.rating;
   }

   public int getRatingCount() {
      return this.ratingCount;
   }

   public String getTitle() {
      return this.title;
   }

   public String getType() {
      return this.type;
   }

   public String getUuid() {
      return this.uuid;
   }

   public HashMap getVersions() {
      return this.versions;
   }

   public int hashCode() {
      int var1;
      if (this.uuid != null) {
         var1 = this.uuid.hashCode();
      } else {
         var1 = 0;
      }

      int var2 = var1 * 31;
      int var3;
      if (this.title != null) {
         var3 = this.title.hashCode();
      } else {
         var3 = 0;
      }

      int var4 = 31 * (var2 + var3);
      HashMap var5 = this.versions;
      int var6 = 0;
      if (var5 != null) {
         var6 = this.versions.hashCode();
      }

      return var4 + var6;
   }

   public void readFromJSON(JSONObject var1) throws JSONException {
      this.uuid = var1.optString("uuid", (String)null);
      if (this.uuid == null) {
         this.uuid = var1.getString("package");
      }

      this.title = var1.getString("title");
      if (var1.has("image")) {
         this.imageUrl = var1.getString("image");
      }

      this.type = var1.optString("type");
      this.versions = new HashMap();
      if (this.type == null || !this.type.equals("details_page")) {
         if (var1.has("versions")) {
            JSONObject var6 = var1.getJSONObject("versions");
            Iterator var7 = var6.keys();

            while(var7.hasNext()) {
               String var8 = (String)var7.next();
               this.versions.put(var8, new AppDescription.AppVersion(var6.getJSONObject(var8)));
            }
         } else {
            AppDescription.AppVersion var2 = new AppDescription.AppVersion();
            String var3 = var1.optString("version", (String)null);
            if (var3 == null) {
               var3 = var1.getJSONObject("latestVersion").getString("uuid");
            }

            var2.setUuid(var3);
            var2.setMainImageFullUrl(var1.optString("image"));
            var2.setContentRating(var1.optString("contentRating", var1.optString("content_rating", (String)null)));
            this.versions.put("approved", var2);
         }

         JSONObject var5 = var1.optJSONObject("primaryProduct");
         if (var5 != null) {
            this.primaryProduct = new Product();
            this.primaryProduct.readFromJSONObject(var5);
         }

         if (var1.has("rating")) {
            this.rating = var1.getJSONObject("rating").getDouble("average");
            this.ratingCount = var1.getJSONObject("rating").getInt("count");
         } else {
            this.rating = var1.optDouble("ratingAverage", 0.0D);
            this.ratingCount = var1.optInt("ratingCount", 0);
         }

         this.premium = var1.optBoolean("premium");
         this.inAppPurchases = var1.optBoolean("inAppPurchases");
      }

   }

   public void setInAppPurchases(boolean var1) {
      this.inAppPurchases = var1;
   }

   public void setMainImageFullUrl(String var1) {
      this.imageUrl = var1;
   }

   public void setPremium(boolean var1) {
      this.premium = var1;
   }

   public void setRating(double var1) {
      this.rating = var1;
   }

   public void setRatingCount(int var1) {
      this.ratingCount = var1;
   }

   public void setTitle(String var1) {
      this.title = var1;
   }

   public void setType(String var1) {
      this.type = var1;
   }

   public void setUuid(String var1) {
      this.uuid = var1;
   }

   public void setVersions(HashMap var1) {
      this.versions = var1;
   }

   public String toString() {
      return "AppDescription{title='" + this.title + '\'' + ", uuid='" + this.uuid + '\'' + ", versions=" + this.versions + '}';
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeString(this.uuid);
      var1.writeString(this.title);
      var1.writeString(this.imageUrl);
      byte var4;
      if (this.primaryProduct != null) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeInt(var4);
      if (this.primaryProduct != null) {
         this.primaryProduct.writeToParcel(var1, var2);
      }

      if (this.versions == null) {
         var1.writeInt(-1);
      } else {
         var1.writeInt(this.versions.size());
         Iterator var5 = this.versions.keySet().iterator();

         while(var5.hasNext()) {
            String var6 = (String)var5.next();
            var1.writeString(var6);
            var1.writeString(((AppDescription.AppVersion)this.versions.get(var6)).getUuid());
            var1.writeString(((AppDescription.AppVersion)this.versions.get(var6)).getUploadedAt());
            var1.writeString(((AppDescription.AppVersion)this.versions.get(var6)).getMainImageFullUrl());
            var1.writeString(((AppDescription.AppVersion)this.versions.get(var6)).getContentRating());
         }
      }

      var1.writeDouble(this.rating);
      var1.writeInt(this.ratingCount);
      byte var7;
      if (this.premium) {
         var7 = var3;
      } else {
         var7 = 0;
      }

      var1.writeByte(var7);
      if (!this.inAppPurchases) {
         var3 = 0;
      }

      var1.writeByte(var3);
      var1.writeString(this.type);
   }

   public static class AppVersion {
      public static final AppDescription.AppVersion EMPTY_VERSION = new AppDescription.AppVersion();
      private String contentRating;
      private String mainImageFullUrl;
      private String uploadedAt;
      private String uuid;

      public AppVersion() {
      }

      public AppVersion(JSONObject var1) throws JSONException {
         this.readFromJSON(var1);
      }

      private Date parseDate(String var1) throws ParseException {
         SimpleDateFormat var2 = new SimpleDateFormat("yyy-MM-dd'T'HH:mm:ss'Z'");
         var2.setTimeZone(TimeZone.getTimeZone("UTC"));
         return var2.parse(var1);
      }

      public boolean equals(Object var1) {
         if (this != var1) {
            if (var1 != null && this.getClass() == var1.getClass()) {
               AppDescription.AppVersion var2 = (AppDescription.AppVersion)var1;
               if (this.uploadedAt != null) {
                  if (!this.uploadedAt.equals(var2.uploadedAt)) {
                     return false;
                  }
               } else if (var2.uploadedAt != null) {
                  return false;
               }

               label42: {
                  if (this.uuid != null) {
                     if (this.uuid.equals(var2.uuid)) {
                        break label42;
                     }
                  } else if (var2.uuid == null) {
                     break label42;
                  }

                  return false;
               }

               if (this.mainImageFullUrl != null) {
                  if (!this.mainImageFullUrl.equals(var2.mainImageFullUrl)) {
                     return false;
                  }
               } else if (var2.mainImageFullUrl != null) {
                  return false;
               }

               if (this.contentRating != null) {
                  if (this.contentRating.equals(var2.contentRating)) {
                     return true;
                  }
               } else if (var2.contentRating == null) {
                  return true;
               }

               return false;
            } else {
               return false;
            }
         } else {
            return true;
         }
      }

      public String getContentRating() {
         return this.contentRating;
      }

      public String getMainImageFullUrl() {
         return this.mainImageFullUrl;
      }

      public String getUploadedAt() {
         return this.uploadedAt;
      }

      public Date getUploadedAtDate() {
         try {
            Date var2 = this.parseDate(this.uploadedAt);
            return var2;
         } catch (ParseException var3) {
            throw new RuntimeException(var3);
         }
      }

      public String getUuid() {
         return this.uuid;
      }

      public int hashCode() {
         int var1;
         if (this.uuid != null) {
            var1 = this.uuid.hashCode();
         } else {
            var1 = 0;
         }

         int var2 = var1 * 31;
         int var3;
         if (this.uploadedAt != null) {
            var3 = this.uploadedAt.hashCode();
         } else {
            var3 = 0;
         }

         int var4 = 31 * (var2 + var3);
         int var5;
         if (this.mainImageFullUrl != null) {
            var5 = this.mainImageFullUrl.hashCode();
         } else {
            var5 = 0;
         }

         int var6 = 31 * (var4 + var5);
         String var7 = this.contentRating;
         int var8 = 0;
         if (var7 != null) {
            var8 = this.contentRating.hashCode();
         }

         return var6 + var8;
      }

      public void readFromJSON(JSONObject var1) throws JSONException {
         this.uuid = var1.getString("uuid");
         this.uploadedAt = var1.getString("uploadedAt");
         this.mainImageFullUrl = var1.getString("mainImageFullUrl");
         this.contentRating = var1.optString("contentRating");
      }

      public void setContentRating(String var1) {
         this.contentRating = var1;
      }

      public void setMainImageFullUrl(String var1) {
         this.mainImageFullUrl = var1;
      }

      public void setUploadedAt(String var1) {
         this.uploadedAt = var1;
      }

      public void setUuid(String var1) {
         this.uuid = var1;
      }

      public String toString() {
         return "AppVersion{uuid='" + this.uuid + '\'' + ", uploadedAt=" + this.uploadedAt + ", mainImageFullUrl='" + this.mainImageFullUrl + '\'' + ", contentRating='" + this.contentRating + '\'' + '}';
      }
   }
}
