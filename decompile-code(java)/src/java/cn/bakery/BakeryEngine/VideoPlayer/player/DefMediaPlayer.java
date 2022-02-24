package cn.bakery.BakeryEngine.VideoPlayer.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;
import java.util.Timer;
import java.util.TimerTask;

public class DefMediaPlayer extends AbsMediaPlayer implements android.media.MediaPlayer.OnBufferingUpdateListener, android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnInfoListener, android.media.MediaPlayer.OnPreparedListener, OnSeekCompleteListener, android.media.MediaPlayer.OnVideoSizeChangedListener {
   private static final String LOGTAG = "DANMAKU-DefMediaPlayer";
   protected static DefMediaPlayer sInstance = null;
   private MediaPlayer mMediaPlayer = null;
   private AbsMediaPlayer.OnBufferingUpdateListener mOnBufferingUpdateListener = null;
   private AbsMediaPlayer.OnCompletionListener mOnCompletionListener = null;
   private AbsMediaPlayer.OnErrorListener mOnErrorListener = null;
   private AbsMediaPlayer.OnInfoListener mOnInfoListener = null;
   private AbsMediaPlayer.OnPreparedListener mOnPreparedListener = null;
   private AbsMediaPlayer.OnProgressUpdateListener mOnProgressUpdateListener = null;
   private AbsMediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangedListener = null;
   private Timer mTimer = null;
   private TimerTask mTimerTask = new TimerTask() {
      public void run() {
         if (DefMediaPlayer.this.mMediaPlayer != null && DefMediaPlayer.this.mOnProgressUpdateListener != null && DefMediaPlayer.this.mMediaPlayer.isPlaying()) {
            int var1 = DefMediaPlayer.this.mMediaPlayer.getCurrentPosition();
            int var2 = DefMediaPlayer.this.mMediaPlayer.getDuration();
            DefMediaPlayer.this.mOnProgressUpdateListener.onProgressUpdate(DefMediaPlayer.this, var1, var2);
         }
      }
   };

   protected DefMediaPlayer() {
      this.mMediaPlayer = new MediaPlayer();
      this.mMediaPlayer.setOnBufferingUpdateListener(this);
      this.mMediaPlayer.setOnCompletionListener(this);
      this.mMediaPlayer.setOnErrorListener(this);
      this.mMediaPlayer.setOnInfoListener(this);
      this.mMediaPlayer.setOnPreparedListener(this);
      this.mMediaPlayer.setOnSeekCompleteListener(this);
      this.mMediaPlayer.setOnVideoSizeChangedListener(this);
   }

   public static DefMediaPlayer getInstance() {
      if (sInstance == null) {
         sInstance = new DefMediaPlayer();
      }

      return sInstance;
   }

   public int getAudioTrack() {
      return -1;
   }

   public int getAudioTrackCount() {
      return -1;
   }

   public int getCurrentPosition() {
      try {
         int var3 = this.mMediaPlayer.getCurrentPosition();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "getCurrentPosition()");
         return -1;
      }
   }

   public int getDuration() {
      try {
         int var3 = this.mMediaPlayer.getDuration();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "getDuration()");
         return -1;
      }
   }

   public int getSubtitleTrack() {
      return -1;
   }

   public int getSubtitleTrackCount() {
      return -1;
   }

   public int getVideoHeight() {
      try {
         int var3 = this.mMediaPlayer.getVideoHeight();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "getVideoHeight()");
         return -1;
      }
   }

   public int getVideoWidth() {
      try {
         int var3 = this.mMediaPlayer.getVideoWidth();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "getVideoWidth()");
         return -1;
      }
   }

   public boolean isLooping() {
      try {
         boolean var3 = this.mMediaPlayer.isLooping();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "isLooping()");
         return false;
      }
   }

   public boolean isPlaying() {
      try {
         boolean var3 = this.mMediaPlayer.isPlaying();
         return var3;
      } catch (Exception var4) {
         Log.e("DANMAKU-DefMediaPlayer", "isPlaying()");
         return false;
      }
   }

   public void onBufferingUpdate(MediaPlayer var1, int var2) {
      if (this.mOnBufferingUpdateListener != null) {
         this.mOnBufferingUpdateListener.onBufferingUpdate(this, var2);
      }

   }

   public void onCompletion(MediaPlayer var1) {
      if (this.mOnCompletionListener != null) {
         this.mOnCompletionListener.onCompletion(this);
      }

   }

   public boolean onError(MediaPlayer var1, int var2, int var3) {
      return this.mOnErrorListener != null ? this.mOnErrorListener.onError(this, var2, var3) : false;
   }

   public boolean onInfo(MediaPlayer var1, int var2, int var3) {
      return this.mOnInfoListener != null ? this.mOnInfoListener.onInfo(this, var2, var3) : true;
   }

   public void onPrepared(MediaPlayer var1) {
      if (this.mOnPreparedListener != null) {
         this.mOnPreparedListener.onPrepared(this);
      }

   }

   public void onSeekComplete(MediaPlayer var1) {
   }

   public void onVideoSizeChanged(MediaPlayer var1, int var2, int var3) {
      if (this.mOnVideoSizeChangedListener != null) {
         this.mOnVideoSizeChangedListener.onVideoSizeChangedListener(this, var2, var3);
      }

   }

   public void pause() {
      try {
         this.mMediaPlayer.pause();
      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "pause()");
      }
   }

   public void prepare() {
      try {
         this.mMediaPlayer.prepare();
      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "prepare()");
      }
   }

   public void prepareAsync() {
      try {
         this.mMediaPlayer.prepareAsync();
      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "prepareAsync()");
      }
   }

   public void release() {
      try {
         this.mMediaPlayer.release();
      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "release()");
      }

      sInstance = null;
   }

   public void reset() {
      this.stop();

      try {
         this.mMediaPlayer.reset();
      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "reset()");
      }
   }

   public void seekTo(int var1) {
      try {
         this.mMediaPlayer.seekTo(var1);
      } catch (Exception var3) {
         Log.e("DANMAKU-DefMediaPlayer", "seekTo()");
      }
   }

   public void setAudioTrack(int var1) {
   }

   public void setDataSource(FileDescriptor var1, long var2, long var4) {
      try {
         this.mMediaPlayer.setDataSource(var1, var2, var4);
         this.mMediaPlayer.setAudioStreamType(3);
      } catch (Exception var7) {
         Log.e("DANMAKU-DefMediaPlayer", "setDataSource()");
      }
   }

   public void setDataSource(String var1) {
      try {
         if (var1.startsWith("file://")) {
            var1 = var1.substring(7);
         }

         this.mMediaPlayer.setDataSource(var1);
         this.mMediaPlayer.setAudioStreamType(3);
      } catch (Exception var3) {
         Log.e("DANMAKU-DefMediaPlayer", "setDataSource()");
      }
   }

   public void setDisplay(SurfaceHolder var1) {
      try {
         this.mMediaPlayer.setDisplay(var1);
      } catch (Exception var3) {
         Log.e("DANMAKU-DefMediaPlayer", "setDisplay()");
      }
   }

   public void setLooping(boolean var1) {
      try {
         this.mMediaPlayer.setLooping(var1);
      } catch (Exception var3) {
         Log.e("DANMAKU-DefMediaPlayer", "setLooping()");
      }
   }

   public void setOnBufferingUpdateListener(AbsMediaPlayer.OnBufferingUpdateListener var1) {
      this.mOnBufferingUpdateListener = var1;
   }

   public void setOnCompletionListener(AbsMediaPlayer.OnCompletionListener var1) {
      this.mOnCompletionListener = var1;
   }

   public void setOnErrorListener(AbsMediaPlayer.OnErrorListener var1) {
      this.mOnErrorListener = var1;
   }

   public void setOnInfoListener(AbsMediaPlayer.OnInfoListener var1) {
      this.mOnInfoListener = var1;
   }

   public void setOnPreparedListener(AbsMediaPlayer.OnPreparedListener var1) {
      this.mOnPreparedListener = var1;
   }

   public void setOnProgressUpdateListener(AbsMediaPlayer.OnProgressUpdateListener var1) {
      this.mOnProgressUpdateListener = var1;
   }

   public void setOnVideoSizeChangedListener(AbsMediaPlayer.OnVideoSizeChangedListener var1) {
      this.mOnVideoSizeChangedListener = var1;
   }

   public void setSubtitleTrack(int var1) {
   }

   public void start() {
      // $FF: Couldn't be decompiled
   }

   public void stop() {
      try {
         if (this.mTimer != null) {
            this.mTimer.purge();
            this.mTimer.cancel();
            this.mTimer = null;
            this.mMediaPlayer.stop();
            this.mMediaPlayer.release();
         }

      } catch (Exception var2) {
         Log.e("DANMAKU-DefMediaPlayer", "stop()");
      }
   }
}
