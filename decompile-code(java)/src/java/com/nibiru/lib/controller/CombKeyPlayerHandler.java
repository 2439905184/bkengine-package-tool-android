package com.nibiru.lib.controller;

import java.util.Arrays;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class CombKeyPlayerHandler {
   private boolean K = false;
   private int[] aL = new int[256];
   private long[] aM = new long[256];
   private Map aN = new Hashtable();
   private ICombKeyManager aO;
   private int n = -1;

   public CombKeyPlayerHandler(int var1, ICombKeyManager var2) {
      Arrays.fill(this.aL, 1);
      Arrays.fill(this.aM, 0L);
      this.n = var1;
      this.aO = var2;
      this.K = true;
   }

   public void checkKeyState() {
      for(int var1 = 0; var1 < this.aL.length; ++var1) {
         if (this.aL[var1] != 1 && System.currentTimeMillis() - this.aM[var1] > 15000L) {
            GlobalLog.e("RESET KEYSTATE: " + this.aL[var1]);
            this.aL[var1] = 1;
         }
      }

   }

   public void disable() {
      this.K = false;
      Arrays.fill(this.aL, 1);
      Arrays.fill(this.aM, 0L);
      this.aN.clear();
   }

   public void enable() {
      this.K = true;
      Arrays.fill(this.aL, 1);
      Arrays.fill(this.aM, 0L);
      this.aN.clear();
   }

   public void handleCombKey(ControllerKeyEvent var1) {
      if (this.K) {
         this.aL[var1.getKeyCode()] = var1.getAction();
         this.aM[var1.getKeyCode()] = System.currentTimeMillis();
         boolean var3;
         if (var1.getPlayerOrder() != this.n) {
            var3 = false;
         } else {
            List var2 = this.aO.getCombKeyList(var1.getKeyCode());
            if (var2 != null && var2.size() != 0) {
               label85: {
                  Iterator var4 = var2.iterator();

                  CombKeyService.CombKey var5;
                  b var6;
                  label74:
                  while(true) {
                     while(var4.hasNext()) {
                        var5 = (CombKeyService.CombKey)var4.next();
                        var6 = (b)this.aN.get(var5.token);
                        boolean var11;
                        if (var5 == null) {
                           var11 = false;
                        } else {
                           label91: {
                              int[] var7 = var5.getCombKeys();
                              int var8 = var7.length;

                              for(int var9 = 0; var9 < var8; ++var9) {
                                 int var10 = var7[var9];
                                 if (this.aL[var10] == 1) {
                                    var11 = false;
                                    break label91;
                                 }
                              }

                              var11 = true;
                           }
                        }

                        if (var11) {
                           if (var6 == null) {
                              var6 = new b();
                              var6.aQ = true;
                              String var10000 = var5.token;
                              this.aN.put(var5.token, var6);
                              break label74;
                           }

                           if (!var6.aQ) {
                              var6.aQ = true;
                              break label74;
                           }
                        } else if (var6 != null && var6.aQ) {
                           var6.aQ = false;
                           this.aO.sendCombKey(this.n, 1, var5);
                           if (var1.getKeyCode() == var6.aR) {
                              var6.aR = 0;
                              var3 = true;
                           } else {
                              var6.aR = 0;
                              var3 = false;
                           }
                           break label85;
                        }
                     }

                     this.aO.sendDelayedSingleKey(var1);
                     var3 = true;
                     break label85;
                  }

                  int[] var14 = var5.getCombKeys();
                  int var15 = var14.length;

                  for(int var16 = 0; var16 < var15; ++var16) {
                     int var17 = var14[var16];
                     this.aO.cancelSingleKey(this.n, var17);
                  }

                  var6.aR = var1.getKeyCode();
                  this.aO.sendCombKey(this.n, 0, var5);
                  var3 = true;
               }
            } else {
               var3 = false;
            }
         }

         if (!var3) {
            this.aO.sendSingleKey(var1);
            return;
         }
      }

   }

   public void handleKeyState(int[] var1) {
      if (var1 != null && var1.length >= 256) {
         this.aL = var1;
      }
   }

   public boolean isEnable() {
      return this.K;
   }
}
