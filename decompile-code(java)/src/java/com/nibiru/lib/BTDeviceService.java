package com.nibiru.lib;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;

public interface BTDeviceService {
   int COMBKEY_CHECK_COARSE = 2;
   int COMBKEY_CHECK_FINE = 0;
   int COMBKEY_CHECK_NORMAL = 1;
   int STICKSIM_DIR_4 = 0;
   int STICKSIM_DIR_8 = 1;
   int STICKSIM_LEFT = 0;
   int STICKSIM_NONE = -1;
   int STICKSIM_RIGHT = 1;

   void cancelStickSimMode();

   OnBTDeviceCombKeyListener getCombKeyListener();

   int[] getCurrentSpecKeyMap();

   OnBTDeviceKeyListener getKeyListener();

   KeyEvent getOriginalKey(KeyEvent var1);

   OnReqAppCloseListener getReqAppCloseListener();

   OnBTDeviceStateListener getStateListener();

   OnBTDeviceStickListener getStickListener();

   int getStickSimMode();

   KeyEvent getTranslateKey(KeyEvent var1);

   boolean isEnable();

   boolean isHostControll();

   boolean isServiceConnected();

   boolean isStickSimModeContinuesKey();

   void openBTDeviceSettingUI(Context var1, Bundle var2) throws Exception;

   boolean registerBTDeviceService(Context var1, OnBTServiceConnectionListener var2);

   void removeCombKeyListener();

   void removeConnectListener();

   void removeKeyListener();

   void removeReqAppCloseListener();

   void removeStateListener();

   void removeStickListener();

   void requestBTDeviceByPlayerOrder(int var1) throws Exception;

   void requestBTDeviceList() throws Exception;

   void setCombKeyIntervalTime(int var1);

   void setCombKeyListener(OnBTDeviceCombKeyListener var1);

   void setConnectListener(OnBTServiceConnectionListener var1);

   void setEnable(boolean var1);

   void setExcludeTouchKey(int[] var1);

   void setHostControll(boolean var1);

   void setKeyListener(OnBTDeviceKeyListener var1);

   void setReqAppCloseListener(OnReqAppCloseListener var1);

   void setSpecKeyMap(int[] var1);

   void setStateListener(OnBTDeviceStateListener var1);

   void setStickListener(OnBTDeviceStickListener var1);

   void setStickSimMode(int var1, int var2, boolean var3, int var4);

   void setStickSimMode(int var1, boolean var2);

   void setTouchFocus(boolean var1);

   void setTouchFocusLocation(float var1, float var2);

   boolean unregisterBTDeviceService();
}
