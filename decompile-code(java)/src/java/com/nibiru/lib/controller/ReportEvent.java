package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ReportEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ReportEvent(var1);
      }
   };
   private String cL;
   private int type;

   public ReportEvent(Parcel var1) {
      this.cL = var1.readString();
      this.type = var1.readInt();
   }

   public ReportEvent(String var1, int var2) {
      this.cL = var1;
      this.type = var2;
   }

   public int describeContents() {
      return 0;
   }

   public String getPath() {
      return this.cL;
   }

   public int getType() {
      return this.type;
   }

   public void setPath(String var1) {
      this.cL = var1;
   }

   public void setType(int var1) {
      this.type = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.cL);
      var1.writeInt(this.type);
   }
}
