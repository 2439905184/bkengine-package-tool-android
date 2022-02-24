package com.nibiru.lib;

public class BTDeviceStickEvent {
   private int b;
   private int playerOrder;
   private int x;
   private int y;

   public BTDeviceStickEvent(int var1, int var2, int var3, int var4) {
      this.b = var3;
      this.playerOrder = var4;
      this.x = var1;
      this.y = var2;
   }

   public int getLoc() {
      return this.b;
   }

   public int getPlayerOrder() {
      return this.playerOrder;
   }

   public int getRelatedX() {
      if (this.b == 0) {
         return -128 + this.x;
      } else {
         return this.b == 1 ? 128 - this.x : this.x;
      }
   }

   public int getRelatedY() {
      if (this.b == 0) {
         return -128 + this.y;
      } else {
         return this.b == 1 ? 128 - this.y : this.y;
      }
   }

   public int getX() {
      return this.x;
   }

   public int getY() {
      return this.y;
   }

   public void setLoc(int var1) {
      this.b = var1;
   }

   public void setPlayerOrder(int var1) {
      this.playerOrder = var1;
   }

   public void setX(int var1) {
      this.x = var1;
   }

   public void setY(int var1) {
      this.y = var1;
   }

   public String toString() {
      return "BTDeviceStickEvent [loc=" + this.b + ", playerOrder=" + this.playerOrder + ", x=" + this.x + ", y=" + this.y + "]";
   }
}
