package com.bda.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class KeyEvent extends BaseEvent implements Parcelable {
   public static final int ACTION_DOWN = 0;
   public static final int ACTION_UP = 1;
   public static final Creator CREATOR = new KeyEvent.ParcelableCreator();
   public static final int KEYCODE_BUTTON_A = 96;
   public static final int KEYCODE_BUTTON_B = 97;
   public static final int KEYCODE_BUTTON_L1 = 102;
   public static final int KEYCODE_BUTTON_L2 = 104;
   public static final int KEYCODE_BUTTON_R1 = 103;
   public static final int KEYCODE_BUTTON_R2 = 105;
   public static final int KEYCODE_BUTTON_SELECT = 109;
   public static final int KEYCODE_BUTTON_START = 108;
   public static final int KEYCODE_BUTTON_THUMBL = 106;
   public static final int KEYCODE_BUTTON_THUMBR = 107;
   public static final int KEYCODE_BUTTON_X = 99;
   public static final int KEYCODE_BUTTON_Y = 100;
   public static final int KEYCODE_DPAD_DOWN = 20;
   public static final int KEYCODE_DPAD_LEFT = 21;
   public static final int KEYCODE_DPAD_RIGHT = 22;
   public static final int KEYCODE_DPAD_UP = 19;
   public static final int KEYCODE_UNKNOWN;
   final int mAction;
   final int mKeyCode;

   public KeyEvent(long var1, int var3, int var4, int var5) {
      super(var1, var3);
      this.mKeyCode = var4;
      this.mAction = var5;
   }

   KeyEvent(Parcel var1) {
      super(var1);
      this.mKeyCode = var1.readInt();
      this.mAction = var1.readInt();
   }

   public int describeContents() {
      return 0;
   }

   public final int getAction() {
      return this.mAction;
   }

   public final int getKeyCode() {
      return this.mKeyCode;
   }

   public void writeToParcel(Parcel var1, int var2) {
      super.writeToParcel(var1, var2);
      var1.writeInt(this.mKeyCode);
      var1.writeInt(this.mAction);
   }

   static class ParcelableCreator implements Creator {
      public KeyEvent createFromParcel(Parcel var1) {
         return new KeyEvent(var1);
      }

      public KeyEvent[] newArray(int var1) {
         return new KeyEvent[var1];
      }
   }
}
