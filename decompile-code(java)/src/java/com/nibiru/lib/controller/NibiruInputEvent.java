package com.nibiru.lib.controller;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;

public class NibiruInputEvent implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      // $FF: synthetic method
      public final Object createFromParcel(Parcel var1) {
         return new NibiruInputEvent(var1);
      }
   };
   private InputEvent dJ;

   public NibiruInputEvent(Parcel var1) {
      this.dJ = (InputEvent)var1.readParcelable(InputEvent.class.getClassLoader());
   }

   public NibiruInputEvent(InputEvent var1) {
      this.dJ = var1;
   }

   public int describeContents() {
      if (this.dJ instanceof MotionEvent) {
         return 2;
      } else {
         return this.dJ instanceof KeyEvent ? 1 : 0;
      }
   }

   public InputEvent getInputEvent() {
      return this.dJ;
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeParcelable(this.dJ, 0);
   }
}
