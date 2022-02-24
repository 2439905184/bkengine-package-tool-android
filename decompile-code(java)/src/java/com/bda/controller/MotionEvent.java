package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;

public final class MotionEvent extends BaseEvent implements Parcelable {
   public static final int AXIS_LTRIGGER = 17;
   public static final int AXIS_RTRIGGER = 18;
   public static final int AXIS_RZ = 14;
   public static final int AXIS_X = 0;
   public static final int AXIS_Y = 1;
   public static final int AXIS_Z = 11;
   public static final Creator CREATOR = new MotionEvent.ParcelableCreator();
   final SparseArray mAxis;
   final SparseArray mPrecision;

   public MotionEvent(long var1, int var3, float var4, float var5, float var6, float var7, float var8, float var9) {
      super(var1, var3);
      this.mAxis = new SparseArray(4);
      this.mAxis.put(0, var4);
      this.mAxis.put(1, var5);
      this.mAxis.put(11, var6);
      this.mAxis.put(14, var7);
      this.mPrecision = new SparseArray(2);
      this.mPrecision.put(0, var8);
      this.mPrecision.put(1, var9);
   }

   public MotionEvent(long var1, int var3, int[] var4, float[] var5, int[] var6, float[] var7) {
      super(var1, var3);
      int var8 = var4.length;
      this.mAxis = new SparseArray(var8);

      for(int var9 = 0; var9 < var8; ++var9) {
         this.mAxis.put(var4[var9], var5[var9]);
      }

      int var10 = var6.length;
      this.mPrecision = new SparseArray(var10);

      for(int var11 = 0; var11 < var10; ++var11) {
         this.mPrecision.put(var6[var11], var7[var11]);
      }

   }

   MotionEvent(Parcel var1) {
      super(var1);
      int var2 = var1.readInt();
      this.mAxis = new SparseArray(var2);

      for(int var3 = 0; var3 < var2; ++var3) {
         int var4 = var1.readInt();
         float var5 = var1.readFloat();
         this.mAxis.put(var4, var5);
      }

      this.mPrecision = new SparseArray(var1.readInt());

      for(int var6 = 0; var6 < var2; ++var6) {
         int var7 = var1.readInt();
         float var8 = var1.readFloat();
         this.mPrecision.put(var7, var8);
      }

   }

   public int describeContents() {
      return 0;
   }

   public final int findPointerIndex(int var1) {
      return -1;
   }

   public final float getAxisValue(int var1) {
      return this.getAxisValue(var1, 0);
   }

   public final float getAxisValue(int var1, int var2) {
      float var3 = 0.0F;
      if (var2 == 0) {
         var3 = (Float)this.mAxis.get(var1, 0.0F);
      }

      return var3;
   }

   public final int getPointerCount() {
      return 1;
   }

   public final int getPointerId(int var1) {
      return 0;
   }

   public final float getRawX() {
      return this.getX();
   }

   public final float getRawY() {
      return this.getY();
   }

   public final float getX() {
      return this.getAxisValue(0, 0);
   }

   public final float getX(int var1) {
      return this.getAxisValue(0, var1);
   }

   public final float getXPrecision() {
      return (Float)this.mPrecision.get(0, 0.0F);
   }

   public final float getY() {
      return this.getAxisValue(1, 0);
   }

   public final float getY(int var1) {
      return this.getAxisValue(1, var1);
   }

   public final float getYPrecision() {
      return (Float)this.mPrecision.get(1, 0.0F);
   }

   public void writeToParcel(Parcel var1, int var2) {
      super.writeToParcel(var1, var2);
      int var3 = this.mAxis.size();
      var1.writeInt(var3);

      for(int var4 = 0; var4 < var3; ++var4) {
         var1.writeInt(this.mAxis.keyAt(var4));
         var1.writeFloat((Float)this.mAxis.valueAt(var4));
      }

      int var5 = this.mPrecision.size();
      var1.writeInt(var5);

      for(int var6 = 0; var6 < var5; ++var6) {
         var1.writeInt(this.mPrecision.keyAt(var6));
         var1.writeFloat((Float)this.mPrecision.valueAt(var6));
      }

   }

   static class ParcelableCreator implements Creator {
      public MotionEvent createFromParcel(Parcel var1) {
         return new MotionEvent(var1);
      }

      public MotionEvent[] newArray(int var1) {
         return new MotionEvent[var1];
      }
   }
}
