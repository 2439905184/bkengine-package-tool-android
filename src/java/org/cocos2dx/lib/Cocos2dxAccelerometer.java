package org.cocos2dx.lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.view.WindowManager;

public class Cocos2dxAccelerometer implements SensorEventListener {
   private static final String TAG = Cocos2dxAccelerometer.class.getSimpleName();
   private final Sensor mAccelerometer;
   private final Context mContext;
   private final int mNaturalOrientation;
   private final SensorManager mSensorManager;

   public Cocos2dxAccelerometer(Context var1) {
      this.mContext = var1;
      this.mSensorManager = (SensorManager)this.mContext.getSystemService("sensor");
      this.mAccelerometer = this.mSensorManager.getDefaultSensor(1);
      this.mNaturalOrientation = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getOrientation();
   }

   public static native void onSensorChanged(float var0, float var1, float var2, long var3);

   public void disable() {
      this.mSensorManager.unregisterListener(this);
   }

   public void enable() {
      this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
   }

   public void onAccuracyChanged(Sensor var1, int var2) {
   }

   public void onSensorChanged(SensorEvent var1) {
      if (var1.sensor.getType() == 1) {
         float var2 = var1.values[0];
         float var3 = var1.values[1];
         float var4 = var1.values[2];
         int var5 = this.mContext.getResources().getConfiguration().orientation;
         if (var5 == 2 && this.mNaturalOrientation != 0) {
            float var7 = var2;
            var2 = -var3;
            var3 = var7;
         } else if (var5 == 1 && this.mNaturalOrientation != 0) {
            float var6 = var2;
            var2 = var3;
            var3 = -var6;
         }

         Cocos2dxGLSurfaceView.queueAccelerometer(var2, var3, var4, var1.timestamp);
      }
   }

   public void setInterval(float var1) {
      if (VERSION.SDK_INT < 11) {
         this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
      } else {
         this.mSensorManager.registerListener(this, this.mAccelerometer, (int)(100000.0F * var1));
      }
   }
}
