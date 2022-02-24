package tv.ouya.console.api;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class OuyaActivity extends Activity {
   private static final String ACTION_OUYA_USER_INPUT = "tv.ouya.metrics.action.USER_INPUT";
   private static final String EXTRA_OUYA_INPUT_ANALOG = "analog";
   public static final int FLAGS_DEFAULT = 0;
   public static final int FLAG_SKIP_HIDE_NAV_BAR = 2;
   public static final int FLAG_SKIP_OUYACONTROLLER_DISPATCH = 4;
   public static final int FLAG_SKIP_OUYAINPUTMAPPER_DISPATCHES = 8;
   public static final int FLAG_SKIP_TAKE_KEYS = 1;
   private static final int INPUT_BROADCAST_COOLDOWN_MS = 30000;
   private static final String TAG = OuyaActivity.class.getSimpleName();
   private int mFlags = 0;
   private long mLastAnalogTick;
   private long mLastDigitalTick;

   private void broadcastInputNotification(boolean var1) {
      long var2 = System.nanoTime() / 1000000L;
      long var4;
      if (var1) {
         var4 = this.mLastAnalogTick;
      } else {
         var4 = this.mLastDigitalTick;
      }

      if (var2 - var4 >= 30000L) {
         if (var1) {
            this.mLastAnalogTick = var2;
         } else {
            this.mLastDigitalTick = var2;
         }

         Intent var6 = new Intent("tv.ouya.metrics.action.USER_INPUT");
         var6.putExtra("analog", var1);
         this.sendBroadcast(var6);
      }
   }

   public static void hideNavigationBar(Activity var0) {
      var0.getWindow().getDecorView().setSystemUiVisibility(6);
   }

   public static void setContentView(Activity var0, int var1) {
      if ((var1 & 1) == 0) {
         var0.takeKeyEvents(true);
      }

      if ((var1 & 2) == 0) {
         hideNavigationBar(var0);
      }

   }

   public boolean dispatchGenericMotionEvent(MotionEvent var1) {
      if ((8 & this.mFlags) == 0 && OuyaInputMapper.shouldHandleInputEvent(var1)) {
         this.broadcastInputNotification(true);
         return OuyaInputMapper.dispatchGenericMotionEvent(this, var1);
      } else {
         return super.dispatchGenericMotionEvent(var1);
      }
   }

   public boolean dispatchKeyEvent(KeyEvent var1) {
      if ((8 & this.mFlags) == 0 && OuyaInputMapper.shouldHandleInputEvent(var1)) {
         this.broadcastInputNotification(false);
         return OuyaInputMapper.dispatchKeyEvent(this, var1);
      } else {
         return super.dispatchKeyEvent(var1);
      }
   }

   protected void onCreate(Bundle var1) {
      OuyaInputMapper.init(this);
      boolean var2;
      if ((4 & this.mFlags) == 0) {
         var2 = true;
      } else {
         var2 = false;
      }

      OuyaInputMapper.setEnableControllerDispatch(var2);
      super.onCreate(var1);
   }

   protected void onDestroy() {
      super.onDestroy();
      OuyaInputMapper.shutdown(this);
   }

   public void setContentView(int var1) {
      super.setContentView(var1);
      setContentView(this, this.mFlags);
   }

   public void setContentView(View var1) {
      super.setContentView(var1);
      setContentView(this, this.mFlags);
   }

   public void setContentView(View var1, LayoutParams var2) {
      super.setContentView(var1, var2);
      setContentView(this, this.mFlags);
   }

   public void setFlags(int var1) {
      this.mFlags = var1;
   }
}
