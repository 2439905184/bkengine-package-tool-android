package com.nibiru.lib;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Parcelable.Creator;
import android.view.InputDevice;
import com.nibiru.lib.controller.ControllerKeyEvent;
import com.nibiru.lib.controller.StickEvent;
import java.io.Serializable;

public class BTDevice implements Parcelable, Serializable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new BTDevice(var1);
      }
   };
   public static final int STATE_CONN = 1;
   public static final int STATE_CONNING = 0;
   public static final int STATE_DISCONN = 3;
   public static final int STATE_DISCONNING = 2;
   public static final int STATE_STOP = 4;
   protected static final long serialVersionUID = 4473651087026692626L;
   protected long connectTime;
   protected String deviceAddr;
   protected int deviceId;
   protected String deviceName;
   protected int deviceType;
   protected int features;
   protected boolean isConnected;
   protected boolean isExternal;
   protected boolean isSupportAcc;
   protected boolean isSupportGyro;
   protected ControllerKeyEvent lastKeyEvent;
   protected StickEvent lastStickEvent;
   protected c mDeviceInfo;
   protected int playerOrder;
   protected int state;

   public BTDevice() {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
   }

   public BTDevice(BluetoothDevice var1) {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.deviceAddr = var1.getAddress();
      this.deviceName = var1.getName();
      if (this.deviceName == null || this.deviceName.length() == 0) {
         this.deviceName = "Unknown Device";
      }

      this.state = 3;
   }

   public BTDevice(Parcel var1) {
      byte var2 = 1;
      super();
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.setConnectTime(var1.readLong());
      this.setDeviceAddr(var1.readString());
      this.setDeviceId(var1.readInt());
      this.setDeviceName(var1.readString());
      this.setDeviceType(var1.readInt());
      byte var3;
      if (var1.readInt() == var2) {
         var3 = var2;
      } else {
         var3 = 0;
      }

      this.setConnected((boolean)var3);
      this.setPlayerOrder(var1.readInt());
      this.setState(var1.readInt());
      byte var4;
      if (var1.readInt() == var2) {
         var4 = var2;
      } else {
         var4 = 0;
      }

      this.setExternal((boolean)var4);
      this.setFeatures(var1.readInt());
      byte var5;
      if (var1.readInt() == var2) {
         var5 = var2;
      } else {
         var5 = 0;
      }

      this.setSupportAcc((boolean)var5);
      if (var1.readInt() != var2) {
         var2 = 0;
      }

      this.setSupportGyro((boolean)var2);
   }

   public BTDevice(InputDevice var1) {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.isExternal = true;
      this.isConnected = true;
      this.state = 1;
      this.deviceId = var1.getId();
      this.deviceName = var1.getName();
      this.deviceType = 0;
      this.connectTime = SystemClock.uptimeMillis();
      this.deviceAddr = "gen:" + var1.getName() + ":" + var1.getId();
   }

   public BTDevice(BTDevice var1) {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.isExternal = var1.isExternal;
      this.isConnected = var1.isConnected;
      this.state = var1.state;
      this.deviceId = var1.deviceId;
      this.deviceName = var1.deviceName;
      this.deviceType = var1.deviceType;
      this.connectTime = var1.connectTime;
      this.playerOrder = var1.playerOrder;
      this.deviceAddr = var1.deviceAddr;
   }

   public BTDevice(String var1) {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.deviceName = "device";
      this.deviceId = -1;
      this.deviceAddr = var1;
      this.deviceType = -1;
   }

   public BTDevice(String var1, int var2, int var3, String var4, boolean var5, int var6, boolean var7) {
      this.deviceName = "No Device";
      this.deviceId = -1;
      this.deviceType = -1;
      this.playerOrder = 0;
      this.deviceAddr = "0:0:0:0:0:0";
      this.isConnected = false;
      this.connectTime = 0L;
      this.state = 3;
      this.isExternal = false;
      this.features = 0;
      this.isSupportAcc = false;
      this.isSupportGyro = false;
      this.lastStickEvent = null;
      this.lastKeyEvent = null;
      this.isExternal = var5;
      this.state = var6;
      this.isConnected = var7;
      this.deviceName = var1;
      this.deviceId = var2;
      this.deviceType = var3;
      this.deviceAddr = var4;
   }

   public void addFeatures(int var1) {
      this.features |= var1;
   }

   public int describeContents() {
      return 3012;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (var1 == null) {
            return false;
         }

         if (this.getClass() != var1.getClass()) {
            return false;
         }

         BTDevice var2 = (BTDevice)var1;
         if (this.deviceAddr == null) {
            if (var2.deviceAddr != null) {
               return false;
            }
         } else if (!this.deviceAddr.equals(var2.deviceAddr)) {
            return false;
         }
      }

      return true;
   }

   public long getConnectTime() {
      return this.connectTime;
   }

   public String getDeviceAddr() {
      return this.deviceAddr;
   }

   public int getDeviceId() {
      return this.deviceId;
   }

   public c getDeviceInfo() {
      return this.mDeviceInfo;
   }

   public String getDeviceName() {
      return this.deviceName;
   }

   public int getDeviceType() {
      return this.deviceType;
   }

   public int getFeatures() {
      return this.features;
   }

   public ControllerKeyEvent getLastKeyEvent() {
      return this.lastKeyEvent;
   }

   public StickEvent getLastStickEvent() {
      return this.lastStickEvent;
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public int getState() {
      return this.state;
   }

   public int hashCode() {
      int var1;
      if (this.deviceAddr == null) {
         var1 = 0;
      } else {
         var1 = this.deviceAddr.hashCode();
      }

      return var1 + 31;
   }

   public boolean isConnected() {
      return this.isConnected;
   }

   public boolean isExternal() {
      return this.isExternal;
   }

   public boolean isHost() {
      return this.playerOrder == 1;
   }

   public boolean isSupportAcc() {
      return this.isSupportAcc;
   }

   public boolean isSupportGyro() {
      return this.isSupportGyro;
   }

   public boolean isValid() {
      return this.isExternal || !this.deviceAddr.equals("0:0:0:0:0:0") && this.deviceType >= 0;
   }

   public void recordConnectTime() {
      this.connectTime = System.currentTimeMillis();
   }

   public void removeFeatures(int var1) {
      this.features &= ~var1;
   }

   public void setConnectTime(long var1) {
      this.connectTime = var1;
   }

   public void setConnected(boolean var1) {
      this.isConnected = var1;
   }

   public void setDeviceAddr(String var1) {
      this.deviceAddr = var1;
   }

   public void setDeviceId(int var1) {
      this.deviceId = var1;
   }

   public void setDeviceName(String var1) {
      this.deviceName = var1;
   }

   public void setDeviceType(int var1) {
      this.deviceType = var1;
   }

   public void setExternal(boolean var1) {
      this.isExternal = var1;
   }

   public void setFeatures(int var1) {
      this.features = var1;
   }

   public void setLastKeyEvent(ControllerKeyEvent var1) {
      this.lastKeyEvent = var1;
   }

   public void setLastStickEvent(StickEvent var1) {
      this.lastStickEvent = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setState(int var1) {
      this.state = var1;
   }

   public void setSupportAcc(boolean var1) {
      this.isSupportAcc = var1;
      if (var1) {
         this.features |= 1;
      } else {
         this.features &= -2;
      }
   }

   public void setSupportGyro(boolean var1) {
      this.isSupportGyro = var1;
      if (this.isSupportAcc) {
         this.features |= 2;
      } else {
         this.features &= -3;
      }
   }

   public String toString() {
      return "BTDevice [deviceName=" + this.deviceName + ", deviceId=" + this.deviceId + ", deviceType=" + this.deviceType + ", playerOrder=" + this.playerOrder + ", deviceAddr=" + this.deviceAddr + ", isConnected=" + this.isConnected + ", connectTime=" + this.connectTime + ", state=" + this.state + ", isExternal=" + this.isExternal + ", model=" + this.features + ", isSupportAcc=" + this.isSupportAcc + ", isSupportGyro=" + this.isSupportGyro + "]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeLong(this.connectTime);
      if (this.deviceAddr == null) {
         this.deviceAddr = "";
      }

      var1.writeString(this.deviceAddr);
      var1.writeInt(this.deviceId);
      if (this.deviceName == null) {
         this.deviceName = "Unknown";
      }

      var1.writeString(this.deviceName);
      var1.writeInt(this.deviceType);
      byte var4;
      if (this.isConnected) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeInt(var4);
      var1.writeInt(this.playerOrder);
      var1.writeInt(this.state);
      byte var5;
      if (this.isExternal) {
         var5 = var3;
      } else {
         var5 = 0;
      }

      var1.writeInt(var5);
      var1.writeInt(this.features);
      byte var6;
      if (this.isSupportAcc) {
         var6 = var3;
      } else {
         var6 = 0;
      }

      var1.writeInt(var6);
      if (!this.isSupportGyro) {
         var3 = 0;
      }

      var1.writeInt(var3);
   }
}
