package com.nibiru.lib;

public class BTDeviceControllerKey {
   public static final int KEYCODE_BUTTON_A = 96;
   public static final int KEYCODE_BUTTON_AB = 97;
   public static final int KEYCODE_BUTTON_B = 97;
   public static final int KEYCODE_BUTTON_C = 98;
   public static final int KEYCODE_BUTTON_L1 = 102;
   public static final int KEYCODE_BUTTON_L2 = 104;
   public static final int KEYCODE_BUTTON_R1 = 103;
   public static final int KEYCODE_BUTTON_R2 = 105;
   public static final int KEYCODE_BUTTON_SELECT = 109;
   public static final int KEYCODE_BUTTON_START = 108;
   public static final int KEYCODE_BUTTON_X = 99;
   public static final int KEYCODE_DOWN_LEFT = 27;
   public static final int KEYCODE_DOWN_RIGHT = 28;
   public static final int KEYCODE_DPAD_DOWN = 20;
   public static final int KEYCODE_DPAD_LEFT = 21;
   public static final int KEYCODE_DPAD_RIGHT = 22;
   public static final int KEYCODE_DPAD_UP = 19;
   public static final int KEYCODE_UP_LEFT = 25;
   public static final int KEYCODE_UP_RIGHT = 26;
   public static int[] KEYSET;
   public static final int STICK_LEFT = 0;
   public static final int STICK_RIGHT = 1;
   public static final int[] defaultExternalInputMap = new int[256];
   public static final int[] joystickInputMap = new int[256];

   static {
      defaultExternalInputMap[19] = 19;
      defaultExternalInputMap[20] = 20;
      defaultExternalInputMap[21] = 21;
      defaultExternalInputMap[22] = 22;
      defaultExternalInputMap[37] = 96;
      defaultExternalInputMap[41] = 98;
      defaultExternalInputMap[38] = 99;
      defaultExternalInputMap[39] = 97;
      defaultExternalInputMap[54] = 102;
      defaultExternalInputMap[52] = 103;
      defaultExternalInputMap[46] = 109;
      defaultExternalInputMap[53] = 108;
      joystickInputMap[188] = 96;
      joystickInputMap[191] = 98;
      joystickInputMap[190] = 99;
      joystickInputMap[189] = 97;
      joystickInputMap[192] = 102;
      joystickInputMap[193] = 103;
      joystickInputMap[194] = 104;
      joystickInputMap[195] = 105;
      joystickInputMap[196] = 109;
      joystickInputMap[197] = 108;
      KEYSET = new int[]{19, 20, 21, 22, 96, 97, 98, 99, 102, 104, 103, 105, 108, 109};
   }

   public static final int getDefaultExtraInputKey(int var0) {
      return var0 < defaultExternalInputMap.length && defaultExternalInputMap[var0] > 0 ? defaultExternalInputMap[var0] : var0;
   }
}
