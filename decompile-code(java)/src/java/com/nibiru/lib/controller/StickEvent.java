package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import com.nibiru.lib.BTUtil;

public class StickEvent implements Parcelable {
   public static final int ACTION_MOVE = 0;
   public static final int AXIS_HAT_X = 4;
   public static final int AXIS_HAT_Y = 5;
   public static final int AXIS_RZ = 3;
   public static final int AXIS_X = 0;
   public static final int AXIS_Y = 1;
   public static final int AXIS_Z = 2;
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new StickEvent(var1);
      }
   };
   public static final int TRANS_HAT_MASK = 4096;
   public static final int TRANS_RZ_MASK = 2048;
   public static final int TRANS_X_MASK = 256;
   public static final int TRANS_Y_MASK = 512;
   public static final int TRANS_Z_MASK = 1024;
   private int action;
   private long bc;
   private int[] eo;
   private boolean ep;
   private boolean eq;
   private boolean er;
   private int playerOrder;
   private long time;

   public StickEvent() {
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;
      this.er = false;
   }

   public StickEvent(byte var1, byte var2, byte var3, byte var4, int var5, int var6, int var7, boolean var8) {
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;
      this.er = false;
      this.a(var1, var2, var3, var4, var5, var6, var7, var8);
   }

   public StickEvent(int var1, int var2, boolean var3) {
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;
      this.er = false;
      if (var1 == 21) {
         if (!var3) {
            this.a((byte)0, (byte)-128, (byte)-128, (byte)-128, 0, 0, var2, false);
            return;
         }

         this.a((byte)-128, (byte)-128, (byte)0, (byte)-128, 0, 0, var2, false);
      } else {
         if (var1 == 22) {
            if (var3) {
               this.a((byte)-128, (byte)-128, (byte)-1, (byte)-128, 0, 0, var2, false);
               return;
            }

            this.a((byte)-1, (byte)-128, (byte)-128, (byte)-128, 0, 0, var2, false);
            return;
         }

         if (var1 == 20) {
            if (var3) {
               this.a((byte)-128, (byte)-128, (byte)-128, (byte)0, 0, 0, var2, false);
               return;
            }

            this.a((byte)-128, (byte)0, (byte)-128, (byte)-128, 0, 0, var2, false);
            return;
         }

         if (var1 == 19) {
            if (var3) {
               this.a((byte)-128, (byte)-128, (byte)-128, (byte)-1, 0, 0, var2, false);
               return;
            }

            this.a((byte)-128, (byte)-1, (byte)-128, (byte)-128, 0, 0, var2, false);
            return;
         }
      }

   }

   public StickEvent(Parcel var1) {
      byte var2 = 1;
      super();
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;
      this.er = false;
      this.playerOrder = var1.readInt();
      this.action = var1.readInt();
      byte var3;
      if (var1.readInt() > 0) {
         var3 = var2;
      } else {
         var3 = 0;
      }

      this.ep = (boolean)var3;
      this.time = var1.readLong();
      if (this.eo == null) {
         this.eo = new int[6];
      }

      this.eo[0] = var1.readInt();
      this.eo[var2] = var1.readInt();
      this.eo[2] = var1.readInt();
      this.eo[3] = var1.readInt();
      this.eo[4] = var1.readInt();
      this.eo[5] = var1.readInt();
      byte var4;
      if (var1.readInt() == var2) {
         var4 = var2;
      } else {
         var4 = 0;
      }

      this.eq = (boolean)var4;
      if (var1.readInt() != var2) {
         var2 = 0;
      }

      this.er = (boolean)var2;
   }

   public StickEvent(MotionEvent var1, int var2, int var3) {
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;
      this.er = false;
      if (BTUtil.getAndroidVersion() >= 12) {
         float var4 = a(var1.getAxisValue(0));
         float var5 = a(var1.getAxisValue(1));
         float var6 = a(var1.getAxisValue(11));
         float var7 = a(var1.getAxisValue(14));
         float var8 = a(var1.getAxisValue(15));
         float var9 = a(var1.getAxisValue(16));
         this.eo[0] = this.a(var4, 0, var3);
         this.eo[1] = this.a(var5, 1, var3);
         this.eo[2] = this.a(var6, 2, var3);
         this.eo[3] = this.a(var7, 3, var3);
         this.eo[4] = this.a(var8, 4, var3);
         this.eo[5] = this.a(var9, 5, var3);
         if (((double)Math.abs(var8) > 0.01D || (double)Math.abs(var9) > 0.01D) && (var3 & 4096) > 0) {
            this.eo[0] = this.a(var8, 0, var3);
            this.eo[1] = this.a(var9, 1, var3);
            this.eo[4] = 128;
            this.eo[5] = 128;
         }

         this.playerOrder = var2;
         this.action = 0;
         this.time = SystemClock.uptimeMillis();
      }
   }

   public StickEvent(StickEvent var1) {
      int var2 = 0;
      super();
      this.eo = new int[6];
      this.ep = false;
      this.eq = false;

      for(this.er = false; var2 < this.eo.length; ++var2) {
         this.eo[var2] = var1.eo[var2];
      }

      this.time = var1.time;
      this.ep = var1.ep;
      this.playerOrder = var1.playerOrder;
      this.action = var1.action;
      this.eq = var1.eq;
      this.er = var1.er;
   }

   private static float a(float var0) {
      if ((double)Math.abs(var0) < 0.02D) {
         var0 = 0.0F;
      }

      return var0;
   }

   private int a(float var1, int var2, int var3) {
      boolean var4 = true;
      int var5;
      switch(var2) {
      case 0:
         var5 = var3 & 256;
         break;
      case 1:
         var5 = var3 & 512;
         var4 = false;
         break;
      case 2:
         var5 = var3 & 1024;
         break;
      case 3:
         var5 = var3 & 2048;
         var4 = false;
         break;
      case 4:
      case 5:
         return d((int)(var1 * 128.0F));
      default:
         return 128;
      }

      int var6;
      if (var5 == 0) {
         if (!var4) {
            var6 = (int)(128.0F * (1.0F - var1));
            return d(var6);
         }
      } else if (var4) {
         var6 = (int)(128.0F * (1.0F - var1));
         return d(var6);
      }

      var6 = (int)(128.0F * (var1 + 1.0F));
      return d(var6);
   }

   private void a(byte var1, byte var2, byte var3, byte var4, int var5, int var6, int var7, boolean var8) {
      if (this.eo == null) {
         this.eo = new int[4];
      }

      this.eo[0] = var1 & 255;
      this.eo[1] = var2 & 255;
      this.eo[2] = var3 & 255;
      this.eo[3] = var4 & 255;
      this.eo[4] = var5;
      this.eo[5] = var6;

      for(int var9 = 0; var9 < 4; ++var9) {
         if (this.eo[var9] > 115 && this.eo[var9] < 140) {
            this.eo[var9] = 128;
         }
      }

      this.playerOrder = var7;
      this.action = 0;
      this.ep = var8;
      this.time = SystemClock.uptimeMillis();
   }

   private static int d(int var0) {
      int var1;
      if (var0 < 0) {
         var1 = 0;
      } else {
         var1 = var0;
      }

      return var1 > 256 ? 256 : var1;
   }

   public static StickEvent getDefaultStickEvent(int var0) {
      return new StickEvent((byte)-128, (byte)-128, (byte)-128, (byte)-128, 0, 0, var0, false);
   }

   public static String getInputStr(MotionEvent var0) {
      int var1 = 0;
      StringBuilder var2 = new StringBuilder();
      int var3 = var0.getAction();
      var2.append(var3 + " ");
      int var5 = var0.getPointerCount();
      var2.append(var5 + " ");
      int var7;
      if (var5 > 1) {
         var7 = var3 >> 8;
      } else {
         var7 = 0;
      }

      var2.append(var7);

      while(var1 < var5) {
         var2.append(" ");
         PointerCoords var10 = new PointerCoords();
         var0.getPointerCoords(var1, var10);
         PointerProperties var11 = new PointerProperties();
         var0.getPointerProperties(var1, var11);
         var2.append(var11.id + " " + var10.x + " " + var10.y);
         ++var1;
      }

      return var2.toString();
   }

   public static SupportMotionEvent translateTouch(float var0, float var1, int var2, int var3, int var4, int var5, int var6) {
      Class var9 = StickEvent.class;
      synchronized(StickEvent.class){}

      SupportMotionEvent var7;
      try {
         var7 = new SupportMotionEvent(var0, var1, var2, var3, var4, var5, var6);
      } finally {
         ;
      }

      return var7;
   }

   public static SupportMotionEvent translateTouch(int var0, int var1, int var2, int var3) {
      Class var6 = StickEvent.class;
      synchronized(StickEvent.class){}

      SupportMotionEvent var4;
      try {
         var4 = new SupportMotionEvent((float)var0, (float)var1, var2, var3);
      } finally {
         ;
      }

      return var4;
   }

   public static SupportMotionEvent translateTouch(SparseArray var0, int var1, int var2) {
      Class var5 = StickEvent.class;
      synchronized(StickEvent.class){}

      SupportMotionEvent var3;
      try {
         var3 = new SupportMotionEvent(var0, var1, var2);
      } finally {
         ;
      }

      return var3;
   }

   public static MotionEvent translateTouch2(int var0, int var1, int var2, int var3) {
      long var4 = SystemClock.uptimeMillis();
      if (BTUtil.getAndroidVersion() < 12) {
         return MotionEvent.obtain(var4, var4, var2, (float)var0, (float)var1, 0.6F, 0.3F, 0, 0.0F, 0.0F, 65535, 0);
      } else {
         PointerCoords[] var6 = new PointerCoords[]{new PointerCoords()};
         var6[0].x = (float)var0;
         var6[0].y = (float)var1;
         var6[0].pressure = 0.68F;
         var6[0].size = 0.6F;
         var6[0].setAxisValue(0, (float)var0);
         var6[0].setAxisValue(1, (float)var1);
         int[] var7 = new int[]{var3};
         if (BTUtil.getAndroidVersion() >= 14) {
            PointerProperties[] var8 = new PointerProperties[]{new PointerProperties()};
            var8[0].clear();
            var8[0].id = var3;
            var8[0].toolType = 1;
            return MotionEvent.obtain(var4, 20L + var4, var2, 1, var8, var6, 0, 0, 0.0F, 0.0F, 65535, 0, 4098, 0);
         } else {
            return MotionEvent.obtain(var4, 20L + var4, var2, 1, var7, var6, 0, 0.0F, 0.0F, 65535, 0, 4098, 0);
         }
      }
   }

   public int describeContents() {
      return 1033;
   }

   public int getAction() {
      return this.action;
   }

   public float getAxisValue(int var1) {
      if (this.eo != null) {
         float var2;
         switch(var1) {
         case 0:
            var2 = ((float)this.eo[0] - 128.0F) / 128.0F;
            break;
         case 1:
            var2 = (128.0F - (float)this.eo[1]) / 128.0F;
            break;
         case 2:
            var2 = ((float)this.eo[2] - 128.0F) / 128.0F;
            break;
         case 3:
            var2 = (128.0F - (float)this.eo[3]) / 128.0F;
            break;
         case 4:
            return (float)this.eo[4];
         case 5:
            return (float)this.eo[5];
         default:
            var2 = 0.0F;
         }

         if ((double)var2 >= 0.08D || (double)var2 <= -0.08D) {
            return var2;
         }
      }

      return 0.0F;
   }

   public int[] getAxisValue() {
      return this.eo;
   }

   public long getEventTime() {
      return this.bc;
   }

   public MotionEvent getMotionEvent() {
      if (BTUtil.getAndroidVersion() < 12) {
         return MotionEvent.obtain(this.time, this.time, this.action, this.getAxisValue(0), this.getAxisValue(1), 0.6F, 0.3F, 0, 0.0F, 0.0F, 65535, 0);
      } else {
         PointerCoords var1 = new PointerCoords();
         var1.setAxisValue(0, this.getAxisValue(0));
         var1.setAxisValue(1, this.getAxisValue(1));
         var1.setAxisValue(11, this.getAxisValue(2));
         var1.setAxisValue(14, this.getAxisValue(3));
         var1.setAxisValue(15, this.getAxisValue(4));
         var1.setAxisValue(16, this.getAxisValue(5));
         PointerCoords[] var2 = new PointerCoords[]{var1};
         if (BTUtil.getAndroidVersion() < 14) {
            int[] var3 = new int[]{0};
            return MotionEvent.obtain(this.time, this.time, 2, 1, var3, var2, 0, 0.0F, 0.0F, '\ufffa' + this.playerOrder, 0, 16777232, 0);
         } else {
            PointerProperties[] var4 = new PointerProperties[]{new PointerProperties()};
            var4[0].clear();
            var4[0].id = 0;
            return MotionEvent.obtain(this.time, this.time, 2, 1, var4, var2, 0, 0, 0.0F, 0.0F, '\ufffa' + this.playerOrder, 0, 16777232, 0);
         }
      }
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public int getRawLX() {
      return this.eo == null ? 0 : -128 + this.eo[0];
   }

   public int getRawLY() {
      return this.eo == null ? 0 : 128 - this.eo[1];
   }

   public int getRawRX() {
      return this.eo == null ? 0 : -128 + this.eo[2];
   }

   public int getRawRY() {
      return this.eo == null ? 0 : 128 - this.eo[3];
   }

   public long getTime() {
      return this.time;
   }

   public boolean hasLeftStickChanged() {
      return this.eq;
   }

   public boolean hasRightStickChanged() {
      return this.er;
   }

   public boolean isEquals(StickEvent var1) {
      int[] var2 = var1.getAxisValue();

      for(int var3 = 0; var3 < 4; ++var3) {
         if (Math.abs(var2[var3] - this.eo[var3]) >= 7) {
            GlobalLog.e("stick event return false");
            return false;
         }
      }

      if (var2[4] == this.eo[4] && var2[5] == this.eo[5]) {
         GlobalLog.e("stick event return true");
         return true;
      } else {
         GlobalLog.e("stick event return false1");
         return false;
      }
   }

   public boolean isHatStickEvent() {
      int[] var1 = this.eo;
      return (double)var1[4] < -1.0E-6D && (double)var1[4] > 1.0E-6D || (double)var1[5] < -1.0E-6D && (double)var1[5] > 1.0E-6D;
   }

   public boolean isHatValue() {
      return this.ep;
   }

   public boolean isOriginPos() {
      int var1 = 0;

      boolean var3;
      while(true) {
         if (var1 >= this.eo.length) {
            var3 = true;
            break;
         }

         int var2 = this.eo[var1];
         var3 = false;
         if (var2 != 0) {
            break;
         }

         ++var1;
      }

      return var3;
   }

   public void processData(boolean[] var1) {
      for(int var2 = 0; var2 < 4; ++var2) {
         int var3 = this.eo[var2];
         if (var3 > 210) {
            if (!var1[var2] && var3 < 250) {
               var1[var2] = true;
            } else {
               this.eo[var2] = 256;
            }
         } else if (var3 < 135) {
            var1[var2] = false;
         }
      }

   }

   public void setAction(int var1) {
      this.action = var1;
   }

   public void setAxisValue(int[] var1) {
      if (var1 != null) {
         this.eo = var1;
      }
   }

   public void setEventTime(long var1) {
      this.bc = var1;
   }

   public void setLeftStickState(boolean var1) {
      this.eq = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setRightStickState(boolean var1) {
      this.er = var1;
   }

   public void setTime(long var1) {
      this.time = var1;
   }

   public String toString() {
      return "StickEvent [axisValue= X:" + this.getAxisValue(0) + " Y: " + this.getAxisValue(1) + " Z: " + this.getAxisValue(2) + " RZ: " + this.getAxisValue(3) + " HAT_X: " + this.getAxisValue(4) + " HAT_Y: " + this.getAxisValue(5) + ", time=" + this.time + ", eventTime: " + this.bc + ", delay: " + (this.bc - this.time) + "ms, action=" + this.action + ", playerOrder=" + this.playerOrder + ", isLeftChanged=" + this.eq + ", isRightChanged=" + this.er + "]";
   }

   public void transXYMode() {
      this.eo[0] = this.eo[4];
      this.eo[1] = this.eo[5];
      this.eo[4] = 128;
      this.eo[5] = 128;
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeInt(this.playerOrder);
      var1.writeInt(this.action);
      byte var4;
      if (this.ep) {
         var4 = var3;
      } else {
         var4 = 0;
      }

      var1.writeInt(var4);
      var1.writeLong(this.time);
      if (this.eo == null) {
         this.eo = new int[6];
      }

      var1.writeInt(this.eo[0]);
      var1.writeInt(this.eo[var3]);
      var1.writeInt(this.eo[2]);
      var1.writeInt(this.eo[3]);
      var1.writeInt(this.eo[4]);
      var1.writeInt(this.eo[5]);
      byte var5;
      if (this.eq) {
         var5 = var3;
      } else {
         var5 = 0;
      }

      var1.writeInt(var5);
      if (!this.er) {
         var3 = 0;
      }

      var1.writeInt(var3);
   }
}
