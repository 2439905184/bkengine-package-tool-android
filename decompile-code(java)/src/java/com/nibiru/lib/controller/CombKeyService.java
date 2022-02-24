package com.nibiru.lib.controller;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public interface CombKeyService {
   void clearCombKey();

   List getCombKeyList();

   void registerCombKey(CombKeyService.CombKey var1);

   void registerCombKeys(CombKeyService.CombKey[] var1);

   void removeCombKey(String var1);

   void setCombKeyListener(CombKeyService.OnCombKeyListener var1);

   void setIntervalTime(long var1);

   public static class CombKey {
      private List aP = new ArrayList();
      public boolean isStart = false;
      public int keyMask = 0;
      public String token;

      public CombKey(CombKeyService.CombKey var1) {
         this.token = var1.token;
         this.isStart = var1.isStart;
         this.keyMask = var1.keyMask;
      }

      public CombKey(String var1, int var2, int var3) {
         this.token = var1;
         this.aP.clear();
         this.aP.add(var2);
         this.aP.add(var3);
         this.keyMask = 0;
         this.keyMask |= k.en[k.el.get(var2)];
         this.keyMask |= k.en[k.el.get(var3)];
      }

      public CombKey(String var1, int var2, int var3, int var4) {
         this.token = var1;
         this.aP.clear();
         this.aP.add(var2);
         this.aP.add(var3);
         this.aP.add(var4);
         this.keyMask |= k.en[k.el.get(var2)];
         this.keyMask |= k.en[k.el.get(var3)];
         this.keyMask |= k.en[k.el.get(var4)];
      }

      public void addKey(int var1) {
         synchronized(this){}

         Throwable var10000;
         label76: {
            boolean var10001;
            int var3;
            try {
               var3 = this.aP.size();
            } catch (Throwable var11) {
               var10000 = var11;
               var10001 = false;
               break label76;
            }

            if (var3 > 8) {
               return;
            }

            label67:
            try {
               this.aP.add(var1);
               this.keyMask |= k.en[k.el.get(var1)];
               return;
            } catch (Throwable var10) {
               var10000 = var10;
               var10001 = false;
               break label67;
            }
         }

         Throwable var2 = var10000;
         throw var2;
      }

      public ControllerKeyEvent[] checkKeys(ControllerKeyEvent[] var1) {
         SparseArray var2 = new SparseArray();
         ArrayList var3 = new ArrayList();

         for(int var4 = 0; var4 < var1.length; ++var4) {
            if (this.aP.contains(var1[var4].getKeyCode())) {
               var2.append(var1[var4].getKeyCode(), var1[var4]);
               if (var2.size() == this.aP.size()) {
                  for(int var6 = var4 + 1; var6 < var1.length; ++var6) {
                     var3.add(var1[var6]);
                  }

                  return (ControllerKeyEvent[])var3.toArray(new ControllerKeyEvent[var3.size()]);
               }
            } else {
               var3.add(var1[var4]);
            }
         }

         return null;
      }

      public boolean containsKey(int var1) {
         return this.aP.contains(var1);
      }

      public boolean equals(Object var1) {
         if (this != var1) {
            if (var1 == null) {
               return false;
            }

            if (this.getClass() != var1.getClass()) {
               return false;
            }

            CombKeyService.CombKey var2 = (CombKeyService.CombKey)var1;
            if (this.token == null) {
               if (var2.token != null) {
                  return false;
               }
            } else if (!this.token.equals(var2.token)) {
               return false;
            }
         }

         return true;
      }

      public int getCombKeyMask() {
         return this.keyMask;
      }

      public int[] getCombKeys() {
         synchronized(this){}

         Throwable var10000;
         label139: {
            boolean var10001;
            int[] var2;
            try {
               var2 = new int[this.aP.size()];
            } catch (Throwable var17) {
               var10000 = var17;
               var10001 = false;
               break label139;
            }

            int var3 = 0;

            while(true) {
               int var4;
               try {
                  var4 = this.aP.size();
               } catch (Throwable var16) {
                  var10000 = var16;
                  var10001 = false;
                  break;
               }

               if (var3 >= var4) {
                  return var2;
               }

               try {
                  var2[var3] = (Integer)this.aP.get(var3);
               } catch (Throwable var15) {
                  var10000 = var15;
                  var10001 = false;
                  break;
               }

               ++var3;
            }
         }

         Throwable var1 = var10000;
         throw var1;
      }

      public Collection getCombKeysList() {
         ArrayList var1 = new ArrayList();
         var1.addAll(this.aP);
         return var1;
      }

      public int getKeyCount() {
         return this.aP.size();
      }

      public int hashCode() {
         int var1;
         if (this.token == null) {
            var1 = 0;
         } else {
            var1 = this.token.hashCode();
         }

         return var1 + 31;
      }

      public boolean isStart() {
         return this.isStart;
      }

      public void setStart(boolean var1) {
         this.isStart = var1;
      }
   }

   public interface OnCombKeyListener {
      void onCombKeyEventOver(String var1, int var2, CombKeyService.CombKey var3);

      void onCombKeyEventStart(String var1, int var2, CombKeyService.CombKey var3);
   }
}
