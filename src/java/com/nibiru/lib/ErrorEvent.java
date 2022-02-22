package com.nibiru.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ErrorEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ErrorEvent(var1);
      }
   };
   private int deviceId;
   protected String errorFull;
   protected String errorShort;

   public ErrorEvent() {
   }

   public ErrorEvent(Parcel var1) {
      this.errorShort = var1.readString();
      this.errorFull = var1.readString();
      this.deviceId = var1.readInt();
   }

   public int describeContents() {
      return 1034;
   }

   public int getDeviceId() {
      return this.deviceId;
   }

   public String getErrorFull() {
      return this.errorFull;
   }

   public String getErrorShort() {
      return this.errorShort;
   }

   public void setDeviceId(int var1) {
      this.deviceId = var1;
   }

   public void setErrorFull(String var1) {
      this.errorFull = var1;
   }

   public void setErrorShort(String var1) {
      this.errorShort = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.errorShort);
      var1.writeString(this.errorFull);
      var1.writeInt(this.deviceId);
   }
}
