package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class BaseEvent implements Parcelable {
   public static final Creator CREATOR = new BaseEvent.ParcelableCreator();
   final int mControllerId;
   final long mEventTime;

   public BaseEvent(long var1, int var3) {
      this.mEventTime = var1;
      this.mControllerId = var3;
   }

   BaseEvent(Parcel var1) {
      this.mEventTime = var1.readLong();
      this.mControllerId = var1.readInt();
   }

   public int describeContents() {
      return 0;
   }

   public final int getControllerId() {
      return this.mControllerId;
   }

   public final long getEventTime() {
      return this.mEventTime;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeLong(this.mEventTime);
      var1.writeInt(this.mControllerId);
   }

   static class ParcelableCreator implements Creator {
      public BaseEvent createFromParcel(Parcel var1) {
         return new BaseEvent(var1);
      }

      public BaseEvent[] newArray(int var1) {
         return new BaseEvent[var1];
      }
   }
}
