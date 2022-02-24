package com.nibiru.lib.controller;

import android.os.SystemClock;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.MotionEvent.PointerCoords;
import android.view.MotionEvent.PointerProperties;
import com.nibiru.lib.BTUtil;
import java.util.ArrayList;
import java.util.List;

public class SupportMotionEvent {
   private MotionEvent eK;
   private String eL;

   public SupportMotionEvent(float var1, float var2, int var3, int var4) {
      this(var1, var2, var3, var4, 1, 4098, 65535);
   }

   public SupportMotionEvent(float var1, float var2, int var3, int var4, int var5, int var6, int var7) {
      StringBuilder var8 = new StringBuilder();
      var8.append(var3 + " ");
      long var10 = SystemClock.uptimeMillis();
      if (BTUtil.getAndroidVersion() < 12) {
         this.eK = MotionEvent.obtain(var10, var10, var3, var1, var2, 0.6F, 0.3F, 0, 0.0F, 0.0F, var7, 0);
         var8.append("1 0 0 " + var1 + " " + var2);
         this.eL = var8.toString();
      } else {
         var8.append("1 ");
         Object var13;
         if (var4 < 0) {
            var13 = "0";
         } else {
            var13 = var4;
         }

         var8.append(var13);
         var8.append(" 0 " + var1 + " " + var2);
         PointerCoords[] var16 = new PointerCoords[]{new PointerCoords()};
         var16[0].x = var1;
         var16[0].y = var2;
         var16[0].pressure = 0.68F;
         var16[0].size = 0.6F;
         var16[0].setAxisValue(0, var1);
         var16[0].setAxisValue(1, var2);
         int[] var17 = new int[]{var4};
         if (BTUtil.getAndroidVersion() >= 14) {
            PointerProperties[] var18 = new PointerProperties[]{new PointerProperties()};
            var18[0].clear();
            var18[0].id = var4;
            var18[0].toolType = var5;
            this.eK = MotionEvent.obtain(var10, 20L + var10, var3, 1, var18, var16, 0, 0, 1.0F, 1.0F, var7, 0, var6, 0);
         } else {
            this.eK = MotionEvent.obtain(var10, 20L + var10, var3, 1, var17, var16, 0, 0.0F, 0.0F, var7, 0, var6, 0);
         }

         this.eL = var8.toString();
      }
   }

   public SupportMotionEvent(SparseArray var1, int var2, int var3) {
      StringBuilder var4 = new StringBuilder();
      var4.append(var2 + " ");
      long var6 = SystemClock.uptimeMillis();
      if (BTUtil.getAndroidVersion() >= 12 && var1.size() != 0) {
         var4.append(var1.size() + " ");
         Object var11;
         if (var3 < 0) {
            var11 = "0";
         } else {
            var11 = var3;
         }

         var4.append(var11);
         SupportMotionEvent.a var13 = new SupportMotionEvent.a(this);
         int var14 = 0;

         int var16;
         for(int var15 = 0; var15 < var1.size(); var14 = var16) {
            if (var1.keyAt(var15) == var3) {
               var16 = var15;
            } else {
               var16 = var14;
            }

            TouchPointer var17 = (TouchPointer)var1.valueAt(var15);
            if (var17 == null) {
               GlobalLog.e("abormal, pointer is null");
            } else {
               var4.append(" ");
               if (BTUtil.getAndroidVersion() >= 14) {
                  PointerProperties var19 = new PointerProperties();
                  var19.clear();
                  var19.id = var1.keyAt(var15);
                  var19.toolType = 1;
                  var13.eM.add(var19);
               }

               var13.eO.add(var1.keyAt(var15));
               PointerCoords var22 = new PointerCoords();
               var22.x = var17.getX();
               var22.y = var17.getY();
               var22.pressure = 0.68F;
               var22.size = 0.6F;
               if (BTUtil.getAndroidVersion() >= 12) {
                  var22.setAxisValue(0, var17.getX());
                  var22.setAxisValue(1, var17.getY());
               }

               var13.eN.add(var22);
               var4.append(var1.keyAt(var15) + " " + var22.x + " " + var22.y);
            }

            ++var15;
         }

         int var25;
         if (var2 == 1 && var1.size() > 1) {
            var25 = 6 | var14 << 8;
         } else {
            var25 = var2;
         }

         if (var25 == 0 && var1.size() > 1) {
            var25 = 5 | var14 << 8;
         }

         if (BTUtil.getAndroidVersion() < 14) {
            int[] var26 = new int[var13.eO.size()];

            for(int var27 = 0; var27 < var13.eO.size(); ++var27) {
               var26[var27] = (Integer)var13.eO.get(var27);
            }

            this.eK = MotionEvent.obtain(var6, var6, var25, var13.eO.size(), var26, (PointerCoords[])var13.eN.toArray(new PointerCoords[var13.eN.size()]), 0, 0.0F, 0.0F, 65535, 0, 4098, 0);
         } else {
            this.eK = MotionEvent.obtain(var6, var6, var25, var13.eO.size(), (PointerProperties[])var13.eM.toArray(new PointerProperties[var13.eM.size()]), (PointerCoords[])var13.eN.toArray(new PointerCoords[var13.eN.size()]), 0, 0, 0.0F, 0.0F, 65535, 0, 4098, 0);
         }

         this.eL = var4.toString();
      } else {
         if (var1.size() > 0) {
            TouchPointer var8 = (TouchPointer)var1.get(var1.keyAt(0));
            if (var8 == null) {
               this.eK = null;
            }

            this.eK = MotionEvent.obtain(var6, var6, var2, var8.getX(), var8.getY(), 0.6F, 0.3F, 0, 0.0F, 0.0F, 65535, 0);
            var4.append("1 0 0 " + var8.getX() + " " + var8.getY());
            this.eL = var4.toString();
         }

      }
   }

   public SupportMotionEvent(MotionEvent var1) {
      this.eK = var1;
      this.eL = "";
   }

   public SupportMotionEvent(SupportMotionEvent var1) {
      this.eK = MotionEvent.obtain(var1.getEvent());
      if (var1.getInputStr() != null) {
         this.eL = new String(var1.getInputStr());
      }

   }

   public int getAction() {
      return this.eK != null ? this.eK.getAction() : 1;
   }

   public MotionEvent getEvent() {
      return this.eK;
   }

   public String getInputStr() {
      return this.eL;
   }

   public void recycle() {
      if (this.eK != null) {
         this.eK.recycle();
      }

      this.eL = null;
   }

   public void setAction(int var1) {
      if (this.eL != null && this.eL.length() > 0) {
         this.eL = String.valueOf(var1) + this.eL.substring(1);
      }

      if (this.eK != null) {
         this.eK.setAction(var1);
      }

   }

   public void setEvent(MotionEvent var1) {
      this.eK = var1;
   }

   public void setInputStr(String var1) {
      this.eL = var1;
   }

   final class a {
      List eM = new ArrayList();
      List eN = new ArrayList();
      List eO = new ArrayList();

      a(SupportMotionEvent var1) {
      }
   }
}
