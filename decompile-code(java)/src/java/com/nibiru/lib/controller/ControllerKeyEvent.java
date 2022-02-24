package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Parcelable.Creator;
import android.view.KeyEvent;

public class ControllerKeyEvent implements Parcelable {
   public static final int ACTION_DOWN = 0;
   public static final int ACTION_UP = 1;
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new ControllerKeyEvent(var1);
      }
   };
   public static int[] GameKeys = new int[]{99, 97, 102, 105, 103, 104, 109, 108, 98, 96, 20, 21, 22, 19};
   public static final int KEYCODE_BUTTON_A = 99;
   public static final int KEYCODE_BUTTON_B = 97;
   public static final int KEYCODE_BUTTON_BACK = 4;
   public static final int KEYCODE_BUTTON_ENTER = 23;
   public static final int KEYCODE_BUTTON_HOME = 3;
   public static final int KEYCODE_BUTTON_L1 = 102;
   public static final int KEYCODE_BUTTON_L2 = 104;
   public static final int KEYCODE_BUTTON_R1 = 103;
   public static final int KEYCODE_BUTTON_R2 = 105;
   public static final int KEYCODE_BUTTON_SELECT = 109;
   public static final int KEYCODE_BUTTON_START = 108;
   public static final int KEYCODE_BUTTON_THUMBL = 106;
   public static final int KEYCODE_BUTTON_THUMBR = 107;
   public static final int KEYCODE_BUTTON_VOL_DOWN = 25;
   public static final int KEYCODE_BUTTON_VOL_UP = 24;
   public static final int KEYCODE_BUTTON_X = 98;
   public static final int KEYCODE_BUTTON_Y = 96;
   public static final int KEYCODE_DOWN = 20;
   public static final int KEYCODE_DOWN_LEFT = 127;
   public static final int KEYCODE_DOWN_RIGHT = 128;
   public static final int KEYCODE_LEFT = 21;
   public static final int KEYCODE_RIGHT = 22;
   public static final int KEYCODE_UP = 19;
   public static final int KEYCODE_UP_LEFT = 125;
   public static final int KEYCODE_UP_RIGHT = 126;
   public static final int STATE_CONN = 1;
   public static final int STATE_CONNING = 0;
   public static final int STATE_DISCONN = 3;
   public static final int STATE_DISCONNING = 2;
   public static int[] SystemKeys = new int[]{3, 23, 4, 25, 24};
   private int action;
   private long bc;
   private boolean isExternal;
   private int keycode;
   private int playerOrder;
   private long time;

   public ControllerKeyEvent() {
      this.isExternal = false;
   }

   public ControllerKeyEvent(int var1, int var2, int var3) {
      this.isExternal = false;
      this.action = var1;
      this.keycode = var2;
      this.playerOrder = var3;
      this.time = SystemClock.uptimeMillis();
   }

   public ControllerKeyEvent(int var1, KeyEvent var2, int var3) {
      this.isExternal = false;
      this.action = var2.getAction();
      if (var3 > 0) {
         this.keycode = var3;
      } else {
         this.keycode = var2.getKeyCode();
      }

      this.playerOrder = var1;
      this.time = var2.getDownTime();
   }

   public ControllerKeyEvent(Parcel var1) {
      byte var2 = 1;
      super();
      this.isExternal = false;
      this.action = var1.readInt();
      this.keycode = var1.readInt();
      this.playerOrder = var1.readInt();
      this.time = var1.readLong();
      if (var1.readInt() != var2) {
         var2 = 0;
      }

      this.isExternal = (boolean)var2;
   }

   public ControllerKeyEvent(ControllerKeyEvent var1) {
      this.isExternal = false;
      this.keycode = var1.keycode;
      this.action = var1.action;
      this.playerOrder = var1.playerOrder;
      this.time = var1.time;
      this.isExternal = var1.isExternal;
   }

   public static String descriptionKey(int var0) {
      switch(var0) {
      case 3:
         return "KEYCODE_BUTTON_HOME";
      case 4:
         return "KEYCODE_BUTTON_BACK";
      case 19:
         return "KEYCODE_UP";
      case 20:
         return "KEYCODE_DOWN";
      case 21:
         return "KEYCODE_LEFT";
      case 22:
         return "KEYCODE_RIGHT";
      case 23:
         return "KEYCODE_BUTTON_ENTER";
      case 96:
         return "KEYCODE_BUTTON_Y";
      case 97:
         return "KEYCODE_BUTTON_B";
      case 98:
         return "KEYCODE_BUTTON_X";
      case 99:
         return "KEYCODE_BUTTON_A";
      case 102:
         return "KEYCODE_BUTTON_L1";
      case 103:
         return "KEYCODE_BUTTON_R1";
      case 104:
         return "KEYCODE_BUTTON_L2";
      case 105:
         return "KEYCODE_BUTTON_R2";
      case 108:
         return "KEYCODE_BUTTON_START";
      case 109:
         return "KEYCODE_BUTTON_SELECT";
      case 125:
         return "KEYCODE_UP_LEFT";
      case 126:
         return "KEYCODE_UP_RIGHT";
      case 127:
         return "KEYCODE_DOWN_LEFT";
      case 128:
         return "KEYCODE_DOWN_RIGHT";
      default:
         return "UNKNOWN BUTTON";
      }
   }

   public static String getInputStr(KeyEvent var0) {
      return var0.getAction() + " " + var0.getKeyCode();
   }

   public static KeyEvent getKeyEvent2(int var0, int var1) {
      return var1 >= 0 && var1 <= 255 ? new KeyEvent(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), var0, var1, 0, 0, 65535, 0, 8) : null;
   }

   public static boolean isControllerSupportKeyCode(int var0) {
      switch(var0) {
      case 19:
      case 20:
      case 21:
      case 22:
      case 96:
      case 97:
      case 98:
      case 99:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 125:
      case 126:
      case 127:
      case 128:
         return true;
      default:
         return false;
      }
   }

   public static boolean isSystemExKeyCode(int var0) {
      switch(var0) {
      case 3:
      case 4:
      case 24:
      case 25:
      case 26:
      case 111:
      case 164:
      case 187:
         return true;
      default:
         return false;
      }
   }

   public static boolean isSystemKeyCode(int var0) {
      switch(var0) {
      case 3:
      case 4:
      case 23:
      case 24:
      case 25:
      case 26:
      case 82:
      case 111:
         return true;
      default:
         return false;
      }
   }

   public int describeContents() {
      return 1032;
   }

   public String descriptionKey() {
      return descriptionKey(this.keycode);
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (var1 == null) {
            return false;
         }

         if (this.getClass() != var1.getClass()) {
            return false;
         }

         ControllerKeyEvent var2 = (ControllerKeyEvent)var1;
         if (this.action != var2.action) {
            return false;
         }

         if (this.keycode != var2.keycode) {
            return false;
         }

         if (this.playerOrder != var2.playerOrder) {
            return false;
         }
      }

      return true;
   }

   public int getAction() {
      return this.action;
   }

   public long getEventTime() {
      return this.bc;
   }

   public KeyEvent getJoystickKeyEvent(int var1, int var2) {
      int var3;
      if (var1 <= 0) {
         var3 = this.keycode;
      } else {
         var3 = var1;
      }

      return new KeyEvent(this.time, this.time, this.action, var3, 0, 0, 65535, var2, 8);
   }

   public int getKeyCode() {
      return this.keycode;
   }

   public KeyEvent getKeyEvent() {
      return new KeyEvent(this.time, SystemClock.uptimeMillis(), this.action, this.keycode, 0, 0, 65535, 0, 2);
   }

   public KeyEvent getKeyEvent(int var1, int var2) {
      int var3;
      if (var1 > 0 && var1 <= 255) {
         var3 = var1;
      } else {
         var3 = this.keycode;
      }

      return new KeyEvent(this.time, SystemClock.uptimeMillis(), this.action, var3, 0, 0, 65535, var2, 2);
   }

   public KeyEvent getKeyEvent(int var1, int var2, int var3) {
      return new KeyEvent(this.time, SystemClock.uptimeMillis(), this.action, this.keycode, 0, var1, var2, var3, 2);
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public long getTime() {
      return this.time;
   }

   public int hashCode() {
      return 31 * (31 * (31 + this.action) + this.keycode) + this.playerOrder;
   }

   public boolean isArrow() {
      return this.keycode >= 19 && this.keycode <= 22;
   }

   public boolean isExternal() {
      return this.isExternal;
   }

   public boolean isValidKeyEvent(ControllerKeyEvent var1) {
      return var1.getAction() != this.action || this.keycode != var1.getKeyCode() || Math.abs(this.time - var1.getTime()) > 300L;
   }

   public void setAction(int var1) {
      this.action = var1;
   }

   public void setEventTime(long var1) {
      this.bc = var1;
   }

   public void setExternal(boolean var1) {
      this.isExternal = var1;
   }

   public void setKeyCode(int var1) {
      this.keycode = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setTime(long var1) {
      this.time = var1;
   }

   public String toString() {
      return "ControllerKeyEvent [" + this.descriptionKey() + " action=" + this.action + ", keycode=" + this.keycode + ", playerOrder=" + this.playerOrder + ", time=" + this.time + ", evenTime=" + this.bc + ", delay: " + (this.bc - this.time) + "ms ]";
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeInt(this.action);
      var1.writeInt(this.keycode);
      var1.writeInt(this.playerOrder);
      var1.writeLong(this.time);
      byte var3;
      if (this.isExternal) {
         var3 = 1;
      } else {
         var3 = 0;
      }

      var1.writeInt(var3);
   }
}
