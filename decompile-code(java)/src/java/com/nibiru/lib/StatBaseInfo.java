package com.nibiru.lib;

public class StatBaseInfo {
   private long ao;
   private int order;
   private long startTime;
   private int type;

   public int getOrder() {
      return this.order;
   }

   public long getReachTime() {
      return this.ao;
   }

   public long getStartTime() {
      return this.startTime;
   }

   public int getType() {
      return this.type;
   }

   public void setOrder(int var1) {
      this.order = var1;
   }

   public void setReachTime(long var1) {
      this.ao = var1;
   }

   public void setStartTime(long var1) {
      this.startTime = var1;
   }

   public void setType(int var1) {
      this.type = var1;
   }
}
