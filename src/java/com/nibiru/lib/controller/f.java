package com.nibiru.lib.controller;

import android.view.KeyEvent;
import java.util.Arrays;

final class f implements DpadService {
   private int[] cP = new int[256];
   private boolean dv = false;
   private boolean dw = false;

   public final boolean B() {
      return this.dw;
   }

   public final void addKeyPair(int var1, int var2) {
      if (var1 >= 0 && var1 < 256) {
         this.cP[var1] = var2;
      }

   }

   public final KeyEvent d(ControllerKeyEvent var1) {
      int var2 = var1.getKeyCode();
      if (var2 >= 0 && var2 < 256) {
         int var3 = this.cP[var2];
         if (var3 > 0) {
            return ControllerKeyEvent.getKeyEvent2(var1.getAction(), var3);
         }
      }

      return null;
   }

   public final boolean isDpadMode() {
      return this.dv;
   }

   public final void removeKeyPair(int var1) {
      if (var1 >= 0 && var1 < 256) {
         this.cP[var1] = 0;
      }

   }

   public final void setDpadMap(int[] var1) {
      if (var1 != null) {
         this.cP = var1;
      }

   }

   public final void startDpadMode(int var1) {
      this.dv = true;
      Arrays.fill(this.cP, 0);
      this.cP[20] = 20;
      this.cP[19] = 19;
      this.cP[21] = 21;
      this.cP[22] = 22;
      this.cP[97] = 23;
      this.cP[99] = 4;
      this.cP[108] = 66;
      this.cP[109] = 82;
      if (var1 == 1) {
         this.dw = true;
      } else {
         this.dw = false;
      }
   }

   public final void stopDpadMode() {
      this.dv = false;
      this.dw = false;
   }
}
