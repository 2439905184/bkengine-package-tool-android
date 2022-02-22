package com.nibiru.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class BTStateEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new BTStateEvent(var1);
      }
   };
   protected int state;

   public BTStateEvent() {
   }

   public BTStateEvent(int var1) {
      this.state = var1;
   }

   public BTStateEvent(Parcel var1) {
      this.state = var1.readInt();
   }

   public int describeContents() {
      return 1030;
   }

   public int getState() {
      return this.state;
   }

   public void setState(int var1) {
      this.state = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeInt(this.state);
   }
}
