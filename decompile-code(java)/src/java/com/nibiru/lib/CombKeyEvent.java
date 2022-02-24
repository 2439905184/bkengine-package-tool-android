package com.nibiru.lib;

import android.view.KeyEvent;
import java.util.Arrays;

public class CombKeyEvent {
   private int action;
   private KeyEvent[] ad;
   private int playerOrder;
   private long time;

   public CombKeyEvent(int var1, long var2, int var4, KeyEvent[] var5) {
      this.action = var1;
      this.time = var2;
      this.playerOrder = var4;
      this.ad = var5;
   }

   public int getAction() {
      return this.action;
   }

   public KeyEvent[] getEvents() {
      return this.ad;
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public long getTime() {
      return this.time;
   }

   public void setAction(int var1) {
      this.action = var1;
   }

   public void setEvents(KeyEvent[] var1) {
      this.ad = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setTime(long var1) {
      this.time = var1;
   }

   public String toString() {
      return "CombKeyEvent [action=" + this.action + ", time=" + this.time + ", playerOrder=" + this.playerOrder + ", events=" + Arrays.toString(this.ad) + "]";
   }
}
