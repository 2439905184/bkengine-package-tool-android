package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.nibiru.lib.BTDevice;

public class ControllerDevice implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ControllerDevice(var1);
      }
   };
   public static final int DUR_INFINITE = 0;
   public static final int POS_LEFT = 0;
   public static final int POS_RIGHT = 1;
   public static final int STATE_CONN = 1;
   public static final int STATE_CONNING = 0;
   public static final int STATE_DISCONN = 3;
   public static final int STATE_DISCONNING = 2;
   private int ba;
   private String bb;
   private int deviceId;
   private String deviceName;
   private int features;
   private boolean isExternal;
   private boolean isSupportAcc;
   private boolean isSupportGyro;
   private int playerOrder;
   private int state;

   public ControllerDevice(Parcel var1) {
      byte var2 = 1;
      super();
      this.bb = "0:0:0:0:0";
      this.deviceName = "NO DEVICE";
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.deviceId = var1.readInt();
      this.ba = var1.readInt();
      this.playerOrder = var1.readInt();
      this.state = var1.readInt();
      byte var3;
      if (var1.readInt() == var2) {
         var3 = var2;
      } else {
         var3 = 0;
      }

      this.isExternal = (boolean)var3;
      this.bb = var1.readString();
      this.features = var1.readInt();
      this.deviceName = var1.readString();
      byte var4;
      if (var1.readInt() == var2) {
         var4 = var2;
      } else {
         var4 = 0;
      }

      this.isSupportAcc = (boolean)var4;
      if (var1.readInt() != var2) {
         var2 = 0;
      }

      this.isSupportGyro = (boolean)var2;
   }

   public ControllerDevice(BTDevice var1) {
      this.bb = "0:0:0:0:0";
      this.deviceName = "NO DEVICE";
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      if (var1 != null) {
         this.deviceId = var1.getDeviceId();
         this.bb = var1.getDeviceAddr();
         this.ba = var1.getDeviceType();
         this.state = var1.getState();
         this.playerOrder = var1.getPlayerOrder();
         this.isExternal = var1.isExternal();
         this.features = var1.getFeatures();
         this.deviceName = var1.getDeviceName();
         this.isSupportAcc = var1.isSupportAcc();
         this.isSupportGyro = var1.isSupportGyro();
      }
   }

   public int describeContents() {
      return 5200;
   }

   public String getAddress() {
      return this.bb;
   }

   public BTDevice getBTDevice() {
      BTDevice var1 = new BTDevice();
      var1.setDeviceAddr(this.bb);
      var1.setDeviceName(this.deviceName);
      var1.setDeviceType(this.ba);
      return var1;
   }

   public int getDeviceId() {
      return this.deviceId;
   }

   public String getDeviceName() {
      return this.deviceName;
   }

   public int getDriverType() {
      return this.ba;
   }

   public int getFeatures() {
      return this.features;
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public int getState() {
      return this.state;
   }

   public boolean isConnected() {
      return this.state == 1;
   }

   public boolean isExternal() {
      return this.isExternal;
   }

   public boolean isSupportAcc() {
      return this.isSupportAcc;
   }

   public boolean isSupportGyro() {
      return this.isSupportGyro;
   }

   public void setAddress(String var1) {
      this.bb = var1;
   }

   public void setDeviceId(int var1) {
      this.deviceId = var1;
   }

   public void setDeviceName(String var1) {
      this.deviceName = var1;
   }

   public void setDriverType(int var1) {
      this.ba = var1;
   }

   public void setExternal(boolean var1) {
      this.isExternal = var1;
   }

   public void setFeatures(int var1) {
      this.features = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setState(int var1) {
      this.state = var1;
   }

   public void setSupportAcc(boolean var1) {
      this.isSupportAcc = var1;
   }

   public void setSupportGyro(boolean var1) {
      this.isSupportGyro = var1;
   }

   public String toString() {
      return "ControllerDevice [playerOrder=" + this.playerOrder + ", state=" + this.state + ", driverType=" + this.ba + ", isExternal=" + this.isExternal + ", deviceId=" + this.deviceId + ", feature=" + this.features + ", address=" + this.bb + ", deviceName=" + this.deviceName + ", isSupportAcc=" + this.isSupportAcc + ", isSupportGyro=" + this.isSupportGyro + "]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeInt(this.deviceId);
      var1.writeInt(this.ba);
      var1.writeInt(this.playerOrder);
      var1.writeInt(this.state);
      byte var4;
      if (this.isExternal) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeInt(var4);
      var1.writeString(this.bb);
      var1.writeInt(this.features);
      var1.writeString(this.deviceName);
      byte var5;
      if (this.isSupportAcc) {
         var5 = var3;
      } else {
         var5 = 0;
      }

      var1.writeInt(var5);
      if (!this.isSupportGyro) {
         var3 = 0;
      }

      var1.writeInt(var3);
   }
}
