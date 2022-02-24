package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ControllerServiceState implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ControllerServiceState(var1);
      }
   };
   private boolean bw = false;
   private int cN = -1;
   private boolean cO = true;
   private int clientCount = 0;

   public ControllerServiceState() {
   }

   public ControllerServiceState(Parcel var1) {
      boolean var2;
      if (var1.readInt() == 1) {
         var2 = true;
      } else {
         var2 = false;
      }

      this.bw = var2;
      this.clientCount = var1.readInt();
      this.cN = var1.readInt();
      int var3 = var1.readInt();
      boolean var4 = false;
      if (var3 != 2) {
         var4 = true;
      }

      this.cO = var4;
   }

   public int describeContents() {
      return 0;
   }

   public int getClientCount() {
      return this.clientCount;
   }

   public int getSupportType() {
      return this.cN;
   }

   public boolean isNibiruSupport() {
      return this.bw;
   }

   public boolean isSupportExternal() {
      return this.cO;
   }

   public void setClientCount(int var1) {
      this.clientCount = var1;
   }

   public void setNibiruSupport(boolean var1) {
      this.bw = var1;
   }

   public void setSupportExternal(boolean var1) {
      this.cO = var1;
   }

   public void setSupportType(int var1) {
      this.cN = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      byte var4;
      if (this.bw) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeInt(var4);
      var1.writeInt(this.clientCount);
      var1.writeInt(this.cN);
      if (!this.cO) {
         var3 = 2;
      }

      var1.writeInt(var3);
   }
}
