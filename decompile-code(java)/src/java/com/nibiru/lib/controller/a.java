package com.nibiru.lib.controller;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class a implements CombKeyService, ICombKeyManager {
   private static final Object lock = new Object();
   private ControllerServiceImpl aD;
   private CombKeyService.OnCombKeyListener aE;
   private Map aF = new Hashtable();
   private SparseArray aG = new SparseArray();
   private SparseArray aH = new SparseArray();
   private ScheduledExecutorService aI;
   private HandlerThread k = new HandlerThread("combkey-scheduler");
   private Handler l = null;
   private long time = 0L;

   public a(ControllerServiceImpl var1) {
      this.aD = var1;
      this.k.start();
      this.l = new com.nibiru.lib.controller.a.b(this.k.getLooper());
   }

   private void h() {
      if (this.aI != null) {
         this.aI.shutdown();
         this.aI = null;
      }
   }

   public final void a(int var1, int[] var2) {
      CombKeyPlayerHandler var3 = (CombKeyPlayerHandler)this.aH.get(var1);
      if (var3 == null) {
         var3 = new CombKeyPlayerHandler(var1, this);
         this.aH.append(var1, var3);
      }

      var3.handleKeyState(var2);
   }

   public final void cancelSingleKey(int var1, int var2) {
      int var3 = var2 + var1 * 1000;
      this.l.removeMessages(var3);
   }

   public final void clearCombKey() {
      this.aF.clear();
      this.aG.clear();
      this.h();
   }

   public final void exit() {
      this.k.quit();
      this.aF.clear();
      this.aG.clear();
      this.aH.clear();
      this.h();
      this.aD = null;
   }

   public final List getCombKeyList() {
      ArrayList var1 = new ArrayList();
      var1.addAll(this.aF.values());
      return var1;
   }

   public final List getCombKeyList(int var1) {
      return (List)this.aG.get(var1);
   }

   public final Handler getHandler() {
      return this.l;
   }

   public final void handleCombKey(ControllerKeyEvent var1) {
      if (this.aD != null && this.aD.isEnable()) {
         int var2 = var1.getPlayerOrder();
         CombKeyPlayerHandler var3 = (CombKeyPlayerHandler)this.aH.get(var2);
         if (var3 == null) {
            var3 = new CombKeyPlayerHandler(var2, this);
            this.aH.append(var2, var3);
         }

         var3.handleCombKey(var1);
      }
   }

   public final boolean isRunning() {
      return this.aE != null && this.aF.size() != 0;
   }

   public final void registerCombKey(CombKeyService.CombKey var1) {
      if (var1 != null) {
         this.aF.put(var1.token, var1);
         int[] var3 = var1.getCombKeys();
         int var4 = var3.length;

         for(int var5 = 0; var5 < var4; ++var5) {
            int var6 = var3[var5];
            Object var7 = (List)this.aG.get(var6);
            if (var7 == null) {
               var7 = new ArrayList();
            }

            ((List)var7).add(var1);
            this.aG.append(var6, var7);
         }

         if (this.aI == null) {
            this.aI = Executors.newScheduledThreadPool(1);
            this.aI.scheduleAtFixedRate(new Runnable() {
               public final void run() {
                  SparseArray var1 = a.this.aH;
                  synchronized(var1){}
                  int var2 = 0;

                  Throwable var10000;
                  while(true) {
                     boolean var10001;
                     try {
                        if (var2 >= a.this.aH.size()) {
                           return;
                        }
                     } catch (Throwable var17) {
                        var10000 = var17;
                        var10001 = false;
                        break;
                     }

                     CombKeyPlayerHandler var4;
                     try {
                        var4 = (CombKeyPlayerHandler)a.this.aH.valueAt(var2);
                     } catch (Throwable var16) {
                        var10000 = var16;
                        var10001 = false;
                        break;
                     }

                     if (var4 != null) {
                        try {
                           var4.checkKeyState();
                        } catch (Throwable var15) {
                           var10000 = var15;
                           var10001 = false;
                           break;
                        }
                     }

                     ++var2;
                  }

                  Throwable var3 = var10000;
                  throw var3;
               }
            }, 0L, 15L, TimeUnit.SECONDS);
         }
      }

   }

   public final void registerCombKeys(CombKeyService.CombKey[] var1) {
      if (var1 != null && var1.length > 0) {
         int var2 = var1.length;

         for(int var3 = 0; var3 < var2; ++var3) {
            this.registerCombKey(var1[var3]);
         }
      }

   }

   public final void removeCombKey(String var1) {
      if (var1 != null) {
         Object var2 = lock;
         synchronized(var2){}

         Throwable var10000;
         label531: {
            CombKeyService.CombKey var4;
            boolean var10001;
            try {
               var4 = (CombKeyService.CombKey)this.aF.get(var1);
            } catch (Throwable var68) {
               var10000 = var68;
               var10001 = false;
               break label531;
            }

            if (var4 == null) {
               label507:
               try {
                  return;
               } catch (Throwable var62) {
                  var10000 = var62;
                  var10001 = false;
                  break label507;
               }
            } else {
               label537: {
                  int[] var5;
                  int var6;
                  try {
                     var5 = var4.getCombKeys();
                     var6 = var5.length;
                  } catch (Throwable var67) {
                     var10000 = var67;
                     var10001 = false;
                     break label537;
                  }

                  for(int var7 = 0; var7 < var6; ++var7) {
                     int var9;
                     List var10;
                     try {
                        var9 = var5[var7];
                        var10 = (List)this.aG.get(var9);
                     } catch (Throwable var66) {
                        var10000 = var66;
                        var10001 = false;
                        break label537;
                     }

                     if (var10 != null) {
                        try {
                           var10.remove(var4);
                           if (var10.size() == 0) {
                              this.aG.remove(var9);
                           }
                        } catch (Throwable var65) {
                           var10000 = var65;
                           var10001 = false;
                           break label537;
                        }
                     }
                  }

                  try {
                     this.aF.remove(var1);
                     if (this.aF.size() == 0) {
                        this.h();
                     }
                  } catch (Throwable var64) {
                     var10000 = var64;
                     var10001 = false;
                     break label537;
                  }

                  label509:
                  try {
                     return;
                  } catch (Throwable var63) {
                     var10000 = var63;
                     var10001 = false;
                     break label509;
                  }
               }
            }
         }

         Throwable var3 = var10000;
         throw var3;
      }
   }

   public final void sendCombKey(int var1, int var2, CombKeyService.CombKey var3) {
      this.aD.getHandler().post(new com.nibiru.lib.controller.a.a(var2, var3.token, var1, var3));
   }

   public final void sendDelayedSingleKey(ControllerKeyEvent var1) {
      if (this.time == 0L) {
         this.sendSingleKey(var1);
      } else {
         Message var2 = Message.obtain();
         var2.what = 1000 * var1.getPlayerOrder() + var1.getKeyCode();
         var2.obj = var1;
         this.l.sendMessageDelayed(var2, this.time);
      }
   }

   public final void sendSingleKey(ControllerKeyEvent var1) {
      this.aD.sendKeyEvent(var1);
   }

   public final void setCombKeyListener(CombKeyService.OnCombKeyListener var1) {
      this.aE = var1;
   }

   public final void setEnable(boolean var1) {
      for(int var2 = 0; var2 < this.aH.size(); ++var2) {
         CombKeyPlayerHandler var3 = (CombKeyPlayerHandler)this.aH.valueAt(var2);
         if (var3 != null) {
            if (var1) {
               var3.enable();
            } else {
               var3.disable();
            }
         }
      }

   }

   public final void setIntervalTime(long var1) {
      this.time = var1;
   }

   public final void stop(int var1) {
      CombKeyPlayerHandler var2 = (CombKeyPlayerHandler)this.aH.get(var1);
      if (var2 != null) {
         var2.disable();
      }

      this.aH.remove(var1);
   }

   final class a implements Runnable {
      private CombKeyService.CombKey aK;
      private int action;
      private int n;
      private String token;

      public a(int var2, String var3, int var4, CombKeyService.CombKey var5) {
         this.action = var2;
         this.token = var3;
         this.n = var4;
         this.aK = var5;
      }

      public final void run() {
         if (a.this.aE != null) {
            if (this.action != 0) {
               a.this.aE.onCombKeyEventOver(this.token, this.n, this.aK);
               return;
            }

            a.this.aE.onCombKeyEventStart(this.token, this.n, this.aK);
         }

      }
   }

   final class b extends Handler {
      public b(Looper var2) {
         super(var2);
      }

      public final void handleMessage(Message var1) {
         super.handleMessage(var1);
         int var2 = var1.what / 1000;
         CombKeyPlayerHandler var3 = (CombKeyPlayerHandler)a.this.aH.get(var2);
         if (var3 != null && var3.isEnable() && var1.obj != null && var1.obj instanceof ControllerKeyEvent) {
            a.this.sendSingleKey((ControllerKeyEvent)var1.obj);
         }
      }
   }
}
