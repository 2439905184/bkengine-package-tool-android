package com.nibiru.lib.controller;

import java.util.Arrays;

public class MotionSenseEvent {
   public static final String KEY_EVENT_TIME = "eventTime";
   public static final String KEY_PLAYER = "player";
   public static final String KEY_RAW = "raw";
   private long bc;
   private byte[] data;
   private int n;

   public MotionSenseEvent(int var1, long var2, byte[] var4) {
      this.n = var1;
      this.bc = var2;
      this.data = var4;
   }

   public MotionSenseEvent(MotionSenseEvent var1) {
      this.n = var1.n;
      this.bc = var1.bc;
      this.data = Arrays.copyOf(var1.data, var1.data.length);
   }

   public long getEventTime() {
      return this.bc;
   }

   public int getPlayerOrder() {
      return this.n;
   }

   public byte[] getRawData() {
      return this.data;
   }

   public String toString() {
      return "MotionSenseEvent [player=" + this.n + ", eventTime=" + this.bc + ", data=" + Arrays.toString(this.data) + "]";
   }
}
