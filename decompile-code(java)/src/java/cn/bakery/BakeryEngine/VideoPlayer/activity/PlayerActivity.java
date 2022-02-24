package cn.bakery.BakeryEngine.VideoPlayer.activity;

import android.app.Activity;
import android.content.res.AssetFileDescriptor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.SurfaceHolder.Callback;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.SeekBar.OnSeekBarChangeListener;
import cn.bakery.BakeryEngine.VideoPlayer.helper.SystemUtility;
import cn.bakery.BakeryEngine.VideoPlayer.player.AbsMediaPlayer;
import cn.bakery.BakeryEngine.VideoPlayer.player.DefMediaPlayer;
import java.io.FileInputStream;

public class PlayerActivity extends Activity implements OnClickListener, OnTouchListener, OnSeekBarChangeListener, AbsMediaPlayer.OnBufferingUpdateListener, AbsMediaPlayer.OnCompletionListener, AbsMediaPlayer.OnErrorListener, AbsMediaPlayer.OnInfoListener, AbsMediaPlayer.OnPreparedListener, AbsMediaPlayer.OnProgressUpdateListener, AbsMediaPlayer.OnVideoSizeChangedListener {
   static final String LOGTAG = "DANMAKU-PlayerActivity";
   private static final int MEDIA_PLAYER_BUFFERING_UPDATE = 16385;
   private static final int MEDIA_PLAYER_COMPLETION = 16386;
   private static final int MEDIA_PLAYER_ERROR = 16387;
   private static final int MEDIA_PLAYER_INFO = 16388;
   private static final int MEDIA_PLAYER_PREPARED = 16389;
   private static final int MEDIA_PLAYER_PROGRESS_UPDATE = 16390;
   private static final int MEDIA_PLAYER_VIDEO_SIZE_CHANGED = 16391;
   private static final int SURFACE_16_10 = 5;
   private static final int SURFACE_16_9 = 4;
   private static final int SURFACE_4_3 = 3;
   private static final int SURFACE_FILL = 1;
   private static final int SURFACE_MAX = 6;
   private static final int SURFACE_NONE = 0;
   private static final int SURFACE_ORIG = 2;
   public static Boolean Vmode = false;
   private int mAspectRatio = 0;
   private boolean mCanSeek = true;
   private Handler mEventHandler;
   private ImageButton mImageButtonNext;
   private ImageButton mImageButtonPrevious;
   private ImageButton mImageButtonSwitchAspectRatio;
   private ImageButton mImageButtonSwitchAudio;
   private ImageButton mImageButtonSwitchSubtitle;
   private ImageButton mImageButtonToggleMessage;
   private ImageButton mImageButtonTogglePlay;
   private FileInputStream mInputStream = null;
   private int mLength = -1;
   private LinearLayout mLinearLayoutControlBar;
   private AbsMediaPlayer mMediaPlayer = null;
   private boolean mMediaPlayerLoaded = false;
   private boolean mMediaPlayerStarted = false;
   private PlayerActivity.PlayInfo mPlayInfo = null;
   private ProgressBar mProgressBarPreparing;
   private SeekBar mSeekBarProgress;
   private SurfaceHolder mSurfaceHolderDef;
   private SurfaceView mSurfaceViewDef;
   private TextView mTextViewLength;
   private TextView mTextViewTime;
   private int mTime = -1;
   private String uri;

   private static boolean isDefMediaPlayer(Object var0) {
      return var0.getClass().getName().compareTo(DefMediaPlayer.class.getName()) == 0;
   }

   protected void changeSurfaceSize(AbsMediaPlayer var1, SurfaceView var2, int var3) {
      int var4 = var1.getVideoWidth();
      int var5 = var1.getVideoHeight();
      if (var4 > 0 && var5 > 0) {
         var2.getHolder().setFixedSize(var4, var5);
         int var6 = this.getWindowManager().getDefaultDisplay().getWidth();
         int var7 = this.getWindowManager().getDefaultDisplay().getHeight();
         int var8 = -1;
         int var9 = -1;
         switch(var3) {
         case 0:
            var8 = var4;
            var9 = var5;
         case 1:
         default:
            break;
         case 2:
            var6 = var4;
            var7 = var5;
            break;
         case 3:
            var8 = 4;
            var9 = 3;
            break;
         case 4:
            var8 = 16;
            var9 = 9;
            break;
         case 5:
            var8 = 16;
            var9 = 10;
         }

         if (var8 > 0 && var9 > 0) {
            if ((double)var6 / (double)var7 > (double)var8 / (double)var9) {
               var6 = var7 * var8 / var9;
            } else {
               var7 = var6 * var9 / var8;
            }
         }

         LayoutParams var10 = var2.getLayoutParams();
         var10.width = var6;
         var10.height = var7;
         var2.setLayoutParams(var10);
         var2.invalidate();
      }
   }

   protected void createMediaPlayer(boolean var1, SurfaceHolder var2) {
      Log.d("DANMAKU-PlayerActivity", "createMediaPlayer() " + this.mPlayInfo.toString());
      this.resetMediaPlayer();
      this.mMediaPlayer = AbsMediaPlayer.getMediaPlayer(var1);
      this.mMediaPlayer.setOnBufferingUpdateListener(this);
      this.mMediaPlayer.setOnCompletionListener(this);
      this.mMediaPlayer.setOnErrorListener(this);
      this.mMediaPlayer.setOnInfoListener(this);
      this.mMediaPlayer.setOnPreparedListener(this);
      this.mMediaPlayer.setOnProgressUpdateListener(this);
      this.mMediaPlayer.setOnVideoSizeChangedListener(this);
      this.mMediaPlayer.reset();
      this.mMediaPlayer.setDisplay(var2);
      switch(this.mPlayInfo.mType) {
      case 0:
         this.mMediaPlayer.setDataSource(this.mPlayInfo.mFile);
         break;
      case 1:
         try {
            AssetFileDescriptor var11 = this.getAssets().openFd(this.mPlayInfo.mFile);
            this.mMediaPlayer.setDataSource(var11.getFileDescriptor(), var11.getStartOffset(), var11.getLength());
         } catch (Exception var14) {
            Log.e("DANMAKU-PlayerActivity", "createMediaPlayer() " + var14.getMessage());
         }
         break;
      case 2:
         try {
            if (this.mInputStream != null) {
               this.mInputStream.close();
            }

            this.mInputStream = new FileInputStream(this.mPlayInfo.mFile);
            this.mMediaPlayer.setDataSource(this.mInputStream.getFD(), (long)this.mPlayInfo.mOffset, (long)this.mPlayInfo.mLength);
         } catch (Exception var13) {
            Log.e("DANMAKU-PlayerActivity", "createMediaPlayer() " + var13.getMessage());
         }
         break;
      case 3:
         try {
            AssetFileDescriptor var6 = this.getAssets().openFd(this.mPlayInfo.mFile);
            this.mMediaPlayer.setDataSource(var6.getFileDescriptor(), var6.getStartOffset() + (long)this.mPlayInfo.mOffset, (long)this.mPlayInfo.mLength);
         } catch (Exception var12) {
            Log.e("DANMAKU-PlayerActivity", "createMediaPlayer() " + var12.getMessage());
         }
      }

      this.mMediaPlayer.prepareAsync();
   }

   protected void destroyMediaPlayer(boolean var1) {
      if (var1 == isDefMediaPlayer(this.mMediaPlayer)) {
         this.mMediaPlayer.setDisplay((SurfaceHolder)null);
         this.mMediaPlayer.release();
         this.mMediaPlayer = null;
      }

   }

   protected void initializeControls() {
      this.mSurfaceViewDef = (SurfaceView)this.findViewById(2131034124);
      this.mSurfaceViewDef.setOnTouchListener(this);
      this.mSurfaceHolderDef = this.mSurfaceViewDef.getHolder();
      this.mSurfaceHolderDef.setType(3);
      this.mSurfaceHolderDef.addCallback(new Callback() {
         public void surfaceChanged(SurfaceHolder var1, int var2, int var3, int var4) {
            PlayerActivity.this.mMediaPlayer.setDisplay(var1);
         }

         public void surfaceCreated(SurfaceHolder var1) {
            PlayerActivity.this.createMediaPlayer(true, PlayerActivity.this.mSurfaceHolderDef);
         }

         public void surfaceDestroyed(SurfaceHolder var1) {
            PlayerActivity.this.destroyMediaPlayer(true);
         }
      });
      this.mTextViewTime = (TextView)this.findViewById(2131034113);
      this.mSeekBarProgress = (SeekBar)this.findViewById(2131034114);
      this.mSeekBarProgress.setOnSeekBarChangeListener(this);
      this.mTextViewLength = (TextView)this.findViewById(2131034115);
      this.mImageButtonToggleMessage = (ImageButton)this.findViewById(2131034116);
      this.mImageButtonToggleMessage.setOnClickListener(this);
      this.mImageButtonSwitchAudio = (ImageButton)this.findViewById(2131034117);
      this.mImageButtonSwitchAudio.setOnClickListener(this);
      this.mImageButtonSwitchSubtitle = (ImageButton)this.findViewById(2131034118);
      this.mImageButtonSwitchSubtitle.setOnClickListener(this);
      this.mImageButtonPrevious = (ImageButton)this.findViewById(2131034119);
      this.mImageButtonPrevious.setOnClickListener(this);
      this.mImageButtonTogglePlay = (ImageButton)this.findViewById(2131034120);
      this.mImageButtonTogglePlay.setOnClickListener(this);
      this.mImageButtonNext = (ImageButton)this.findViewById(2131034121);
      this.mImageButtonNext.setOnClickListener(this);
      this.mImageButtonSwitchAspectRatio = (ImageButton)this.findViewById(2131034122);
      this.mImageButtonSwitchAspectRatio.setOnClickListener(this);
      this.mLinearLayoutControlBar = (LinearLayout)this.findViewById(2131034112);
      this.mProgressBarPreparing = (ProgressBar)this.findViewById(2131034123);
   }

   protected void initializeEvents() {
      this.mEventHandler = new Handler() {
         public void handleMessage(Message var1) {
            switch(var1.what) {
            case 16385:
               if (PlayerActivity.this.mMediaPlayerLoaded) {
                  ProgressBar var11 = PlayerActivity.this.mProgressBarPreparing;
                  int var12 = var1.arg1;
                  byte var13 = 0;
                  if (var12 >= 100) {
                     var13 = 8;
                  }

                  var11.setVisibility(var13);
                  return;
               }
            case 16386:
            default:
               break;
            case 16387:
               if (PlayerActivity.this.mMediaPlayerLoaded) {
                  PlayerActivity.this.mProgressBarPreparing.setVisibility(8);
               }

               PlayerActivity.this.startMediaPlayer();
               return;
            case 16388:
               if (var1.arg1 == 801) {
                  PlayerActivity.this.mCanSeek = false;
                  return;
               }
               break;
            case 16389:
               if (PlayerActivity.isDefMediaPlayer(var1.obj)) {
                  PlayerActivity.this.mMediaPlayerLoaded = true;
               }

               if (PlayerActivity.this.mMediaPlayerLoaded) {
                  PlayerActivity.this.mProgressBarPreparing.setVisibility(8);
               }

               PlayerActivity.this.startMediaPlayer();
               return;
            case 16390:
               if (PlayerActivity.this.mMediaPlayer != null) {
                  int var5 = var1.arg2;
                  if (var5 >= 0) {
                     PlayerActivity.this.mLength = var5;
                     PlayerActivity.this.mTextViewLength.setText(SystemUtility.getTimeString(PlayerActivity.this.mLength));
                     PlayerActivity.this.mSeekBarProgress.setMax(PlayerActivity.this.mLength);
                  }

                  int var6 = var1.arg1;
                  if (var6 >= 0) {
                     PlayerActivity.this.mTime = var6;
                     PlayerActivity.this.mTextViewTime.setText(SystemUtility.getTimeString(PlayerActivity.this.mTime));
                     PlayerActivity.this.mSeekBarProgress.setProgress(PlayerActivity.this.mTime);
                     return;
                  }
               }
               break;
            case 16391:
               AbsMediaPlayer var2 = (AbsMediaPlayer)var1.obj;
               SurfaceView var3 = PlayerActivity.this.mSurfaceViewDef;
               int var4 = PlayerActivity.this.mAspectRatio;
               PlayerActivity.this.changeSurfaceSize(var2, var3, var4);
               return;
            }

         }
      };
   }

   public void onBufferingUpdate(AbsMediaPlayer var1, int var2) {
      Message var3 = new Message();
      var3.obj = var1;
      var3.what = 16385;
      var3.arg1 = var2;
      this.mEventHandler.sendMessage(var3);
   }

   public void onClick(View var1) {
      byte var2 = 1;
      if (this.mMediaPlayerLoaded) {
         switch(var1.getId()) {
         case 2131034117:
         case 2131034118:
         case 2131034119:
            break;
         case 2131034120:
            AbsMediaPlayer var5 = this.mMediaPlayer;
            boolean var6 = false;
            if (var5 != null) {
               var6 = this.mMediaPlayer.isPlaying();
            }

            if (var6) {
               if (this.mMediaPlayer != null) {
                  this.mMediaPlayer.pause();
               }
            } else if (this.mMediaPlayer != null) {
               this.mMediaPlayer.start();
            }

            Object[] var7 = new Object[var2];
            if (var6) {
               var2 = 0;
            }

            var7[0] = Integer.valueOf(var2);
            int var8 = SystemUtility.getDrawableId(String.format("btn_play_%d", var7));
            this.mImageButtonTogglePlay.setBackgroundResource(var8);
            return;
         case 2131034121:
         default:
            return;
         case 2131034122:
            this.mAspectRatio = (1 + this.mAspectRatio) % 6;
            if (this.mMediaPlayer != null) {
               this.changeSurfaceSize(this.mMediaPlayer, this.mSurfaceViewDef, this.mAspectRatio);
            }

            Object[] var3 = new Object[var2];
            var3[0] = this.mAspectRatio;
            int var4 = SystemUtility.getDrawableId(String.format("btn_aspect_ratio_%d", var3));
            this.mImageButtonSwitchAspectRatio.setBackgroundResource(var4);
            return;
         }
      }

   }

   public void onCompletion(AbsMediaPlayer var1) {
      Message var2 = new Message();
      var2.obj = var1;
      var2.what = 16386;
      this.mEventHandler.sendMessage(var2);
      this.mMediaPlayer.stop();
      this.mMediaPlayer.release();
      this.finish();
   }

   public void onCreate(Bundle var1) {
      super.onCreate(var1);
      Bundle var2 = this.getIntent().getExtras();
      this.mPlayInfo = new PlayerActivity.PlayInfo(var2.getString("file"), var2.getInt("type"), var2.getInt("offset"), var2.getInt("length"));
      this.getWindow().addFlags(128);
      this.initializeEvents();
      this.setContentView(2130903040);
      this.initializeControls();
      this.mProgressBarPreparing.setVisibility(0);
      this.mSurfaceViewDef.setVisibility(0);
      Vmode = false;
   }

   public void onDestroy() {
      super.onDestroy();
   }

   public boolean onError(AbsMediaPlayer var1, int var2, int var3) {
      Message var4 = new Message();
      var4.obj = var1;
      var4.what = 16387;
      var4.arg1 = var2;
      var4.arg2 = var3;
      this.mEventHandler.sendMessage(var4);
      return true;
   }

   public boolean onInfo(AbsMediaPlayer var1, int var2, int var3) {
      Message var4 = new Message();
      var4.obj = var1;
      var4.what = 16388;
      var4.arg1 = var2;
      var4.arg2 = var3;
      this.mEventHandler.sendMessage(var4);
      return true;
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      if (var1 == 4) {
         this.mMediaPlayer.pause();
         this.mMediaPlayer.stop();
      }

      return super.onKeyDown(var1, var2);
   }

   protected void onPause() {
      super.onPause();
      if (this.mMediaPlayer != null) {
         this.mMediaPlayer.pause();
         this.mMediaPlayer.stop();
      }

   }

   public void onPrepared(AbsMediaPlayer var1) {
      Message var2 = new Message();
      var2.obj = var1;
      var2.what = 16389;
      this.mEventHandler.sendMessage(var2);
   }

   public void onProgressChanged(SeekBar var1, int var2, boolean var3) {
   }

   public void onProgressUpdate(AbsMediaPlayer var1, int var2, int var3) {
      Message var4 = new Message();
      var4.obj = var1;
      var4.what = 16390;
      var4.arg1 = var2;
      var4.arg2 = var3;
      this.mEventHandler.sendMessage(var4);
   }

   public void onStart() {
      super.onStart();
   }

   public void onStartTrackingTouch(SeekBar var1) {
   }

   public void onStop() {
      super.onStop();
      if (this.mMediaPlayer != null) {
         this.mMediaPlayer.pause();
         this.mMediaPlayer.stop();
      }

   }

   public void onStopTrackingTouch(SeekBar var1) {
      if (this.mMediaPlayerLoaded) {
         switch(var1.getId()) {
         case 2131034114:
            if (this.mCanSeek && this.mLength > 0) {
               int var2 = var1.getProgress();
               if (this.mMediaPlayer != null) {
                  this.mMediaPlayer.seekTo(var2);
                  return;
               }
            }
            break;
         default:
            return;
         }
      }

   }

   public boolean onTouch(View var1, MotionEvent var2) {
      if (!this.mMediaPlayerLoaded) {
         return true;
      } else if (var2.getAction() == 0) {
         if (this.mLinearLayoutControlBar.getVisibility() != 0) {
            this.mLinearLayoutControlBar.setVisibility(0);
            return true;
         } else {
            this.mLinearLayoutControlBar.setVisibility(8);
            return true;
         }
      } else {
         return false;
      }
   }

   public void onVideoSizeChangedListener(AbsMediaPlayer var1, int var2, int var3) {
      Message var4 = new Message();
      var4.obj = var1;
      var4.what = 16391;
      var4.arg1 = var2;
      var4.arg2 = var3;
      this.mEventHandler.sendMessage(var4);
   }

   protected void resetMediaPlayer() {
      this.mMediaPlayerLoaded = false;
      this.mTime = -1;
      this.mLength = -1;
      this.mCanSeek = true;
      this.mAspectRatio = 0;

      try {
         if (this.mInputStream != null) {
            this.mInputStream.close();
         }
      } catch (Exception var8) {
      }

      this.mImageButtonToggleMessage.setVisibility(8);
      this.mImageButtonSwitchAudio.setVisibility(8);
      this.mImageButtonSwitchSubtitle.setVisibility(8);
      ImageButton var2 = this.mImageButtonPrevious;
      byte var3;
      if (this.mPlayInfo != null) {
         var3 = 8;
      } else {
         var3 = 0;
      }

      var2.setVisibility(var3);
      this.mImageButtonTogglePlay.setVisibility(0);
      int var4 = SystemUtility.getDrawableId("btn_play_0");
      this.mImageButtonTogglePlay.setBackgroundResource(var4);
      ImageButton var5 = this.mImageButtonNext;
      byte var6;
      if (this.mPlayInfo != null) {
         var6 = 8;
      } else {
         var6 = 0;
      }

      var5.setVisibility(var6);
      this.mImageButtonSwitchAspectRatio.setVisibility(0);
      int var7 = SystemUtility.getDrawableId("btn_aspect_ratio_0");
      this.mImageButtonSwitchAspectRatio.setBackgroundResource(var7);
      this.mLinearLayoutControlBar.setVisibility(8);
   }

   protected void selectMediaPlayer(String var1, boolean var2) {
      boolean var3 = true;
      int var4 = var1.lastIndexOf(46);
      if (var4 != -1) {
         String var7 = var1.substring(var4).toLowerCase();
         if (var7.compareTo(".flv") == 0 || var7.compareTo(".hlv") == 0 || var7.compareTo(".m3u8") == 0 || var7.compareTo(".mkv") == 0 || var7.compareTo(".rm") == 0 || var7.compareTo(".rmvb") == 0) {
            var3 = false;
         }
      }

      if (var2) {
         var3 = false;
      }

      SurfaceView var5 = this.mSurfaceViewDef;
      byte var6;
      if (var3) {
         var6 = 0;
      } else {
         var6 = 8;
      }

      var5.setVisibility(var6);
   }

   protected void startMediaPlayer() {
      if (!this.mMediaPlayerStarted && this.mMediaPlayerLoaded && this.mMediaPlayer != null) {
         this.mMediaPlayer.start();
         this.mMediaPlayerStarted = true;
      }
   }

   private class PlayInfo {
      public String mFile;
      public int mLength;
      public int mOffset;
      public int mType;

      public PlayInfo(String var2, int var3, int var4, int var5) {
         this.mFile = var2;
         this.mType = var3;
         this.mOffset = var4;
         this.mLength = var5;
      }

      public String toString() {
         String var1 = this.mFile;
         if (this.mOffset != 0) {
            var1 = var1 + " at " + this.mOffset;
         }

         return var1;
      }
   }
}
