package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Parcelable.Creator;
import java.math.BigDecimal;

public class AccEvent implements Parcelable {
   public static final int ACC_AXIS_X = 0;
   public static final int ACC_AXIS_Y = 1;
   public static final int ACC_AXIS_Z = 2;
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new AccEvent(var1);
      }
   };
   public static final int MAX_VALUE = 65536;
   private int aA;
   private int aB;
   private int aC;
   private int playerOrder;
   private long time;

   public AccEvent() {
   }

   public AccEvent(Parcel var1) {
      this.time = var1.readLong();
      this.playerOrder = var1.readInt();
      this.aA = var1.readInt();
      this.aB = var1.readInt();
      this.aC = var1.readInt();
   }

   public AccEvent(AccEvent var1) {
      this.time = var1.time;
      this.playerOrder = var1.playerOrder;
      this.aA = var1.aA;
      this.aB = var1.aB;
      this.aC = var1.aC;
   }

   public AccEvent(byte[] var1, int var2) {
      int var3 = 255 & var1[0];
      int var4 = 255 & var1[1];
      int var5 = 255 & var1[2];
      int var6 = 255 & var1[3];
      int var7 = 255 & var1[4];
      int var8 = 255 & var1[5];
      this.aA = var4 + (var3 << 8);
      this.aB = var6 + (var5 << 8);
      this.aC = var8 + (var7 << 8);
      if (this.aA >= 32768) {
         this.aA -= 65536;
      }

      if (this.aB >= 32768) {
         this.aB -= 65536;
      }

      if (this.aC >= 32768) {
         this.aC -= 65536;
      }

      this.playerOrder = var2;
      this.time = SystemClock.uptimeMillis();
   }

   public static AccEvent getDefaultAccEvent(int var0) {
      AccEvent var1 = new AccEvent();
      var1.aA = 32768;
      var1.aB = 32768;
      var1.aC = 32768;
      var1.playerOrder = var0;
      var1.time = SystemClock.uptimeMillis();
      return var1;
   }

   public static double getFormatData(double var0, boolean var2) {
      double var3 = (new BigDecimal(var0)).setScale(3, 4).doubleValue();
      if (var2) {
         if (Math.abs(var3 - 0.5D) < 0.02D) {
            return 0.5D;
         }
      } else if (Math.abs(var3) < 0.02D) {
         return 0.0D;
      }

      return var3;
   }

   public int describeContents() {
      return 0;
   }

   public double getAccValue(int var1) {
      switch(var1) {
      case 0:
         return getFormatData((double)((float)this.aA / 32768.0F), false);
      case 1:
         return getFormatData((double)((float)this.aB / 32768.0F), false);
      case 2:
         return getFormatData((double)((float)this.aC / 32768.0F), true);
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

   public boolean isEquals(AccEvent var1) {
      return this.playerOrder == var1.getPlayerOrder() && Math.abs(this.aA - var1.aA) < 655 && Math.abs(this.aB - var1.aB) < 655 && Math.abs(this.aC - var1.aC) < 655;
   }

   public void setAxisValue(int[] var1) {
      if (var1 != null && var1.length >= 3) {
         this.aA = var1[0];
         this.aB = var1[1];
         this.aC = var1[2];
      }
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setTime(long var1) {
      this.time = var1;
   }

   public String toString() {
      return "AccEvent [time=" + this.time + ", playerOrder=" + this.playerOrder + ", accX=" + this.getAccValue(0) + ", accY=" + this.getAccValue(1) + ", accZ=" + this.getAccValue(2) + "]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeLong(this.time);
      var1.writeInt(this.playerOrder);
      var1.writeInt(this.aA);
      var1.writeInt(this.aB);
      var1.writeInt(this.aC);
   }
}
