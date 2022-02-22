package com.nibiru.lib.controller;

public interface DpadService {
   int FLAG_ONLY_REV_DPAD = 0;
   int FLAG_REV_OTHER_KEY = 1;

   void addKeyPair(int var1, int var2);

   boolean isDpadMode();

   void removeKeyPair(int var1);

   void setDpadMap(int[] var1);

   void startDpadMode(int var1);

   void stopDpadMode();
}
