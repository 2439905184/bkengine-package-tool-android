package com.nibiru.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class DeviceStateEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new DeviceStateEvent(var1);
      }
   };
   protected List deviceList;

   public DeviceStateEvent() {
      this.deviceList = new ArrayList();
   }

   public DeviceStateEvent(Parcel var1) {
      this();
      var1.readTypedList(this.deviceList, BTDevice.CREATOR);
   }

   public DeviceStateEvent(List var1) {
      this();
      this.deviceList.addAll(var1);
   }

   public int describeContents() {
      return 1031;
   }

   public List getDeviceList() {
      return this.deviceList;
   }

   public void setDeviceList(List var1) {
      this.deviceList = var1;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeTypedList(this.deviceList);
   }
}
