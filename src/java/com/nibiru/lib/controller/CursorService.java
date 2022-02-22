package com.nibiru.lib.controller;

public interface CursorService {
   int ARROWS = 2;
   int CURSOR_CLOSE = 257;
   int IME_PICKER = 258;
   int LEFT_STICK = 0;
   int MODE_REV_CURSOR_FIRST = 1;
   int MODE_REV_CURSOR_ONLY = 0;
   int MODE_REV_EVENT_PASS = 2;
   int MOUSE_EVENT = 256;
   int RIGHT_STICK = 1;

   void createCursor(int var1);

   void createCursor(String var1);

   void disableDpad();

   void enableDpad();

   int getCurrentX();

   int getCurrentY();

   int getEventMode();

   int getMouseStick();

   void hideCursor();

   boolean isAutoCursorMode();

   boolean isCursorShow();

   boolean isDpadMode();

   boolean isSupportDpad();

   void resetOriginPosition();

   void setAutoCursorDelayTime(long var1);

   void setCursorImageSize(int var1, int var2);

   void setCursorResource(int var1);

   void setCursorResource(String var1);

   void setEnableDisplayAtPrePos(boolean var1);

   void setEventMode(int var1);

   void setHideKey(int var1);

   void setKeyMap(int[] var1);

   void setMouseStick(int var1);

   void setOriginPosition(int var1, int var2);

   void setPosOffset(int var1, int var2);

   void setSensitivity(int var1, int var2);

   void startAutoCursorMode(int var1);

   void startAutoCursorMode(String var1);

   void stopAutoCursorMode();
}
