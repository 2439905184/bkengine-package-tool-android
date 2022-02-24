package com.nibiru.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ConnectionEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ConnectionEvent(var1);
      }
   };
   protected BTDevice device;
   protected int state;

   public ConnectionEvent() {
   }

   public ConnectionEvent(int var1, BTDevice var2) {
      this.state = var1;
      this.device = var2;
   }

   public ConnectionEvent(Parcel var1) {
      this.state = var1.readInt();
      this.device = new BTDevice(var1);
   }

   public int describeContents() {
      return 1029;
   }

   public BTDevice getDevice() {
      return this.device;
   }

   public int getState() {
      return this.state;
   }

   public void setDevice(BTDevice var1) {
      this.device = var1;
   }

   public void setState(int var1) {
      this.state = var1;
   }

   public String toString() {
      return "ConnectionEvent [device=" + this.device + ", state=" + this.state + "]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeInt(this.state);
      this.device.writeToParcel(var1, var2);
   }
}
