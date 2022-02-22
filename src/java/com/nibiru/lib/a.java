package com.nibiru.lib;

import android.view.KeyEvent;
import com.nibiru.lib.controller.GlobalLog;

public class a {
   private BTInputDeviceController a;

   public a(BTInputDeviceController var1) {
      this.a = var1;
   }

   public final void a(KeyEvent[] var1) {
      if (var1 != null && var1.length == 2 && var1[0].getAction() != 1 && (var1[0].getKeyCode() == 102 && var1[1].getKeyCode() == 103 || var1[0].getKeyCode() == 103 && var1[1].getKeyCode() == 102) && this.a.getReqAppCloseListener() != null) {
         GlobalLog.d("CLOSE IDENTIFY");
         this.a.getReqAppCloseListener().onReqAppClose();
      }
   }
}
