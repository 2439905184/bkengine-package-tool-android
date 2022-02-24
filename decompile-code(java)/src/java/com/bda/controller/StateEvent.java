package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class StateEvent extends BaseEvent implements Parcelable {
   public static final int ACTION_CONNECTED = 1;
   public static final int ACTION_CONNECTING = 2;
   public static final int ACTION_DISCONNECTED = 0;
   public static final int ACTION_FALSE = 0;
   public static final int ACTION_TRUE = 1;
   public static final int ACTION_VERSION_MOGA = 0;
   public static final int ACTION_VERSION_MOGAPRO = 1;
   public static final Creator CREATOR = new StateEvent.ParcelableCreator();
   public static final int STATE_CONNECTION = 1;
   public static final int STATE_CURRENT_PRODUCT_VERSION = 4;
   public static final int STATE_POWER_LOW = 2;
   @Deprecated
   public static final int STATE_SELECTED_VERSION = 4;
   public static final int STATE_SUPPORTED_PRODUCT_VERSION = 3;
   @Deprecated
   public static final int STATE_SUPPORTED_VERSION = 3;
   public static final int STATE_UNKNOWN;
   final int mAction;
   final int mState;

   public StateEvent(long var1, int var3, int var4, int var5) {
      super(var1, var3);
      this.mState = var4;
      this.mAction = var5;
   }

   StateEvent(Parcel var1) {
      super(var1);
      this.mState = var1.readInt();
      this.mAction = var1.readInt();
   }

   public int describeContents() {
      return 0;
   }

   public final int getAction() {
      return this.mAction;
   }

   public final int getState() {
      return this.mState;
   }

   public void writeToParcel(Parcel var1, int var2) {
      super.writeToParcel(var1, var2);
      var1.writeInt(this.mState);
      var1.writeInt(this.mAction);
   }

   static class ParcelableCreator implements Creator {
      public StateEvent createFromParcel(Parcel var1) {
         return new StateEvent(var1);
      }

      public StateEvent[] newArray(int var1) {
         return new StateEvent[var1];
      }
   }
}
