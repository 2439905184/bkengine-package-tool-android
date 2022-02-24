package com.nibiru.lib.controller;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class d extends ControllerServiceImpl {
   private Map bd = new Hashtable();
   private com.nibiru.lib.controller.d.c be = null;
   private Handler mHandler = new Handler();
   private boolean p = false;

   public d() {
      this.bB = false;
   }

   protected final void i() {
      super.i();
      if (this.isServiceEnable() && (this.be == null || !this.be.isAlive())) {
         GlobalLog.d("START THREAD!");
         this.p = true;
         this.be = new com.nibiru.lib.controller.d.c();
         this.be.start();
      }
   }

   protected final boolean j() {
      Map var1 = this.bd;
      synchronized(var1){}

      Throwable var10000;
      label3260: {
         List var4;
         boolean var10001;
         label3255: {
            ControllerServiceException var3;
            try {
               try {
                  var4 = this.getDeviceList();
                  break label3255;
               } catch (ControllerServiceException var422) {
                  var3 = var422;
               }
            } catch (Throwable var423) {
               var10000 = var423;
               var10001 = false;
               break label3260;
            }

            try {
               var3.printStackTrace();
               return false;
            } catch (Throwable var404) {
               var10000 = var404;
               var10001 = false;
               break label3260;
            }
         }

         label3248: {
            if (var4 != null) {
               try {
                  if (var4.size() != 0) {
                     break label3248;
                  }
               } catch (Throwable var421) {
                  var10000 = var421;
                  var10001 = false;
                  break label3260;
               }
            }

            try {
               if (this.bd.size() == 0) {
                  return false;
               }
            } catch (Throwable var420) {
               var10000 = var420;
               var10001 = false;
               break label3260;
            }
         }

         Object var5;
         if (var4 == null) {
            try {
               var5 = new ArrayList();
            } catch (Throwable var419) {
               var10000 = var419;
               var10001 = false;
               break label3260;
            }
         } else {
            var5 = var4;
         }

         Iterator var6;
         try {
            var6 = ((List)var5).iterator();
         } catch (Throwable var415) {
            var10000 = var415;
            var10001 = false;
            break label3260;
         }

         while(true) {
            try {
               if (!var6.hasNext()) {
                  if (((List)var5).size() == 1 && this.bd.size() == 1) {
                     return true;
                  }
                  break;
               }
            } catch (Throwable var416) {
               var10000 = var416;
               var10001 = false;
               break label3260;
            }

            ControllerDevice var7;
            try {
               var7 = (ControllerDevice)var6.next();
               if (!this.bd.containsKey(var7.getAddress())) {
                  com.nibiru.lib.controller.d.a var8 = new com.nibiru.lib.controller.d.a(this, var7);
                  this.bd.put(var7.getAddress(), var8);
                  this.mHandler.post(new ControllerServiceImpl.c(var7));
                  continue;
               }
            } catch (Throwable var418) {
               var10000 = var418;
               var10001 = false;
               break label3260;
            }

            com.nibiru.lib.controller.d.a var11;
            try {
               var11 = (com.nibiru.lib.controller.d.a)this.bd.get(var7.getAddress());
            } catch (Throwable var414) {
               var10000 = var414;
               var10001 = false;
               break label3260;
            }

            if (var11 != null) {
               try {
                  if (var11.bg.getState() != var7.getState()) {
                     this.mHandler.post(new ControllerServiceImpl.c(var7));
                  }
               } catch (Throwable var417) {
                  var10000 = var417;
                  var10001 = false;
                  break label3260;
               }

               try {
                  var11.bg = var7;
               } catch (Throwable var413) {
                  var10000 = var413;
                  var10001 = false;
                  break label3260;
               }
            }
         }

         ArrayList var13;
         Iterator var14;
         try {
            var13 = new ArrayList();
            var14 = this.bd.values().iterator();
         } catch (Throwable var409) {
            var10000 = var409;
            var10001 = false;
            break label3260;
         }

         Iterator var20;
         while(true) {
            try {
               if (!var14.hasNext()) {
                  var20 = var13.iterator();
                  break;
               }
            } catch (Throwable var412) {
               var10000 = var412;
               var10001 = false;
               break label3260;
            }

            com.nibiru.lib.controller.d.a var15;
            Iterator var16;
            try {
               var15 = (com.nibiru.lib.controller.d.a)var14.next();
               var16 = ((List)var5).iterator();
            } catch (Throwable var408) {
               var10000 = var408;
               var10001 = false;
               break label3260;
            }

            boolean var17;
            label3197: {
               while(true) {
                  try {
                     if (!var16.hasNext()) {
                        break;
                     }
                  } catch (Throwable var411) {
                     var10000 = var411;
                     var10001 = false;
                     break label3260;
                  }

                  try {
                     if (!((ControllerDevice)var16.next()).getAddress().equals(var15.bg.getAddress())) {
                        continue;
                     }
                  } catch (Throwable var410) {
                     var10000 = var410;
                     var10001 = false;
                     break label3260;
                  }

                  var17 = true;
                  break label3197;
               }

               var17 = false;
            }

            if (!var17) {
               try {
                  var15.bg.setState(3);
                  this.mHandler.post(new ControllerServiceImpl.c(var15.bg));
                  var13.add(var15.bg.getAddress());
               } catch (Throwable var407) {
                  var10000 = var407;
                  var10001 = false;
                  break label3260;
               }
            }
         }

         while(true) {
            try {
               if (!var20.hasNext()) {
                  return true;
               }
            } catch (Throwable var406) {
               var10000 = var406;
               var10001 = false;
               break;
            }

            try {
               String var21 = (String)var20.next();
               this.bd.remove(var21);
            } catch (Throwable var405) {
               var10000 = var405;
               var10001 = false;
               break;
            }
         }
      }

      Throwable var2 = var10000;
      throw var2;
   }

   public final void unregister() {
      super.unregister();
      this.p = false;
   }

   final class a {
      int[] bf = new int[256];
      ControllerDevice bg = null;
      StickEvent lastStickEvent = null;

      public a(com.nibiru.lib.controller.d var1, ControllerDevice var2) {
         Arrays.fill(this.bf, 1);
         this.bg = var2;
      }
   }

   final class b implements Runnable {
      private ControllerKeyEvent[] bh = new ControllerKeyEvent[1];

      public b(ControllerKeyEvent var2) {
         this.bh[0] = var2;
      }

      public final void run() {
         if (this.bh != null) {
            d.this.b(this.bh);
         }

      }
   }

   final class c extends Thread {
      private long bj = 0L;

      public final void run() {
         while(d.this.p && d.this.q != null && d.this.isServiceEnable()) {
            if (!d.this.isEnable()) {
               try {
                  Thread.sleep(2000L);
               } catch (InterruptedException var107) {
                  var107.printStackTrace();
               }
            } else if (System.currentTimeMillis() > 3000L && !d.this.j()) {
               try {
                  Thread.sleep(500L);
               } catch (InterruptedException var108) {
                  var108.printStackTrace();
               }
            } else {
               Map var1 = d.this.bd;
               synchronized(var1){}

               label892: {
                  Throwable var10000;
                  label891: {
                     Iterator var3;
                     boolean var10001;
                     try {
                        var3 = d.this.bd.values().iterator();
                     } catch (Throwable var117) {
                        var10000 = var117;
                        var10001 = false;
                        break label891;
                     }

                     label888:
                     while(true) {
                        try {
                           if (!var3.hasNext()) {
                              break label892;
                           }
                        } catch (Throwable var116) {
                           var10000 = var116;
                           var10001 = false;
                           break;
                        }

                        com.nibiru.lib.controller.d.a var4;
                        int var5;
                        int[] var6;
                        int[] var7;
                        int var8;
                        try {
                           var4 = (com.nibiru.lib.controller.d.a)var3.next();
                           var5 = var4.bg.getPlayerOrder();
                           var6 = d.this.getKeyStateMap(var5);
                           var7 = ControllerKeyEvent.GameKeys;
                           var8 = var7.length;
                        } catch (Throwable var113) {
                           var10000 = var113;
                           var10001 = false;
                           break;
                        }

                        for(int var9 = 0; var9 < var8; ++var9) {
                           try {
                              int var12 = var7[var9];
                              if (var4.bf[var12] != var6[var12]) {
                                 ControllerKeyEvent var13 = new ControllerKeyEvent(var6[var12], var12, var5);
                                 d.this.mHandler.post(d.this.new b(var13));
                              }
                           } catch (Throwable var115) {
                              var10000 = var115;
                              var10001 = false;
                              break label888;
                           }
                        }

                        StickEvent var10;
                        try {
                           var4.bf = var6;
                           var10 = d.this.getStickState(var5);
                        } catch (Throwable var112) {
                           var10000 = var112;
                           var10001 = false;
                           break;
                        }

                        if (var10 != null) {
                           label871: {
                              try {
                                 if (var4.lastStickEvent != null && var10.isEquals(var4.lastStickEvent)) {
                                    break label871;
                                 }
                              } catch (Throwable var114) {
                                 var10000 = var114;
                                 var10001 = false;
                                 break;
                              }

                              try {
                                 d.this.mHandler.post(d.this.new d(var10));
                              } catch (Throwable var111) {
                                 var10000 = var111;
                                 var10001 = false;
                                 break;
                              }
                           }

                           try {
                              var4.lastStickEvent = var10;
                           } catch (Throwable var110) {
                              var10000 = var110;
                              var10001 = false;
                              break;
                           }
                        }
                     }
                  }

                  Throwable var2 = var10000;
                  throw var2;
               }

               try {
                  Thread.sleep(30L);
               } catch (InterruptedException var109) {
                  var109.printStackTrace();
               }
            }
         }

         GlobalLog.d("LOOPER IS CLOSE");
      }
   }

   final class d implements Runnable {
      private StickEvent[] bk = new StickEvent[1];

      public d(StickEvent var2) {
         this.bk[0] = var2;
      }

      public final void run() {
         if (this.bk != null) {
            d.this.a((StickEvent[])this.bk);
         }

      }
   }
}
