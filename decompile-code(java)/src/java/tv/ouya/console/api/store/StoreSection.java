package tv.ouya.console.api.store;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class StoreSection implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public StoreSection createFromParcel(Parcel var1) {
         String var2 = var1.readString();
         String var3 = var1.readString();
         int var4 = var1.readInt();
         ArrayList var5 = new ArrayList(var4);

         for(int var6 = 0; var6 < var4; ++var6) {
            var5.add(this.createFromParcel(var1));
         }

         return new StoreSection(var2, var3, var5);
      }

      public StoreSection[] newArray(int var1) {
         return new StoreSection[var1];
      }
   };
   private String name;
   private List subsections;
   private StoreSection.Type type;

   public StoreSection() {
   }

   public StoreSection(String var1, String var2, List var3) {
      this.name = var1;
      this.type = StoreSection.Type.valueOf(var2.toUpperCase());
      this.subsections = var3;
   }

   public StoreSection(JSONObject var1) throws JSONException {
      this.readFromJSON(var1);
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (!(var1 instanceof StoreSection)) {
            return false;
         }

         StoreSection var2 = (StoreSection)var1;
         if (!this.name.equals(var2.name)) {
            return false;
         }

         if (!this.type.equals(var2.type)) {
            return false;
         }

         if (!this.subsections.equals(var2.subsections)) {
            return false;
         }
      }

      return true;
   }

   public String getName() {
      return this.name;
   }

   public List getSubsections() {
      return this.subsections;
   }

   public StoreSection.Type getType() {
      return this.type;
   }

   public int hashCode() {
      return 31 * (31 * this.name.hashCode() + this.type.hashCode()) + this.subsections.hashCode();
   }

   public void readFromJSON(JSONObject var1) throws JSONException {
      String var2;
      if (var1.has("name")) {
         var2 = var1.getString("name");
      } else {
         var2 = "";
      }

      this.name = var2;

      try {
         this.type = StoreSection.Type.valueOf(var1.getString("type").toUpperCase());
      } catch (IllegalArgumentException var6) {
         this.type = StoreSection.Type.LIST;
      }

      this.subsections = new ArrayList();
      if (var1.has("contents")) {
         JSONArray var4 = var1.getJSONArray("contents");

         for(int var5 = 0; var5 < var4.length(); ++var5) {
            this.subsections.add(new StoreSection(var4.getJSONObject(var5)));
         }
      }

   }

   public void setName(String var1) {
      this.name = var1;
   }

   public void setSubsections(List var1) {
      this.subsections = var1;
   }

   public void setType(StoreSection.Type var1) {
      this.type = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.name);
      var1.writeString(this.type.name().toUpperCase());
      var1.writeInt(this.subsections.size());

      for(int var3 = 0; var3 < this.subsections.size(); ++var3) {
         ((StoreSection)this.subsections.get(var3)).writeToParcel(var1, var2);
      }

   }

   public static enum Type {
      LIST,
      TAG;

      static {
         StoreSection.Type[] var0 = new StoreSection.Type[]{TAG, LIST};
      }
   }
}
