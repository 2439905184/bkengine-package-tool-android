package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Parcelable.Creator;
import java.math.BigDecimal;

public class GyroEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new GyroEvent(var1);
      }
   };
   public static final int GYRO_AXIS_X = 0;
   public static final int GYRO_AXIS_Y = 1;
   public static final int GYRO_AXIS_Z = 2;
   public static final int MAX_VALUE = 65536;
   private int dE;
   private int dF;
   private int dG;
   private int playerOrder;
   private long time;

   public GyroEvent() {
   }

   public GyroEvent(Parcel var1) {
      this.time = var1.readLong();
      this.playerOrder = var1.readInt();
      this.dE = var1.readInt();
      this.dF = var1.readInt();
      this.dG = var1.readInt();
   }

   public GyroEvent(GyroEvent var1) {
      this.time = var1.time;
      this.playerOrder = var1.playerOrder;
      this.dE = var1.dE;
      this.dF = var1.dF;
      this.dG = var1.dG;
   }

   public GyroEvent(byte[] var1, int var2) {
      int var3 = 255 & var1[0];
      int var4 = 255 & var1[1];
      int var5 = 255 & var1[2];
      int var6 = 255 & var1[3];
      int var7 = 255 & var1[4];
      int var8 = 255 & var1[5];
      this.dE = var4 + (var3 << 8);
      this.dF = var6 + (var5 << 8);
      this.dG = var8 + (var7 << 8);
      if (this.dE >= 32768) {
         this.dE -= 65536;
      }

      if (this.dF >= 32768) {
         this.dF -= 65536;
      }

      if (this.dG >= 32768) {
         this.dG -= 65536;
      }

      this.playerOrder = var2;
      this.time = SystemClock.uptimeMillis();
   }

   public static GyroEvent getDefaultGyroEvent(int var0) {
      GyroEvent var1 = new GyroEvent();
      var1.dE = 32768;
      var1.dF = 32768;
      var1.dG = 32768;
      var1.playerOrder = var0;
      var1.time = SystemClock.uptimeMillis();
      return var1;
   }

   public static double getFormatData(double var0) {
      double var2 = (new BigDecimal(var0)).setScale(3, 4).doubleValue();
      if (Math.abs(var2) < 0.02D) {
         var2 = 0.0D;
      }

      return var2;
   }

   public int describeContents() {
      return 0;
   }

   public double getGyroValue(int var1) {
      switch(var1) {
      case 0:
         return getFormatData((double)((float)this.dE / 32768.0F));
      case 1:
         return getFormatData((double)((float)this.dF / 32768.0F));
      case 2:
         return getFormatData((double)((float)this.dG / 32768.0F));
      default:
         return 0.0D;
      }
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public long getTime() {
      return this.time;
   }

   public boolean isEquals(GyroEvent var1) {
      return this.playerOrder == var1.getPlayerOrder() && Math.abs(this.dE - var1.dE) < 655 && Math.abs(this.dF - var1.dF) < 655 && Math.abs(this.dG - var1.dG) < 655;
   }

   public void setAxisValue(int[] var1) {
      if (var1 != null && var1.length >= 3) {
         this.dE = var1[0];
         this.dF = var1[1];
         this.dG = var1[2];
      }
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setTime(long var1) {
      this.time = var1;
   }

   public String toString() {
      return "GyroEvent [time=" + this.time + ", playerOrder=" + this.playerOrder + ", gyroX=" + this.getGyroValue(0) + ", gyroY=" + this.getGyroValue(1) + ", gyroZ=" + this.getGyroValue(2) + "]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeLong(this.time);
      var1.writeInt(this.playerOrder);
      var1.writeInt(this.dE);
      var1.writeInt(this.dF);
      var1.writeInt(this.dG);
   }
}
