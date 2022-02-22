package com.nibiru.lib;

import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.nibiru.lib.controller.GlobalLog;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class StatisticManager {
   public static final String TAG = "StatisticManager";
   private static StatisticManager au;
   private static SparseArray av = new SparseArray();
   private static SparseArray aw = new SparseArray();
   private StatisticManager.a ax;
   private boolean p = true;

   private StatisticManager() {
   }

   private void e() {
      synchronized(this){}

      try {
         if (this.ax == null || !this.ax.isAlive()) {
            this.p = true;
            this.ax = new StatisticManager.a((byte)0);
            this.ax.start();
         }
      } finally {
         ;
      }

   }

   public static StatisticManager getInstance() {
      Class var2 = StatisticManager.class;
      synchronized(StatisticManager.class){}

      StatisticManager var1;
      try {
         if (au == null) {
            au = new StatisticManager();
         }

         var1 = au;
      } finally {
         ;
      }

      return var1;
   }

   public void closeStatThread() {
      this.p = false;
      if (this.ax != null) {
         this.ax.b(new StatBaseInfo());
      }

   }

   public void doStatistic(long var1, long var3, int var5, int var6) {
      this.e();
      StatBaseInfo var7 = new StatBaseInfo();
      var7.setOrder(var5);
      var7.setReachTime(var3);
      var7.setStartTime(var1);
      var7.setType(var6);
      this.ax.b(var7);
   }

   public void doStatistic(long var1, KeyEvent var3) {
      this.e();
      StatBaseInfo var4 = new StatBaseInfo();
      var4.setOrder(var3.getDeviceId());
      var4.setReachTime(var1);
      var4.setStartTime(var3.getDownTime());
      var4.setType(0);
      this.ax.b(var4);
   }

   public void doStatistic(long var1, MotionEvent var3) {
      this.e();
      StatBaseInfo var4 = new StatBaseInfo();
      var4.setOrder(var3.getDeviceId());
      var4.setReachTime(var1);
      var4.setStartTime(var3.getDownTime());
      var4.setType(1);
      this.ax.b(var4);
   }

   public void doStatistic(KeyEvent var1) {
      this.e();
      StatBaseInfo var2 = new StatBaseInfo();
      var2.setOrder(var1.getDeviceId());
      var2.setReachTime(var1.getEventTime());
      var2.setStartTime(var1.getDownTime());
      var2.setType(0);
      this.ax.b(var2);
   }

   public void doStatistic(CombKeyEvent var1) {
      this.e();
      StatBaseInfo var2 = new StatBaseInfo();
      var2.setOrder(var1.getPlayerOrder());
      var2.setReachTime(var1.getTime());
      var2.setStartTime(var1.getEvents()[0].getDownTime());
      var2.setType(0);
      this.ax.b(var2);
   }

   public String getStatResult() {
      int var1 = 0;
      synchronized(this){}

      Throwable var10000;
      label322: {
         StringBuffer var2;
         boolean var10001;
         try {
            var2 = new StringBuffer();
            var2.append("============== StatisticResult ================\n\n");
            var2.append("KeyEvent:\n");
         } catch (Throwable var44) {
            var10000 = var44;
            var10001 = false;
            break label322;
         }

         int var6 = 0;

         while(true) {
            try {
               if (var6 >= av.size()) {
                  var2.append("StickEvent:\n");
                  break;
               }
            } catch (Throwable var43) {
               var10000 = var43;
               var10001 = false;
               break label322;
            }

            try {
               int var7 = av.keyAt(var6);
               var2.append(av.get(var7) + "\n\n");
            } catch (Throwable var42) {
               var10000 = var42;
               var10001 = false;
               break label322;
            }

            ++var6;
         }

         while(true) {
            try {
               if (var1 >= aw.size()) {
                  var2.append("\n\n==============================================");
                  String var13 = var2.toString();
                  return var13;
               }
            } catch (Throwable var41) {
               var10000 = var41;
               var10001 = false;
               break;
            }

            try {
               int var10 = aw.keyAt(var1);
               var2.append(aw.get(var10) + "\n\n");
            } catch (Throwable var40) {
               var10000 = var40;
               var10001 = false;
               break;
            }

            ++var1;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   final class a extends Thread {
      private BlockingQueue ay;

      private a() {
         this.ay = new LinkedBlockingQueue();
      }

      // $FF: synthetic method
      a(byte var2) {
         this();
      }

      public final void b(StatBaseInfo var1) {
         if (this.isAlive() && StatisticManager.this.p) {
            this.ay.offer(var1);
         }

      }

      public final void run() {
         while(StatisticManager.this.p) {
            InterruptedException var10000;
            label69: {
               StatBaseInfo var2;
               int var3;
               int var4;
               boolean var10001;
               try {
                  var2 = (StatBaseInfo)this.ay.take();
                  if (!StatisticManager.this.p) {
                     break;
                  }

                  var3 = var2.getType();
                  var4 = var2.getOrder();
               } catch (InterruptedException var13) {
                  var10000 = var13;
                  var10001 = false;
                  break label69;
               }

               if (var3 == 0) {
                  label75: {
                     e var5;
                     try {
                        var5 = (e)StatisticManager.av.get(var4);
                     } catch (InterruptedException var9) {
                        var10000 = var9;
                        var10001 = false;
                        break label75;
                     }

                     if (var5 == null) {
                        try {
                           var5 = new e();
                        } catch (InterruptedException var8) {
                           var10000 = var8;
                           var10001 = false;
                           break label75;
                        }
                     }

                     try {
                        var5.a(var2);
                        StatisticManager.av.append(var4, var5);
                        if (var5.getCount() % 100 == 0) {
                           GlobalLog.e("Statistic on KeyEvent: " + var5);
                        }
                        continue;
                     } catch (InterruptedException var7) {
                        var10000 = var7;
                        var10001 = false;
                     }
                  }
               } else {
                  label76: {
                     if (var3 != 1) {
                        continue;
                     }

                     e var6;
                     try {
                        var6 = (e)StatisticManager.aw.get(var4);
                     } catch (InterruptedException var12) {
                        var10000 = var12;
                        var10001 = false;
                        break label76;
                     }

                     if (var6 == null) {
                        try {
                           var6 = new e();
                        } catch (InterruptedException var11) {
                           var10000 = var11;
                           var10001 = false;
                           break label76;
                        }
                     }

                     try {
                        var6.a(var2);
                        StatisticManager.aw.append(var4, var6);
                        if (var6.getCount() % 100 == 0) {
                           GlobalLog.e("Statistic on StickEvent: " + var6);
                        }
                        continue;
                     } catch (InterruptedException var10) {
                        var10000 = var10;
                        var10001 = false;
                     }
                  }
               }
            }

            InterruptedException var1 = var10000;
            var1.printStackTrace();
         }

      }
   }
}
