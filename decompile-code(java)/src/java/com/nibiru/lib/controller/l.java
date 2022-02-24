package com.nibiru.lib.controller;

final class l implements StickSimService, StickSimServiceHandler2.OnStickSimChangeListener {
   private ControllerServiceImpl aD;
   private StickSimServiceHandler2 es;

   public l(ControllerServiceImpl var1) {
      this.aD = var1;
      this.es = new StickSimServiceHandler2(var1);
   }

   public static boolean isHideStickEvent() {
      return false;
   }

   public static void pause() {
   }

   public static void resume() {
   }

   public final void OnStickSimChange(ControllerKeyEvent var1) {
      if (this.aD != null && var1 != null) {
         this.aD.sendKeyEvent(var1);
      }

   }

   public final void exit() {
      this.es.exit();
   }

   public final StickSimService.StickSimConfig getStickSimConfig() {
      return this.es.getStickSimConfig();
   }

   public final void handleStickEvent(StickEvent var1) {
      this.es.handleStickEvent(var1);
   }

   public final boolean isStart() {
      return this.es.isStart();
   }

   public final void setHideStickEvent(boolean var1) {
      this.es.setHideStickEvent(var1);
   }

   public final void setIntervalTime(int var1) {
      this.es.setIntervalTime(var1);
   }

   public final void setKeyNum(int var1) {
      this.es.setKeyNum(var1);
   }

   public final void setKeyTrans(int[] var1) {
      this.es.setKeyTrans(var1);
   }

   public final void setMode(int var1) {
      this.es.setMode(var1);
   }

   public final void setStickLoc(int var1) {
      this.es.setStickLoc(var1);
   }

   public final void startStickSim() {
      this.es.startStickSim();
   }

   public final void startStickSim(StickSimService.StickSimConfig var1) {
      this.es.startStickSim(var1);
   }

   public final void stop(int var1) {
      this.es.stopStickSimUnit(var1);
   }

   public final void stopStickSim() {
      this.es.stopStickSim();
   }
}
