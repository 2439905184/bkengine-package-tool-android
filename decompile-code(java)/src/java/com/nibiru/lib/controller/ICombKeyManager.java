package com.nibiru.lib.controller;

import android.os.Handler;
import java.util.List;

public interface ICombKeyManager {
   void cancelSingleKey(int var1, int var2);

   List getCombKeyList(int var1);

   Handler getHandler();

   void sendCombKey(int var1, int var2, CombKeyService.CombKey var3);

   void sendDelayedSingleKey(ControllerKeyEvent var1);

   void sendSingleKey(ControllerKeyEvent var1);
}
