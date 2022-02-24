package com.nibiru.lib;

public final class e {
   private double ap;
   private long aq;
   private int ar = 9999;
   private int as = 0;
   private long at;
   private int count;
   private int playerOrder;
   private long startTime;
   private int type;

   public final void a(StatBaseInfo var1) {
      this.type = var1.getType();
      if (this.count == 0) {
         this.startTime = var1.getStartTime();
      }

      this.at = var1.getReachTime();
      this.playerOrder = var1.getOrder();
      int var2 = (int)(var1.getReachTime() - var1.getStartTime());
      if (var2 < 0) {
         var2 = 0;
      } else {
         ++this.count;
      }

      this.aq += (long)var2;
      this.ap = (double)this.aq / (double)this.count;
      if (var2 < this.ar) {
         this.ar = var2;
      } else if (var2 > this.as) {
         this.as = var2;
         return;
      }

   }

   public final int getCount() {
      return this.count;
   }

   public final String toString() {
      return "StatEventInfo [type=" + this.type + ", evenTime=" + this.ap + ", alltime=" + this.aq + ", minTime=" + this.ar + ", maxTime=" + this.as + ", startTime=" + this.startTime + ", lastTime=" + this.at + ", count=" + this.count + ", playerOrder=" + this.playerOrder + "]";
   }
}
