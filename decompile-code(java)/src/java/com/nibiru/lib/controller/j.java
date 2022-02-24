package com.nibiru.lib.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

final class j extends Thread {
   private ControllerServiceImpl aD;
   private BlockingQueue ay = new LinkedBlockingQueue(1024);
   private List dL = new ArrayList();
   private long dM = 25L;
   private boolean p = true;

   public j(ControllerServiceImpl var1) {
      this.aD = var1;
   }

   public final boolean a(int var1, int var2) {
      if (!this.p) {
         return false;
      } else {
         ControllerKeyEvent var3 = new ControllerKeyEvent(1, var2, var1);
         return this.ay.offer(var3);
      }
   }

   public final void b(int var1, int var2) {
      BlockingQueue var3 = this.ay;
      synchronized(var3) {
         ControllerKeyEvent var4 = new ControllerKeyEvent(1, var2, var1);
         this.ay.remove(var4);
      }
   }

   public final void close() {
      this.p = false;
      this.ay.offer(new ControllerKeyEvent());
   }

   public final void run() {
      // $FF: Couldn't be decompiled
   }

   public final void setIntervalTime(long var1) {
      this.dM = var1;
   }
}
