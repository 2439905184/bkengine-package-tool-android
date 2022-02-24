package tv.ouya.console.api.store;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONException;
import org.json.JSONObject;

public class Tag implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public Tag createFromParcel(Parcel var1) {
         byte var2 = 1;
         String var3 = var1.readString();
         if (var1.readInt() != var2) {
            var2 = 0;
         }

         return new Tag(var3, Boolean.valueOf((boolean)var2), var1.readString());
      }

      public Tag[] newArray(int var1) {
         return new Tag[var1];
      }
   };
   public Boolean adminOnly;
   private String imageUrl;
   private String name;

   public Tag() {
   }

   public Tag(String var1, Boolean var2, String var3) {
      this.name = var1;
      this.adminOnly = var2;
      this.imageUrl = var3;
   }

   public Tag(JSONObject var1) throws JSONException {
      this.readFromJSON(var1);
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof Tag)) {
            return false;
         }

         Tag var2 = (Tag)var1;
         if (!this.name.equals(var2.name)) {
            return false;
         }

         if (this.adminOnly != this.adminOnly) {
            return false;
         }

         if (!this.imageUrl.equals(var2.imageUrl)) {
            return false;
         }
      }

      return true;
   }

   public String getImageUrl() {
      return this.imageUrl;
   }

   public String getName() {
      return this.name;
   }

   public int hashCode() {
      return 31 * (31 * this.name.hashCode() + this.adminOnly.hashCode()) + this.imageUrl.hashCode();
   }

   public void readFromJSON(JSONObject var1) throws JSONException {
      this.name = var1.getString("name");
      this.adminOnly = var1.getBoolean("admin_only");
      if (var1.has("image_url")) {
         this.imageUrl = var1.getString("image_url");
      }

   }

   public void setName(String var1) {
      this.name = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.name);
      byte var3;
      if (this.adminOnly) {
         var3 = 1;
      } else {
         var3 = 0;
      }

      var1.writeInt(var3);
      var1.writeString(this.imageUrl);
   }
}
