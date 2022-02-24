package com.nibiru.lib.controller;

public interface StickSimService {
   int STICKSIM_DIR_4 = 0;
   int STICKSIM_DIR_8 = 1;
   int STICKSIM_LEFT = 0;
   int STICKSIM_MODE_CONTINUES_KEY = 0;
   int STICKSIM_MODE_PRESS_KEY = 1;
   int STICKSIM_RIGHT = 1;

   StickSimService.StickSimConfig getStickSimConfig();

   void setHideStickEvent(boolean var1);

   void setIntervalTime(int var1);

   void setKeyNum(int var1);

   void setKeyTrans(int[] var1);

   void setMode(int var1);

   void setStickLoc(int var1);

   void startStickSim();

   void startStickSim(StickSimService.StickSimConfig var1);

   void stopStickSim();

   public static class StickSimConfig {
      public int directionNum;
      public int intervalTime;
      public int mode;
      public int stickLoc;

      public StickSimConfig(int var1, int var2) {
         this.stickLoc = var1;
         this.directionNum = var2;
      }

      public StickSimConfig(int var1, int var2, int var3, int var4) {
         this.stickLoc = var1;
         this.mode = var2;
         this.directionNum = var3;
         this.intervalTime = var4;
      }

      public static StickSimService.StickSimConfig getDefaultConfig() {
         return new StickSimService.StickSimConfig(0, 0);
      }
   }
}
