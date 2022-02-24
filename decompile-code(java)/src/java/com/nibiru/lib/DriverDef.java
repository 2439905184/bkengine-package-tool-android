package com.nibiru.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DriverDef implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new DriverDef(var1);
      }
   };
   private String an;
   private int deviceType;

   public DriverDef(int var1, String var2) {
      this.deviceType = var1;
      this.an = var2;
   }

   public DriverDef(Parcel var1) {
      this.deviceType = var1.readInt();
      this.an = var1.readString();
   }

   public int describeContents() {
      return 0;
   }

   public int getDeviceType() {
      return this.deviceType;
   }

   public String getDriverName() {
      return this.an;
   }

   public void setDeviceType(int var1) {
      this.deviceType = var1;
   }

   public void setDriverName(String var1) {
      this.an = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeInt(this.deviceType);
      var1.writeString(this.an);
   }
}
