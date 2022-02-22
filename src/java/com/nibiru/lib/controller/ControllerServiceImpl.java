package com.nibiru.lib.controller;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.nibiru.lib.BTDevice;
import com.nibiru.lib.BTUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

class ControllerServiceImpl implements IControllerInternalService {
   private static final Object bX = new Object();
   private static final Object bY = new Object();
   private static final Object bZ = new Object();
   private static final Object ca = new Object();
   private static final Object cb = new Object();
   private static final Object cc = new Object();
   private static final Object cd = new Object();
   private static final Object ce = new Object();
   private static int ch = -1;
   private static final Object lock = new Object();
   boolean K = false;
   private boolean L = false;
   private ServiceConnection O = new ControllerServiceImpl.k();
   boolean bA = false;
   boolean bB = true;
   boolean bC = false;
   boolean bD = false;
   com.nibiru.lib.controller.h bE = null;
   private int[] bF = null;
   private int bG = 97;
   private boolean bH = true;
   private List bI = new ArrayList();
   private OnKeyListener bJ;
   private OnStickListener bK;
   private OnSimpleStickListener bL;
   private OnAccListener bM;
   private OnGyroListener bN;
   private OnStateListener bO;
   private IControllerInternalService.OnInternalStateChanged bP;
   private ControllerService.OnControllerSeviceListener bQ;
   private OnReportListener bR;
   private OnInputResultListener bS;
   private OnVirutalServiceListener bT;
   private OnMotionSenseListener bU;
   private BroadcastReceiver bV;
   private int bW = -1;
   protected ControllerServiceImpl.f bl = new ControllerServiceImpl.f();
   private com.nibiru.lib.controller.a bm = new com.nibiru.lib.controller.a(this);
   private com.nibiru.lib.controller.l bn = new com.nibiru.lib.controller.l(this);
   private com.nibiru.lib.controller.c bo = new com.nibiru.lib.controller.c(this);
   protected com.nibiru.lib.controller.e bp;
   private com.nibiru.lib.controller.f bq;
   private com.nibiru.lib.controller.i br;
   boolean bs = false;
   boolean bt = false;
   boolean bu = false;
   private boolean bv = false;
   boolean bw = false;
   private boolean bx = false;
   boolean by = false;
   boolean bz = false;
   private boolean cf = false;
   private m cg;
   private Handler ci = null;
   private HandlerThread cj;
   private com.nibiru.lib.controller.j ck;
   com.nibiru.lib.controller.k cl;
   private boolean cm;
   private boolean cn = false;
   private boolean co = false;
   boolean cp = false;
   private Context mContext;
   private Handler mHandler = new Handler();
   protected IBluexService q;
   private String token;

   public ControllerServiceImpl() {
      this.bm = new com.nibiru.lib.controller.a(this);
      this.bn = new com.nibiru.lib.controller.l(this);
      this.br = new com.nibiru.lib.controller.i(this);
      this.cl = new com.nibiru.lib.controller.k();
      GlobalLog.DEBUG = this.bs;
   }

   private void a(AccEvent var1) {
      if (this.mHandler != null && this.K) {
         this.mHandler.post(new ControllerServiceImpl.a(var1));
      }

   }

   // $FF: synthetic method
   static void a(ControllerServiceImpl var0, int var1) {
      var0.bW = var1;
   }

   // $FF: synthetic method
   static void a(ControllerServiceImpl var0, com.nibiru.lib.controller.j var1) {
      var0.ck = var1;
   }

   // $FF: synthetic method
   static void a(ControllerServiceImpl var0, AccEvent[] var1) {
      Throwable var10000;
      label322: {
         Object var2 = bZ;
         synchronized(var2){}
         boolean var10001;
         if (var1 != null) {
            label321: {
               int var4;
               try {
                  if (var1.length <= 0) {
                     break label321;
                  }

                  var4 = var1.length;
               } catch (Throwable var36) {
                  var10000 = var36;
                  var10001 = false;
                  break label322;
               }

               for(int var5 = 0; var5 < var4; ++var5) {
                  AccEvent var6;
                  try {
                     var6 = var1[var5];
                  } catch (Throwable var35) {
                     var10000 = var35;
                     var10001 = false;
                     break label322;
                  }

                  if (var6 != null) {
                     try {
                        if (var0.L && var6.getPlayerOrder() != 1) {
                           continue;
                        }
                     } catch (Throwable var37) {
                        var10000 = var37;
                        var10001 = false;
                        break label322;
                     }

                     try {
                        var0.a(var6);
                     } catch (Throwable var34) {
                        var10000 = var34;
                        var10001 = false;
                        break label322;
                     }
                  }
               }
            }
         }

         label291:
         try {
            return;
         } catch (Throwable var33) {
            var10000 = var33;
            var10001 = false;
            break label291;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   // $FF: synthetic method
   static void a(ControllerServiceImpl var0, GyroEvent[] var1) {
      Throwable var10000;
      label322: {
         Object var2 = bZ;
         synchronized(var2){}
         boolean var10001;
         if (var1 != null) {
            label321: {
               int var4;
               try {
                  if (var1.length <= 0) {
                     break label321;
                  }

                  var4 = var1.length;
               } catch (Throwable var36) {
                  var10000 = var36;
                  var10001 = false;
                  break label322;
               }

               for(int var5 = 0; var5 < var4; ++var5) {
                  GyroEvent var6;
                  try {
                     var6 = var1[var5];
                  } catch (Throwable var35) {
                     var10000 = var35;
                     var10001 = false;
                     break label322;
                  }

                  if (var6 != null) {
                     try {
                        if (var0.L && var6.getPlayerOrder() != 1) {
                           continue;
                        }
                     } catch (Throwable var37) {
                        var10000 = var37;
                        var10001 = false;
                        break label322;
                     }

                     try {
                        var0.a(var6);
                     } catch (Throwable var34) {
                        var10000 = var34;
                        var10001 = false;
                        break label322;
                     }
                  }
               }
            }
         }

         label291:
         try {
            return;
         } catch (Throwable var33) {
            var10000 = var33;
            var10001 = false;
            break label291;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   private void a(GyroEvent var1) {
      if (this.mHandler != null && this.K) {
         this.mHandler.post(new ControllerServiceImpl.e(var1));
      }

   }

   private void a(StickEvent var1) {
      if (this.mHandler != null && this.K) {
         this.mHandler.post(new ControllerServiceImpl.l(var1));
      }

   }

   private static void b(InputEvent var0) {
      if (var0 instanceof MotionEvent) {
         ((MotionEvent)var0).recycle();
      }

   }

   // $FF: synthetic method
   static void c(ControllerServiceImpl var0) {
      var0.cj = new HandlerThread("controller-work-thread");
      var0.cj.start();
      var0.ci = new Handler(var0.cj.getLooper());
      var0.K = true;
      if (var0.mContext != null) {
         String var1 = var0.mContext.getPackageName();
         if (var1 != null && var1.startsWith("com.nibiru")) {
            var0.cf = true;
            return;
         }

         var0.cf = false;
      }

   }

   // $FF: synthetic method
   static OnKeyListener p(ControllerServiceImpl var0) {
      return var0.bJ;
   }

   // $FF: synthetic method
   static Object p() {
      return bY;
   }

   // $FF: synthetic method
   static int q(ControllerServiceImpl var0) {
      return var0.bW;
   }

   // $FF: synthetic method
   static int[] r(ControllerServiceImpl var0) {
      return var0.bF;
   }

   // $FF: synthetic method
   static com.nibiru.lib.controller.j s(ControllerServiceImpl var0) {
      return var0.ck;
   }

   final void a(int var1) {
      if (this.cl != null) {
         int var2 = this.cl.getKeyState2(var1);

         for(int var3 = 0; var3 < com.nibiru.lib.controller.k.el.size(); ++var3) {
            int var4 = com.nibiru.lib.controller.k.el.keyAt(var3);
            int var5 = com.nibiru.lib.controller.k.el.get(var4);
            if ((var2 & com.nibiru.lib.controller.k.en[var5]) > 0) {
               ControllerKeyEvent var6 = new ControllerKeyEvent(1, var4, var1);
               this.sendKeyEvent(var6);
               this.cl.e(var6);
            }
         }

         this.a(AccEvent.getDefaultAccEvent(var1));
         this.a(GyroEvent.getDefaultGyroEvent(var1));
         this.a(StickEvent.getDefaultStickEvent(var1));
      }
   }

   public void a(final int var1, final int var2, final BTDevice var3) {
      if (this.ci != null) {
         this.ci.post(new Runnable() {
            public final void run() {
               if (ControllerServiceImpl.this.mHandler != null && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
                  ControllerServiceImpl.this.mHandler.post(ControllerServiceImpl.this.new c(var1, var2, var3));
               }

               if (var2 == 3) {
                  ControllerServiceImpl.this.a(var3.getPlayerOrder());
                  ControllerServiceImpl.this.bm.stop(var3.getPlayerOrder());
                  ControllerServiceImpl.this.bn.stop(var3.getPlayerOrder());
                  ControllerServiceImpl.this.bo.stop(var3.getPlayerOrder());
               }

               if (ControllerServiceImpl.this.q != null) {
                  try {
                     ControllerServiceImpl.this.q.resetCurrentApp();
                  } catch (RemoteException var5) {
                     var5.printStackTrace();
                  }
               }

               try {
                  ControllerServiceImpl.this.getDeviceList();
               } catch (ControllerServiceException var4) {
                  var4.printStackTrace();
               }
            }
         });
      }
   }

   final void a(Context var1, Bundle var2) {
      if (var1 == null) {
         Log.e("ControllerService", "Context is null when invoking showDeviceManager");
      } else {
         IBluexService var3 = this.q;
         int var4 = 0;
         if (var3 != null) {
            label49: {
               RemoteException var10000;
               label48: {
                  boolean var10001;
                  if (var2 == null) {
                     try {
                        var2 = new Bundle();
                     } catch (RemoteException var11) {
                        var10000 = var11;
                        var10001 = false;
                        break label48;
                     }
                  }

                  try {
                     var2.putString("pkg", var1.getPackageName());
                     var4 = this.q.openDeviceManagerUI(var2);
                  } catch (RemoteException var10) {
                     var10000 = var10;
                     var10001 = false;
                     break label48;
                  }

                  if (var4 != 1) {
                     break label49;
                  }

                  try {
                     GlobalLog.e("SERVICE START DEVICE MANAGER UI");
                     break label49;
                  } catch (RemoteException var9) {
                     var10000 = var9;
                     var10001 = false;
                  }
               }

               RemoteException var8 = var10000;
               var8.printStackTrace();
            }
         }

         if (var4 == 0) {
            GlobalLog.e("NOT SUPPORT REMOTE START UI, USE LOCAL UI");
            Intent var5 = new Intent("com.nibiru.view.devicelist");
            var5.putExtra("EXTRA_DATA", var2);
            var5.addFlags(268435456);
            if (var1 instanceof Activity) {
               ((Activity)var1).startActivityForResult(var5, 65535);
               return;
            }

            var1.startActivity(var5);
            return;
         }
      }

   }

   protected final void a(Bundle var1) {
      if (var1 != null) {
         int var2 = var1.getInt("player", -1);
         byte[] var3 = var1.getByteArray("raw");
         long var4 = var1.getLong("eventTime", SystemClock.uptimeMillis());
         if (var2 >= 0 && var3 != null) {
            MotionSenseEvent var6 = new MotionSenseEvent(var2, var4, var3);
            if (this.mHandler != null && this.K) {
               this.mHandler.post(new ControllerServiceImpl.h(var6));
               return;
            }
         }
      }

   }

   public void a(ControllerKeyEvent[] var1) {
      if (this.mHandler != null && this.K) {
         int var2 = var1.length;

         for(int var3 = 0; var3 < var2; ++var3) {
            ControllerKeyEvent var4 = var1[var3];
            this.mHandler.post(new ControllerServiceImpl.g(var4, true));
         }
      }

   }

   protected final void a(StickEvent[] var1) {
      if (var1 != null && var1.length != 0) {
         int var2 = var1.length;

         for(int var3 = 0; var3 < var2; ++var3) {
            StickEvent var4 = var1[var3];
            if (var4 != null) {
               this.cl.a(var4.getPlayerOrder(), var4);
               if (!this.L || var4.getPlayerOrder() == 1) {
                  if (this.bp != null && this.bp.isAutoCursorMode() && !this.bp.isCursorShow() && var4.hasRightStickChanged() && ((double)Math.abs(var4.getAxisValue(2)) >= 0.15D || (double)Math.abs(var4.getAxisValue(3)) >= 0.15D)) {
                     this.bp.z();
                  } else {
                     if (this.bp != null && this.bp.isCursorShow()) {
                        this.bp.b(var4);
                        MotionEvent var7 = this.bp.x();
                        if (var7 != null) {
                           this.br.c(var7);
                        }

                        if (this.bp.getEventMode() == 0 || this.bp.isAutoCursorMode() && var4.hasRightStickChanged()) {
                           continue;
                        }
                     }

                     if (this.bv || !var4.isHatValue()) {
                        if (this.bn.isStart()) {
                           this.bn.handleStickEvent(var4);
                        }

                        if (this.mHandler != null) {
                           com.nibiru.lib.controller.l var10000 = this.bn;
                           com.nibiru.lib.controller.l.isHideStickEvent();
                           this.a(var4);
                        }
                     }
                  }
               }
            }
         }
      }

   }

   public boolean a(InputEvent var1) {
      if (this.q != null && this.bw) {
         try {
            boolean var3 = this.q.sendInputEvent(new NibiruInputEvent(var1));
            return var3;
         } catch (RemoteException var4) {
            var4.printStackTrace();
            return false;
         }
      } else {
         return false;
      }
   }

   final void b(ControllerKeyEvent var1) {
      label109: {
         if (var1 != null) {
            if (this.bE != null && this.bE.E()) {
               com.nibiru.lib.controller.h var4 = this.bE;
               boolean var5;
               if (var1.getAction() == 0 && var4.E()) {
                  var4.D();
                  var5 = true;
               } else {
                  var5 = false;
               }

               if (var5) {
                  return;
               }
            }

            if (this.cl == null || this.cl.e(var1)) {
               if (!this.bC) {
                  if (var1.getKeyCode() == 104) {
                     var1.setKeyCode(102);
                  } else if (var1.getKeyCode() == 105) {
                     var1.setKeyCode(103);
                  }
               }

               if (!this.L || var1.getPlayerOrder() == 1) {
                  if (this.bH && ControllerKeyEvent.isSystemKeyCode(var1.getKeyCode()) && this.br != null) {
                     this.br.c(var1.getKeyEvent());
                     return;
                  }

                  if (this.bp != null && this.bp.isCursorShow()) {
                     if (var1.isArrow() && this.bp.getMouseStick() == 2) {
                        return;
                     }

                     InputEvent var3 = this.bp.c(var1);
                     if (var3 != null) {
                        if ((var3 instanceof MotionEvent || var3 instanceof KeyEvent && ((KeyEvent)var3).getKeyCode() > 0) && this.br != null) {
                           this.br.c(var3);
                        }

                        if (this.bp.getEventMode() != 2) {
                           return;
                        }
                     } else if (this.bp.getEventMode() == 0) {
                        return;
                     }
                  }

                  if (this.bq == null || !this.bq.isDpadMode()) {
                     break label109;
                  }

                  KeyEvent var2 = this.bq.d(var1);
                  if (var2 == null) {
                     break label109;
                  }

                  if (this.br != null) {
                     this.br.c(var2);
                  }

                  if (this.bq.B()) {
                     break label109;
                  }
               }
            }
         }

         return;
      }

      this.bo.a(var1);
      if (!this.bm.isRunning()) {
         this.sendKeyEvent(var1);
      } else {
         this.bm.handleCombKey(var1);
      }
   }

   protected final void b(ControllerKeyEvent[] var1) {
      Throwable var10000;
      label148: {
         Object var2 = bZ;
         synchronized(var2){}
         boolean var10001;
         if (var1 != null) {
            label147: {
               int var4;
               try {
                  if (var1.length <= 0) {
                     break label147;
                  }

                  var4 = var1.length;
               } catch (Throwable var18) {
                  var10000 = var18;
                  var10001 = false;
                  break label148;
               }

               for(int var5 = 0; var5 < var4; ++var5) {
                  try {
                     this.b(var1[var5]);
                  } catch (Throwable var17) {
                     var10000 = var17;
                     var10001 = false;
                     break label148;
                  }
               }
            }
         }

         label128:
         try {
            return;
         } catch (Throwable var16) {
            var10000 = var16;
            var10001 = false;
            break label128;
         }
      }

      Throwable var3 = var10000;
      throw var3;
   }

   public boolean checkNibiruInstall(Context var1, boolean var2) {
      if (var1 == null) {
         GlobalLog.e("why give a null context?");
      } else {
         NibiruCheckUtil var3 = new NibiruCheckUtil(var1);
         if (var3.isNibiruInstall()) {
            return true;
         }

         if (var2) {
            var3.checkInstallNibiru();
            return false;
         }
      }

      return false;
   }

   public void configureService(int var1) {
      if (this.q != null) {
         try {
            this.q.configure(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void connectVirtualService(String var1, int var2) {
      if (this.q != null) {
         try {
            this.q.connectVirutalService(var1, var2);
         } catch (RemoteException var4) {
            var4.printStackTrace();
         }
      }
   }

   public void debug(boolean var1) {
      this.bs = var1;
   }

   public void deleteDevice(String var1) throws ControllerServiceException {
      if (this.isServiceEnable() && this.K && this.bt && this.cf) {
         try {
            this.q.deleteDevice(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
            throw new ControllerServiceException(var3.getMessage());
         }
      }
   }

   public void disconnectVirtualService(int var1) {
      if (this.q != null) {
         try {
            this.q.disconnectVirtualService(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public boolean enableGlobalControl(boolean var1) {
      if (this.q != null && this.mContext != null) {
         try {
            boolean var3 = this.q.enableGlobalControll(var1, this.mContext.getPackageName());
            return var3;
         } catch (RemoteException var4) {
            var4.printStackTrace();
            return false;
         }
      } else {
         return false;
      }
   }

   public CombKeyService getCombKeyService() {
      return this.bm;
   }

   public Context getContext() {
      return this.mContext;
   }

   public ContinuesKeyService getContinusKeyService() {
      return this.bo;
   }

   public CursorService getCursorService() {
      if (this.bp == null) {
         this.bp = new com.nibiru.lib.controller.e(this);
      }

      return this.bp;
   }

   public ControllerDevice getDeviceByPlayerOrder(int var1) throws ControllerServiceException {
      if (this.bt) {
         if (this.q == null) {
            throw new ControllerServiceException("no register controller service");
         } else {
            RemoteException var10000;
            label33: {
               boolean var10001;
               BTDevice var3;
               try {
                  var3 = this.q.getDeviceByPlayerOrder(var1);
               } catch (RemoteException var6) {
                  var10000 = var6;
                  var10001 = false;
                  break label33;
               }

               if (var3 == null) {
                  return null;
               }

               try {
                  ControllerDevice var4 = new ControllerDevice(var3);
                  return var4;
               } catch (RemoteException var5) {
                  var10000 = var5;
                  var10001 = false;
               }
            }

            RemoteException var2 = var10000;
            throw new ControllerServiceException(var2.getMessage());
         }
      } else {
         return null;
      }
   }

   public List getDeviceList() throws ControllerServiceException {
      ArrayList var1;
      if (!this.bt) {
         var1 = new ArrayList();
      } else {
         var1 = new ArrayList();
         if (this.q == null) {
            throw new ControllerServiceException("no register controller service");
         }

         BTDevice[] var3;
         try {
            var3 = this.q.getDeviceList();
         } catch (RemoteException var7) {
            var7.printStackTrace();
            throw new ControllerServiceException(var7.getMessage());
         }

         if (this.bI != null) {
            this.bI = new ArrayList();
         }

         if (var3 == null || var3.length == 0) {
            return new ArrayList();
         }

         this.bI.clear();
         int var4 = var3.length;

         for(int var5 = 0; var5 < var4; ++var5) {
            BTDevice var6 = var3[var5];
            var1.add(new ControllerDevice(var6));
            this.bI.add(var6);
         }
      }

      return var1;
   }

   public DpadService getDpadService() {
      if (this.bq == null) {
         this.bq = new com.nibiru.lib.controller.f();
      }

      return this.bq;
   }

   public int getDriverVersion() {
      try {
         int var2 = this.q.getServiceVersion();
         return var2;
      } catch (RemoteException var3) {
         var3.printStackTrace();
         return -1;
      }
   }

   public Handler getHandler() {
      return this.mHandler;
   }

   public int getKeyState(int var1, int var2) {
      if (this.q != null) {
         int var4;
         try {
            var4 = this.q.getKeyState(var1, var2);
         } catch (RemoteException var6) {
            var6.printStackTrace();
            return 1;
         }

         int var5 = var4 - 1;
         if (var5 >= 0) {
            return var5;
         }
      }

      return 1;
   }

   public int getKeyState2(int var1) {
      return this.cl.getKeyState2(var1);
   }

   public int[] getKeyStateMap(int var1) {
      int[] var4;
      if (this.q == null) {
         var4 = new int[256];
         Arrays.fill(var4, 1);
         return var4;
      } else {
         RemoteException var10000;
         label35: {
            boolean var10001;
            try {
               var4 = this.q.getKeyStateMap(var1);
            } catch (RemoteException var8) {
               var10000 = var8;
               var10001 = false;
               break label35;
            }

            if (var4 != null) {
               try {
                  if (var4.length == 256) {
                     return var4;
                  }
               } catch (RemoteException var7) {
                  var10000 = var7;
                  var10001 = false;
                  break label35;
               }
            }

            try {
               int[] var5 = new int[256];
               Arrays.fill(var5, 1);
               return var5;
            } catch (RemoteException var6) {
               var10000 = var6;
               var10001 = false;
            }
         }

         RemoteException var2 = var10000;
         var2.printStackTrace();
         int[] var3 = new int[256];
         Arrays.fill(var3, 1);
         return var3;
      }
   }

   public int getMouseSpeed() {
      if (this.q != null) {
         int var2;
         label16: {
            int var3;
            try {
               var3 = this.q.getMouseSpeed();
            } catch (RemoteException var4) {
               var4.printStackTrace();
               var2 = 10;
               break label16;
            }

            var2 = var3;
         }

         if (var2 > 0) {
            return var2;
         }
      }

      return 10;
   }

   public SensorStateService getSensorStateService() {
      return this.cl;
   }

   public ControllerServiceState getServiceState() {
      if (this.q == null) {
         return null;
      } else {
         try {
            ControllerServiceState var2 = this.q.getServiceState();
            return var2;
         } catch (RemoteException var3) {
            var3.printStackTrace();
            return null;
         }
      }
   }

   public StickSimService getStickSimService() {
      return this.bn;
   }

   public float getStickState(int var1, int var2) {
      if (this.q == null) {
         return 0.0F;
      } else {
         try {
            float var4 = this.q.getStickState(var1, var2);
            return var4;
         } catch (RemoteException var5) {
            var5.printStackTrace();
            return 0.0F;
         }
      }
   }

   public StickEvent getStickState(int var1) {
      if (this.q == null) {
         return null;
      } else {
         try {
            StickEvent var3 = this.q.getStickState2(var1);
            return var3;
         } catch (RemoteException var4) {
            var4.printStackTrace();
            return null;
         }
      }
   }

   public int getVersion() {
      return 35;
   }

   public boolean handleExternalInput(InputEvent var1) {
      byte var2 = 1;
      this.cm = (boolean)var2;
      byte var3;
      if (this.co) {
         var3 = var2;
      } else {
         var3 = 0;
         if (var1 != null) {
            IBluexService var4 = this.q;
            var3 = 0;
            if (var4 != null) {
               boolean var5 = this.isServiceEnable();
               var3 = 0;
               if (var5) {
                  Object var6;
                  if (var1 instanceof MotionEvent) {
                     var6 = MotionEvent.obtain((MotionEvent)var1);
                  } else if (var1 instanceof KeyEvent) {
                     var6 = new KeyEvent((KeyEvent)var1);
                  } else {
                     var6 = var1;
                  }

                  boolean var8;
                  label141: {
                     RemoteException var10000;
                     label150: {
                        boolean var10001;
                        label151: {
                           try {
                              if (!(var6 instanceof KeyEvent) || this.q == null) {
                                 break label151;
                              }

                              if (((KeyEvent)var6).getKeyCode() == 255) {
                                 b((InputEvent)var6);
                                 return (boolean)var2;
                              }
                           } catch (RemoteException var24) {
                              var10000 = var24;
                              var10001 = false;
                              break label150;
                           }

                           try {
                              if (!ControllerKeyEvent.isSystemExKeyCode(((KeyEvent)var6).getKeyCode()) || !this.q.isInputViewShow() || ((KeyEvent)var6).getKeyCode() != 4) {
                                 break label151;
                              }

                              this.q.hideInputView();
                              if (this.bl != null) {
                                 this.bl.onInputViewResult("", 0);
                              }
                           } catch (RemoteException var23) {
                              var10000 = var23;
                              var10001 = false;
                              break label150;
                           }

                           try {
                              b((InputEvent)var6);
                              return (boolean)var2;
                           } catch (RemoteException var15) {
                              var10000 = var15;
                              var10001 = false;
                              break label150;
                           }
                        }

                        label122: {
                           try {
                              if (this.q != null && this.K && ((InputEvent)var6).getDeviceId() >= 0 && ch >= 78) {
                                 break label122;
                              }
                           } catch (RemoteException var22) {
                              var10000 = var22;
                              var10001 = false;
                              break label150;
                           }

                           try {
                              b((InputEvent)var6);
                              return false;
                           } catch (RemoteException var16) {
                              var10000 = var16;
                              var10001 = false;
                              break label150;
                           }
                        }

                        IBluexService var9;
                        NibiruInputEvent var10;
                        String var11;
                        int var12;
                        label111: {
                           label154: {
                              try {
                                 var9 = this.q;
                                 var10 = new NibiruInputEvent((InputEvent)var6);
                                 var11 = this.token;
                                 if (this.bp == null) {
                                    break label154;
                                 }
                              } catch (RemoteException var21) {
                                 var10000 = var21;
                                 var10001 = false;
                                 break label150;
                              }

                              int var14;
                              try {
                                 var14 = this.bp.getEventMode();
                              } catch (RemoteException var20) {
                                 var10000 = var20;
                                 var10001 = false;
                                 break label150;
                              }

                              var12 = var14;
                              break label111;
                           }

                           var12 = -1;
                        }

                        label101: {
                           try {
                              if (this.bp != null && this.bp.isCursorShow()) {
                                 break label101;
                              }
                           } catch (RemoteException var19) {
                              var10000 = var19;
                              var10001 = false;
                              break label150;
                           }

                           var2 = 0;
                        }

                        byte var13;
                        label92: {
                           label91: {
                              try {
                                 if (this.bq != null && this.bq.isDpadMode()) {
                                    break label91;
                                 }
                              } catch (RemoteException var18) {
                                 var10000 = var18;
                                 var10001 = false;
                                 break label150;
                              }

                              var13 = 0;
                              break label92;
                           }

                           var13 = 2;
                        }

                        try {
                           var8 = var9.handleExternalInput(var10, var11, var12, var13 | var2);
                           break label141;
                        } catch (RemoteException var17) {
                           var10000 = var17;
                           var10001 = false;
                        }
                     }

                     RemoteException var7 = var10000;
                     var7.printStackTrace();
                     var8 = false;
                  }

                  b((InputEvent)var6);
                  return var8;
               }
            }
         }
      }

      return (boolean)var3;
   }

   public boolean hasDeviceConnected() {
      if (this.q != null) {
         RemoteException var10000;
         label57: {
            BTDevice[] var2;
            boolean var10001;
            try {
               var2 = this.q.getDeviceList();
            } catch (RemoteException var10) {
               var10000 = var10;
               var10001 = false;
               break label57;
            }

            if (var2 == null) {
               return false;
            }

            int var3;
            try {
               if (var2.length == 0) {
                  return false;
               }

               var3 = var2.length;
            } catch (RemoteException var9) {
               var10000 = var9;
               var10001 = false;
               break label57;
            }

            int var4 = 0;

            while(true) {
               if (var4 >= var3) {
                  return false;
               }

               BTDevice var5;
               try {
                  var5 = var2[var4];
               } catch (RemoteException var8) {
                  var10000 = var8;
                  var10001 = false;
                  break;
               }

               if (var5 != null) {
                  boolean var6;
                  try {
                     var6 = var5.isConnected();
                  } catch (RemoteException var7) {
                     var10000 = var7;
                     var10001 = false;
                     break;
                  }

                  if (var6) {
                     return true;
                  }
               }

               ++var4;
            }
         }

         RemoteException var1 = var10000;
         var1.printStackTrace();
         return false;
      } else {
         return false;
      }
   }

   public void hideInputView() {
      if (this.q != null) {
         try {
            this.q.hideInputView();
         } catch (RemoteException var2) {
            var2.printStackTrace();
            return;
         }
      }

   }

   protected void i() {
   }

   public boolean isEnable() {
      return this.K;
   }

   public boolean isHostControl() {
      return this.L;
   }

   public boolean isInputViewShow() {
      if (this.q == null) {
         return false;
      } else {
         try {
            boolean var2 = this.q.isInputViewShow();
            return var2;
         } catch (RemoteException var3) {
            var3.printStackTrace();
            return false;
         }
      }
   }

   public boolean isServiceEnable() {
      return this.q != null;
   }

   public boolean isSupportEnable() {
      if (this.q != null) {
         boolean var3;
         label29: {
            RemoteException var10000;
            label34: {
               boolean var10001;
               ControllerServiceState var2;
               try {
                  var2 = this.q.getServiceState();
               } catch (RemoteException var5) {
                  var10000 = var5;
                  var10001 = false;
                  break label34;
               }

               if (var2 == null) {
                  return false;
               }

               try {
                  var3 = var2.isNibiruSupport();
                  break label29;
               } catch (RemoteException var4) {
                  var10000 = var4;
                  var10001 = false;
               }
            }

            RemoteException var1 = var10000;
            var1.printStackTrace();
            return false;
         }

         if (var3) {
            return true;
         }
      }

      return false;
   }

   public boolean isSupportInput() {
      return NibiruCheckUtil.a(this.mContext) >= 73;
   }

   public boolean k() {
      if (this.mContext == null) {
         return false;
      } else if (!(this.mContext instanceof Activity)) {
         return true;
      } else if (this.l()) {
         return true;
      } else {
         this.cm = false;
         ((Activity)this.mContext).dispatchKeyEvent(ControllerKeyEvent.getKeyEvent2(1, 255));
         if (!this.cm) {
            return false;
         } else {
            if (BTUtil.getAndroidVersion() >= 12) {
               this.cm = false;
               ((Activity)this.mContext).dispatchGenericMotionEvent(StickEvent.translateTouch2(0, 0, 3, 65535));
               if (!this.cm) {
                  return false;
               }
            }

            return true;
         }
      }
   }

   public boolean l() {
      if (this.mContext == null) {
         return false;
      } else {
         this.cm = false;
         ((Activity)this.mContext).onKeyDown(255, ControllerKeyEvent.getKeyEvent2(0, 255));
         if (!this.cm) {
            return false;
         } else {
            this.cm = false;
            ((Activity)this.mContext).onKeyUp(255, ControllerKeyEvent.getKeyEvent2(1, 255));
            if (!this.cm) {
               return false;
            } else {
               if (BTUtil.getAndroidVersion() >= 12) {
                  this.cm = false;
                  ((Activity)this.mContext).onGenericMotionEvent(StickEvent.translateTouch2(0, 0, 3, 65535));
                  if (!this.cm) {
                     return false;
                  }
               }

               return true;
            }
         }
      }
   }

   protected final boolean m() {
      return this.bw;
   }

   public void notifyCursorShow(boolean var1, int var2) {
      if (this.q != null && !this.cn) {
         try {
            this.q.setCursorState(this.token, var1, var2);
         } catch (RemoteException var4) {
            var4.printStackTrace();
         }
      }
   }

   public boolean register(Context var1) throws ControllerServiceException {
      this.mContext = var1;
      if (this.mContext == null) {
         throw new ControllerServiceException("CONTEXT IS NULL!");
      } else if (!(this.mContext instanceof Activity) && !this.mContext.getPackageName().startsWith("com.nibiru")) {
         throw new ControllerServiceException("REGISTER CONTEXT MUST BE AN ACTIVITY");
      } else {
         this.co = true;
         if (this.mContext instanceof Activity && !this.k()) {
            this.co = false;
            Log.e("ControllerService", "NO PASS INPUT HANDLER CHECK, Please override dispatchKeyEvent and dispatchGenericMotionEvent methods in your activity and add following codes in these methods' first position:\nif( mControllerService != null && mControllerService.handleExternalInput(event) ){\nreturn true;\n}");
            throw new ControllerServiceException("NO PASS INPUT HANDLER CHECK, Please override dispatchKeyEvent and dispatchGenericMotionEvent methods in your activity and add following codes in these methods' first position:\nif( mControllerService != null && mControllerService.handleExternalInput(event) ){\nreturn true;\n}");
         } else {
            this.co = false;
            this.cn = false;
            if (this.mContext == null) {
               this.mContext = var1;
            }

            this.cg = new m(this.mContext);
            if (this.q != null && this.O != null) {
               this.unregister();
            }

            if (this.mContext == null) {
               GlobalLog.e("Why mContext is null?");
               if (this.bQ != null) {
                  this.bQ.onControllerServiceReady(false);
               }
            } else {
               if (this.token == null) {
                  this.token = this.mContext.getPackageName() + ":" + System.currentTimeMillis();
               }

               if (this.q == null) {
                  Intent var2 = new Intent("com.nibiru.service");
                  var2.putExtra("packageName", this.mContext.getPackageName());
                  if (this.mContext.bindService(var2, this.O, 1)) {
                     this.cp = false;
                     return true;
                  }

                  if (this.bQ != null) {
                     this.bQ.onControllerServiceReady(false);
                     return true;
                  }
               }
            }

            return true;
         }
      }
   }

   public void requestConnectDevice(BTDevice var1) throws ControllerServiceException {
      if (this.cf && this.q != null) {
         try {
            this.q.connectController(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
            throw new ControllerServiceException(var3.getMessage());
         }
      }
   }

   public void requestDisConnectDevice(BTDevice var1) throws ControllerServiceException {
      if (this.cf) {
         if (var1 != null && this.q != null) {
            try {
               this.q.disconnectController(var1);
            } catch (RemoteException var3) {
               var3.printStackTrace();
               throw new ControllerServiceException(var3.getMessage());
            }
         } else {
            GlobalLog.e("DEVICE OR SERVICE IS NULL!");
         }
      }
   }

   public void requestInfoReport(int var1) throws ControllerServiceException {
      if (this.cf && this.q != null) {
         try {
            this.q.requestErrorReport(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
            throw new ControllerServiceException(var3.getMessage());
         }
      }
   }

   public void resetCurrentApp() {
      if (this.q != null) {
         try {
            this.q.resetCurrentApp();
         } catch (RemoteException var2) {
            var2.printStackTrace();
         }
      }
   }

   final void sendKeyEvent(ControllerKeyEvent var1) {
      if (this.mHandler != null && this.K) {
         this.mHandler.post(new ControllerServiceImpl.g(var1));
      }

   }

   public boolean sendVirutalData(byte[] var1) {
      if (this.q == null) {
         return false;
      } else {
         try {
            boolean var3 = this.q.sendVirtualData(var1);
            return var3;
         } catch (RemoteException var4) {
            var4.printStackTrace();
            return false;
         }
      }
   }

   public void setAccListener(OnAccListener var1) {
      Object var2 = ca;
      synchronized(var2) {
         this.bM = var1;
         GlobalLog.d("SET ACC LISTENER: " + var1);
      }
   }

   public void setAutoGameGuide(boolean var1) {
      this.bD = var1;
   }

   public void setAutoKeyUpKeys(int[] var1) {
      int var2 = 0;
      if (var1 != null) {
         if (this.bF == null) {
            this.bF = new int[256];
         }

         Arrays.fill(this.bF, 0);

         for(int var3 = var1.length; var2 < var3; ++var2) {
            int var4 = var1[var2];
            this.bF[var4] = 1;
         }
      }

   }

   public void setAutoKeyUpMode(boolean var1) {
      this.bz = var1;
      if (!this.bz) {
         if (this.ck != null && this.ck.isAlive()) {
            this.ck.close();
         }

         this.bA = false;
      } else {
         if (this.ck == null || !this.ck.isAlive()) {
            this.ck = new com.nibiru.lib.controller.j(this);
            this.ck.start();
         }

      }
   }

   public void setAutoKeyUpParam(long var1, boolean var3) {
      if (this.bz) {
         if (this.ck == null || !this.ck.isAlive()) {
            this.ck = new com.nibiru.lib.controller.j(this);
            this.ck.start();
         }

         this.ck.setIntervalTime(var1);
         this.bA = var3;
      }
   }

   public void setControllerServiceListener(ControllerService.OnControllerSeviceListener var1) {
      this.bQ = var1;
   }

   public void setDirectPressMode(boolean var1) {
      this.bu = var1;
   }

   public void setEnable(boolean var1) {
      if (this.K && this.bp != null && this.bp.isCursorShow()) {
         this.bx = true;
      }

      this.K = var1;
      if (var1) {
         if (this.bx) {
            this.bp.y();
         }
      } else if (this.bp != null && this.bp.isCursorShow()) {
         this.bp.hideCursor();
      }

      if (this.bm != null) {
         this.bm.setEnable(var1);
      }

      if (this.bo != null) {
         if (var1) {
            this.bo.resume();
         } else {
            this.bo.pause();
         }
      }

      if (this.bn != null) {
         com.nibiru.lib.controller.l var10000;
         if (var1) {
            var10000 = this.bn;
            com.nibiru.lib.controller.l.resume();
         } else {
            var10000 = this.bn;
            com.nibiru.lib.controller.l.pause();
         }
      }

      if (this.mHandler != null) {
         this.mHandler.postDelayed(new Runnable() {
            public final void run() {
               ControllerServiceImpl.this.resetCurrentApp();
            }
         }, 3000L);
      }

   }

   public void setEnableLR2(boolean var1) {
      this.bC = var1;
   }

   public void setEnableSystemKey(boolean var1) {
      this.bH = var1;
   }

   public void setEnterKeyCode(int var1) {
      if (var1 < 0) {
         Log.e("ControllerService", "Can't support keycode less than zero!");
      } else {
         this.bG = var1;
      }
   }

   public void setGyroListener(OnGyroListener var1) {
      Object var2 = cb;
      synchronized(var2) {
         this.bN = var1;
         GlobalLog.d("SET GYRO LISTENER: " + var1);
      }
   }

   public void setHandler(Handler var1) {
      if (var1 != null) {
         this.mHandler = var1;
      }

   }

   public void setHostController(boolean var1) {
      this.L = var1;
   }

   public void setIME(boolean var1) {
      this.by = var1;
   }

   public void setInternalStateListener(IControllerInternalService.OnInternalStateChanged var1) {
      this.bP = var1;
   }

   public void setKeyListener(OnKeyListener var1) {
      Object var2 = bY;
      synchronized(var2) {
         this.bJ = var1;
      }
   }

   public void setMotionSenseListener(OnMotionSenseListener var1) {
      Object var2 = ce;
      synchronized(var2) {
         this.bU = var1;
      }
   }

   public void setNibiruIMEShow(boolean var1) {
      if (this.q != null) {
         try {
            this.q.setNibiruIMEShow(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void setNibiruPlayer(boolean var1) {
      if (this.cf && this.q != null) {
         try {
            this.q.setNibiruPlayer(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void setOneDirectMode(boolean var1) {
      this.bu = var1;
   }

   public void setPlayerOrder(int var1, int var2) {
      if (this.q != null) {
         try {
            if (this.bs) {
               GlobalLog.e("Set player order: " + var1 + " " + var2);
            }

            this.q.setPlayerOrder(var1, var2);
         } catch (RemoteException var4) {
            var4.printStackTrace();
         }
      }
   }

   public void setReportListener(OnReportListener var1) {
      this.bR = var1;
   }

   public void setRevExternalMotion(boolean var1) {
   }

   public void setSimpleStickListener(OnSimpleStickListener var1) {
      Object var2 = cc;
      synchronized(var2) {
         this.bL = var1;
      }
   }

   public void setStateListener(OnStateListener var1) {
      Object var2 = lock;
      synchronized(var2) {
         this.bO = var1;
      }
   }

   public void setStickListener(OnStickListener var1) {
      Object var2 = bX;
      synchronized(var2) {
         this.bK = var1;
      }
   }

   public void setSupportStickHatMode(boolean var1) {
      this.bv = var1;
   }

   public void setSysCursorMode(boolean var1) {
      if (this.q != null) {
         try {
            this.q.setSystemCursorMode(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void setVirtualServiceListener(OnVirutalServiceListener var1) {
      this.bT = var1;
   }

   public void showDeviceManagerUI(Context var1, Bundle var2) throws ControllerServiceException {
      if (var1 == null) {
         throw new NullPointerException("The context is null");
      } else {
         NibiruCheckUtil var3 = new NibiruCheckUtil(var1);
         if (!var3.isNibiruInstall()) {
            if (this.bV == null && this.mContext != null) {
               this.bV = new ControllerServiceImpl.PackageInstallReceiver((byte)0);
               IntentFilter var5 = new IntentFilter("android.intent.action.PACKAGE_ADDED");
               var5.addDataScheme("package");
               this.mContext.registerReceiver(this.bV, var5);
            }

            var3.checkInstallNibiru();
         } else {
            Exception var10000;
            label34: {
               boolean var10001;
               if (var2 != null) {
                  try {
                     if (var2.getBoolean("isShowTip")) {
                        var3.showDeviceTip(this, var2);
                        return;
                     }
                  } catch (Exception var7) {
                     var10000 = var7;
                     var10001 = false;
                     break label34;
                  }
               }

               try {
                  this.a(var1, var2);
                  return;
               } catch (Exception var6) {
                  var10000 = var6;
                  var10001 = false;
               }
            }

            Exception var4 = var10000;
            var4.printStackTrace();
            throw new ControllerServiceException("NO FOUND SERVICE SETTINGS UI");
         }
      }
   }

   public void showGameGuide(boolean var1) {
      if (var1) {
         if (this.bE == null) {
            this.bE = new com.nibiru.lib.controller.h(this.mContext, this.mHandler);
         }

         this.bE.C();
         this.cp = true;
      } else if (this.bE != null) {
         this.bE.D();
         this.bE = null;
         return;
      }

   }

   public boolean startInputView(String var1, String var2, int var3, int var4, OnInputResultListener var5) {
      if (var5 != null && this.q != null) {
         if (var2 == null) {
            var2 = "";
         }

         RemoteException var10000;
         label35: {
            boolean var10001;
            label34: {
               try {
                  if (this.q.isSupportInput()) {
                     break label34;
                  }
               } catch (RemoteException var9) {
                  var10000 = var9;
                  var10001 = false;
                  break label35;
               }

               if (var5 != null) {
                  try {
                     var5.onInputResult("", -1);
                     return false;
                  } catch (RemoteException var7) {
                     var10000 = var7;
                     var10001 = false;
                     break label35;
                  }
               }
            }

            try {
               this.bS = var5;
               this.q.startInputView(var1, var2, var3, var4);
               return true;
            } catch (RemoteException var8) {
               var10000 = var8;
               var10001 = false;
            }
         }

         RemoteException var6 = var10000;
         var6.printStackTrace();
         return false;
      } else {
         return false;
      }
   }

   public boolean startMotor(int var1, int var2, long var3) {
      if (this.q == null) {
         return false;
      } else {
         try {
            boolean var6 = this.q.controllMotor2(var1, var2, 0, var3);
            return var6;
         } catch (RemoteException var7) {
            var7.printStackTrace();
            return false;
         }
      }
   }

   public void startVirtualService(int var1) {
      if (this.q != null) {
         try {
            this.q.startVirtualService(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void stopMotor(int var1, int var2) {
      if (this.q != null) {
         try {
            this.q.controllMotor2(var1, var2, 1, 0L);
         } catch (RemoteException var4) {
            var4.printStackTrace();
         }
      }
   }

   public void stopVirtualService(int var1) {
      if (this.q != null) {
         try {
            this.q.stopVietualService(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }
      }
   }

   public void unregister() {
      this.cn = true;
      Iterator var1 = this.bI.iterator();

      while(var1.hasNext()) {
         this.a(((BTDevice)var1.next()).getPlayerOrder());
      }

      this.hideInputView();
      if (this.bE != null) {
         this.showGameGuide(false);
      }

      if (this.bm != null) {
         this.bm.exit();
      }

      if (this.bn != null) {
         this.bn.exit();
      }

      if (this.bo != null) {
         this.bo.exit();
      }

      if (this.bp != null) {
         this.bp.hideCursor();
         this.bp.exit();
      }

      if (this.bq != null) {
         this.bq.stopDpadMode();
      }

      if (this.ck != null) {
         this.ck.close();
      }

      if (this.cj != null) {
         this.cj.quit();
         this.cj = null;
      }

      if (this.br != null) {
         this.br.G();
      }

      this.cl.clear();
      this.K = false;
      this.bF = null;
      if (this.q != null) {
         try {
            this.q.unregisterListener(this.bl);
         } catch (RemoteException var3) {
            var3.printStackTrace();
         }

         if (this.mContext != null && this.O != null) {
            this.mContext.unbindService(this.O);
         }

         this.q = null;
      }

      if (this.bV != null && this.mContext != null) {
         this.mContext.unregisterReceiver(this.bV);
         this.bV = null;
      }

      this.setAutoKeyUpMode(false);
      this.mContext = null;
   }

   public void updateDeviceInfo(BTDevice var1) throws ControllerServiceException {
      if (this.isServiceEnable() && this.K && this.bt && this.cf) {
         try {
            this.q.updateDeviceInfo(var1);
         } catch (RemoteException var3) {
            var3.printStackTrace();
            throw new ControllerServiceException(var3.getMessage());
         }
      }
   }

   class PackageInstallReceiver extends BroadcastReceiver {
      private PackageInstallReceiver() {
      }

      // $FF: synthetic method
      PackageInstallReceiver(byte var2) {
         this();
      }

      public void onReceive(Context var1, Intent var2) {
         if (ControllerServiceImpl.this.mContext != null) {
            String var3 = var2.getDataString();
            GlobalLog.e(var3);
            if (TextUtils.equals(var3, "package:com.nibiru") || TextUtils.equals(var3, "package:com.nibiru.play")) {
               try {
                  ControllerServiceImpl.this.showDeviceManagerUI(ControllerServiceImpl.this.mContext, (Bundle)null);
                  return;
               } catch (ControllerServiceException var5) {
                  var5.printStackTrace();
                  return;
               }
            }
         }

      }
   }

   public final class a implements Runnable {
      private AccEvent cu;

      public a(AccEvent var2) {
         if (var2 != null) {
            this.cu = var2;
         }

      }

      public final void run() {
         Object var1 = ControllerServiceImpl.ca;
         synchronized(var1) {
            if (ControllerServiceImpl.this.bM != null && this.cu != null) {
               ControllerServiceImpl.this.bM.onControllerAccEvent(this.cu.getPlayerOrder(), this.cu);
            }

         }
      }
   }

   public final class b implements Runnable {
      private int cv;

      public b(int var2) {
         this.cv = var2;
      }

      public final void run() {
         Object var1 = ControllerServiceImpl.lock;
         synchronized(var1) {
            if (ControllerServiceImpl.this.bO != null) {
               ControllerServiceImpl.this.bO.onBluetoothStateChanged(this.cv);
            }

         }
      }
   }

   public final class c implements Runnable {
      private ControllerDevice cw;
      private int n;
      private int state;

      public c(int var2, int var3, BTDevice var4) {
         this.n = var2;
         this.state = var3;
         this.cw = new ControllerDevice(var4);
      }

      public c(ControllerDevice var2) {
         this.n = var2.getPlayerOrder();
         this.state = var2.getState();
         this.cw = var2;
      }

      public final void run() {
         Object var1 = ControllerServiceImpl.lock;
         synchronized(var1){}

         Throwable var10000;
         label121: {
            boolean var10001;
            label125: {
               try {
                  if (ControllerServiceImpl.this.bO != null) {
                     ControllerServiceImpl.this.bO.onControllerStateChanged(this.n, this.state, this.cw);
                     break label125;
                  }
               } catch (Throwable var15) {
                  var10000 = var15;
                  var10001 = false;
                  break label121;
               }

               try {
                  GlobalLog.d("EMPTY LISTENER");
               } catch (Throwable var14) {
                  var10000 = var14;
                  var10001 = false;
                  break label121;
               }
            }

            label111:
            try {
               return;
            } catch (Throwable var13) {
               var10000 = var13;
               var10001 = false;
               break label111;
            }
         }

         Throwable var2 = var10000;
         throw var2;
      }
   }

   public final class d implements Runnable {
      private String cx;

      public d(String var2) {
         this.cx = var2;
      }

      public final void run() {
         if (ControllerServiceImpl.this.bP != null) {
            ControllerServiceImpl.this.bP.onError(this.cx);
         }

      }
   }

   public final class e implements Runnable {
      private GyroEvent cy;

      public e(GyroEvent var2) {
         if (var2 != null) {
            this.cy = var2;
         }

      }

      public final void run() {
         Object var1 = ControllerServiceImpl.cb;
         synchronized(var1) {
            if (ControllerServiceImpl.this.bN != null && this.cy != null) {
               ControllerServiceImpl.this.bN.onControllerGyroEvent(this.cy.getPlayerOrder(), this.cy);
            }

         }
      }
   }

   final class f extends IBluexListener.a {
      public final int[] getCurrentCursorState() throws RemoteException {
         int[] var1 = new int[2];
         if (ControllerServiceImpl.this.bp != null) {
            var1[0] = ControllerServiceImpl.this.bp.A();
            var1[1] = ControllerServiceImpl.this.bp.getInterval();
            return var1;
         } else {
            var1[0] = -1;
            var1[1] = -1;
            return var1;
         }
      }

      public final int getEnterKeyCode() throws RemoteException {
         return ControllerServiceImpl.this.bG;
      }

      public final String getPackageName() throws RemoteException {
         return ControllerServiceImpl.this.mContext == null ? "unknown" : ControllerServiceImpl.this.mContext.getPackageName();
      }

      public final String getToken() throws RemoteException {
         return ControllerServiceImpl.this.token;
      }

      public final boolean isCursorReady() throws RemoteException {
         if (ControllerServiceImpl.this.bp != null && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            return ControllerServiceImpl.this.bp.isCursorShow() ? true : ControllerServiceImpl.this.bp.isCursorReady();
         } else {
            return false;
         }
      }

      public final boolean isCursorShow() throws RemoteException {
         return ControllerServiceImpl.this.bp != null && ControllerServiceImpl.this.bp.isCursorShow();
      }

      public final int isEnable() throws RemoteException {
         return ControllerServiceImpl.this.K ? 1 : -1;
      }

      public final boolean isEnableLR2() throws RemoteException {
         return ControllerServiceImpl.this.bC;
      }

      public final int isIME() throws RemoteException {
         return ControllerServiceImpl.this.by ? 1 : -1;
      }

      public final void onAccEvent(final AccEvent[] var1) throws RemoteException {
         if (ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            ControllerServiceImpl.this.ci.post(new Runnable() {
               public final void run() {
                  ControllerServiceImpl.a((ControllerServiceImpl)ControllerServiceImpl.this, (AccEvent[])var1);
               }
            });
         }
      }

      public final void onBluetoothStateChange(int var1) throws RemoteException {
         if (ControllerServiceImpl.this.mHandler != null && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            ControllerServiceImpl.this.mHandler.post(ControllerServiceImpl.this.new b(var1));
         }

      }

      public final void onControllerStateChange(int var1, int var2, BTDevice var3) throws RemoteException {
         if (ControllerServiceImpl.this.bB) {
            ControllerServiceImpl.this.a(var1, var2, var3);
         }
      }

      public final void onCursorSpeedChanged(int var1, int var2) throws RemoteException {
         if (ControllerServiceImpl.this.bp != null) {
            ControllerServiceImpl.this.bp.setSensitivity(var1, var2);
         }

      }

      public final void onError(String var1) throws RemoteException {
         if (ControllerServiceImpl.this.bs && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            GlobalLog.e("Controller Service meets error: " + var1);
         }

         if (ControllerServiceImpl.this.bP != null) {
            ControllerServiceImpl.this.mHandler.post(ControllerServiceImpl.this.new d(var1));
         }

      }

      public final void onErrorReportReady(int var1, String var2) throws RemoteException {
         if (ControllerServiceImpl.this.mHandler != null && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            ControllerServiceImpl.this.mHandler.post(ControllerServiceImpl.this.new j(var1, var2));
         }

      }

      public final void onExternalDeviceUpdate(BTDevice[] var1) throws RemoteException {
      }

      public final void onGyroEvent(final GyroEvent[] var1) throws RemoteException {
         if (ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
            ControllerServiceImpl.this.ci.post(new Runnable() {
               public final void run() {
                  ControllerServiceImpl.a((ControllerServiceImpl)ControllerServiceImpl.this, (GyroEvent[])var1);
               }
            });
         }
      }

      public final void onInputViewResult(String var1, int var2) throws RemoteException {
         if (ControllerServiceImpl.this.bS != null && ControllerServiceImpl.this.mHandler != null && ControllerServiceImpl.this.K) {
            ControllerServiceImpl.this.mHandler.post(ControllerServiceImpl.this.new i(var1, var2));
         }

      }

      public final void onKeyEvent(final ControllerKeyEvent[] var1) throws RemoteException {
         if (ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt && ControllerServiceImpl.this.bB) {
            ControllerServiceImpl.this.ci.post(new Runnable() {
               public final void run() {
                  ControllerServiceImpl.this.b(var1);
               }
            });
         }
      }

      public final void onKeyStateUpdate(final int var1, final int[] var2) throws RemoteException {
         ControllerServiceImpl.this.ci.post(new Runnable() {
            public final void run() {
               if (ControllerServiceImpl.this.bm != null) {
                  ControllerServiceImpl.this.bm.a(var1, var2);
               }

            }
         });
      }

      public final void onMotionSenseDataChanged(final Bundle var1) throws RemoteException {
         if (ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt && ControllerServiceImpl.this.bB) {
            ControllerServiceImpl.this.ci.post(new Runnable() {
               public final void run() {
                  ControllerServiceImpl.this.a(var1);
               }
            });
         }
      }

      public final void onStickEvent(final StickEvent[] var1) throws RemoteException {
         if (ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt && ControllerServiceImpl.this.bB) {
            ControllerServiceImpl.this.ci.post(new Runnable() {
               public final void run() {
                  ControllerServiceImpl.this.a(var1);
               }
            });
         }
      }

      public final void onVirtualServiceState(final int var1) throws RemoteException {
         if (ControllerServiceImpl.this.bT != null && ControllerServiceImpl.this.mHandler != null) {
            ControllerServiceImpl.this.mHandler.post(new Runnable() {
               public final void run() {
                  if (var1 >= 255 && var1 < 271) {
                     ControllerServiceImpl.this.bT.onRevVirtualPlayerOrder(-255 + var1);
                  } else {
                     switch(var1) {
                     case 0:
                        ControllerServiceImpl.this.bT.onVirutalServiceSuccess();
                        return;
                     case 1:
                        ControllerServiceImpl.this.bT.onVirutalServiceFailed();
                        return;
                     case 2:
                        ControllerServiceImpl.this.bT.onVirutalConnSuccess();
                        return;
                     case 3:
                        ControllerServiceImpl.this.bT.onVirutalConnFailed();
                        return;
                     default:
                     }
                  }
               }
            });
         }

      }

      public final void setCursorModeForce(boolean var1) throws RemoteException {
         if (ControllerServiceImpl.this.bp == null) {
            ControllerServiceImpl.this.getCursorService();
         }

         if (var1 && !ControllerServiceImpl.this.bp.isCursorShow()) {
            if (!ControllerServiceImpl.this.cn && ControllerServiceImpl.this.K && ControllerServiceImpl.this.bt) {
               ControllerServiceImpl.this.bp.y();
            }
         } else if (!var1 && ControllerServiceImpl.this.bp.isCursorShow()) {
            ControllerServiceImpl.this.bp.hideCursor();
            return;
         }

      }
   }

   public final class g implements Runnable {
      private ControllerKeyEvent cG;
      private boolean cH = false;

      public g(ControllerKeyEvent var2) {
         this.cG = var2;
      }

      public g(ControllerKeyEvent var2, boolean var3) {
         this.cG = var2;
         this.cH = true;
      }

      public final void run() {
         // $FF: Couldn't be decompiled
      }
   }

   public final class h implements Runnable {
      private MotionSenseEvent cI;

      public h(MotionSenseEvent var2) {
         this.cI = var2;
      }

      public final void run() {
         Object var1 = ControllerServiceImpl.ce;
         synchronized(var1) {
            if (ControllerServiceImpl.this.bU != null && this.cI != null) {
               ControllerServiceImpl.this.bU.onMotionSenseChanged(this.cI.getPlayerOrder(), this.cI);
            }

         }
      }
   }

   public final class i implements Runnable {
      private String cJ;
      private int cK;

      public i(String var2, int var3) {
         this.cJ = var2;
         this.cK = var3;
      }

      public final void run() {
         Object var1 = ControllerServiceImpl.cd;
         synchronized(var1) {
            if (ControllerServiceImpl.this.bS != null) {
               ControllerServiceImpl.this.bS.onInputResult(this.cJ, this.cK);
            }

         }
      }
   }

   public final class j implements Runnable {
      private String cL;
      private int type;

      public j(int var2, String var3) {
         this.type = var2;
         this.cL = var3;
      }

      public final void run() {
         if (ControllerServiceImpl.this.bR != null) {
            ControllerServiceImpl.this.bR.onReportReady(this.type, new File(this.cL));
         }

      }
   }

   final class k implements ServiceConnection {
      public final void onServiceConnected(ComponentName var1, IBinder var2) {
         ControllerServiceImpl.this.q = IBluexService.Stub.asInterface(var2);
         if (ControllerServiceImpl.this.q == null) {
            GlobalLog.e("Why controller service is null after asInterface");
            if (ControllerServiceImpl.this.bQ != null) {
               ControllerServiceImpl.this.bQ.onControllerServiceReady(false);
            }
         } else {
            String var4;
            label82: {
               String var12;
               try {
                  var12 = ControllerServiceImpl.this.q.getServiceToken();
               } catch (RemoteException var18) {
                  var18.printStackTrace();
                  var4 = null;
                  break label82;
               }

               var4 = var12;
            }

            ControllerServiceImpl.this.cg.a(var4);
            ControllerServiceImpl.this.bt = ControllerServiceImpl.this.cg.I();
            ControllerServiceImpl.ch = ControllerServiceImpl.this.cg.versionCode;
            GlobalLog.e("VER: " + ControllerServiceImpl.ch);
            if (!ControllerServiceImpl.this.bt) {
               if (ControllerServiceImpl.this.bQ != null) {
                  ControllerServiceImpl.this.bQ.onControllerServiceReady(false);
               }

               ControllerServiceImpl.this.unregister();
               return;
            }

            ControllerServiceImpl.c(ControllerServiceImpl.this);

            try {
               ControllerServiceImpl.this.q.registerListener(ControllerServiceImpl.this.bl);
            } catch (RemoteException var17) {
               var17.printStackTrace();
               if (ControllerServiceImpl.this.bQ == null) {
                  return;
               }

               ControllerServiceImpl.this.bQ.onControllerServiceReady(false);
               return;
            }

            if (ControllerServiceImpl.this.bQ != null) {
               ControllerServiceImpl.this.bQ.onControllerServiceReady(true);
            }

            ControllerServiceImpl.this.i();

            label67: {
               RemoteException var10000;
               label88: {
                  ControllerServiceState var11;
                  boolean var10001;
                  try {
                     var11 = ControllerServiceImpl.this.q.getServiceState();
                  } catch (RemoteException var16) {
                     var10000 = var16;
                     var10001 = false;
                     break label88;
                  }

                  if (var11 == null) {
                     break label67;
                  }

                  try {
                     ControllerServiceImpl.this.bw = var11.isNibiruSupport();
                     break label67;
                  } catch (RemoteException var15) {
                     var10000 = var15;
                     var10001 = false;
                  }
               }

               RemoteException var6 = var10000;
               var6.printStackTrace();
            }

            if (ControllerServiceImpl.this.mContext != null && ControllerServiceImpl.this.q != null) {
               try {
                  ControllerServiceImpl.this.q.enableGlobalControll(false, ControllerServiceImpl.this.mContext.getPackageName());
               } catch (RemoteException var14) {
                  var14.printStackTrace();
               }
            }

            try {
               ControllerServiceImpl.this.getDeviceList();
            } catch (ControllerServiceException var13) {
               var13.printStackTrace();
            }

            if (ControllerServiceImpl.this.bD && ControllerServiceImpl.this.hasDeviceConnected() && ControllerServiceImpl.this.bE == null && !ControllerServiceImpl.this.cp) {
               ControllerServiceImpl.this.showGameGuide(true);
               return;
            }
         }

      }

      public final void onServiceDisconnected(ComponentName var1) {
         ControllerServiceImpl.this.q = null;
         GlobalLog.e("Service connection failed");
         if (ControllerServiceImpl.this.bQ != null) {
            ControllerServiceImpl.this.bQ.onControllerServiceReady(false);
         }

      }
   }

   public final class l implements Runnable {
      private StickEvent cM;

      public l(StickEvent var2) {
         if (var2 != null) {
            this.cM = var2;
         }

      }

      public final void run() {
         if (this.cM != null) {
            this.cM.setEventTime(SystemClock.uptimeMillis());
            Object var1 = ControllerServiceImpl.bX;
            synchronized(var1) {
               if (ControllerServiceImpl.this.bK != null) {
                  ControllerServiceImpl.this.bK.onControllerStickEvent(this.cM.getPlayerOrder(), this.cM);
               }
            }

            Object var3 = ControllerServiceImpl.cc;
            synchronized(var3) {
               if (ControllerServiceImpl.this.bL != null) {
                  if (this.cM.hasLeftStickChanged()) {
                     ControllerServiceImpl.this.bL.onLeftStickChanged(this.cM.getPlayerOrder(), this.cM.getAxisValue(0), this.cM.getAxisValue(1));
                  }

                  if (this.cM.hasRightStickChanged()) {
                     ControllerServiceImpl.this.bL.onRightStickChanged(this.cM.getPlayerOrder(), this.cM.getAxisValue(2), this.cM.getAxisValue(3));
                  }
               }
            }
         }

      }
   }
}
