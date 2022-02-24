package cn.bakery.BakeryEngine.VideoPlayer.player;

import android.util.Log;
import android.view.SurfaceHolder;
import java.io.FileDescriptor;

public abstract class AbsMediaPlayer {
   private static final String LOGTAG = "DANMAKU-AbsMediaPlayer";

   protected static AbsMediaPlayer getDefMediaPlayer() {
      Log.d("DANMAKU-AbsMediaPlayer", "using DefMediaPlayer");
      return DefMediaPlayer.getInstance();
   }

   public static AbsMediaPlayer getMediaPlayer(boolean var0) {
      return getDefMediaPlayer();
   }

   public abstract int getAudioTrack();

   public abstract int getAudioTrackCount();

   public abstract int getCurrentPosition();

   public abstract int getDuration();

   public abstract int getSubtitleTrack();

   public abstract int getSubtitleTrackCount();

   public abstract int getVideoHeight();

   public abstract int getVideoWidth();

   public abstract boolean isLooping();

   public abstract boolean isPlaying();

   public abstract void pause();

   public abstract void prepare();

   public abstract void prepareAsync();

   public abstract void release();

   public abstract void reset();

   public abstract void seekTo(int var1);

   public abstract void setAudioTrack(int var1);

   public abstract void setDataSource(FileDescriptor var1, long var2, long var4);

   public abstract void setDataSource(String var1);

   public abstract void setDisplay(SurfaceHolder var1);

   public abstract void setLooping(boolean var1);

   public abstract void setOnBufferingUpdateListener(AbsMediaPlayer.OnBufferingUpdateListener var1);

   public abstract void setOnCompletionListener(AbsMediaPlayer.OnCompletionListener var1);

   public abstract void setOnErrorListener(AbsMediaPlayer.OnErrorListener var1);

   public abstract void setOnInfoListener(AbsMediaPlayer.OnInfoListener var1);

   public abstract void setOnPreparedListener(AbsMediaPlayer.OnPreparedListener var1);

   public abstract void setOnProgressUpdateListener(AbsMediaPlayer.OnProgressUpdateListener var1);

   public abstract void setOnVideoSizeChangedListener(AbsMediaPlayer.OnVideoSizeChangedListener var1);

   public abstract void setSubtitleTrack(int var1);

   public abstract void start();

   public abstract void stop();

   public interface OnBufferingUpdateListener {
      void onBufferingUpdate(AbsMediaPlayer var1, int var2);
   }

   public interface OnCompletionListener {
      void onCompletion(AbsMediaPlayer var1);
   }

   public interface OnErrorListener {
      boolean onError(AbsMediaPlayer var1, int var2, int var3);
   }

   public interface OnInfoListener {
      boolean onInfo(AbsMediaPlayer var1, int var2, int var3);
   }

   public interface OnPreparedListener {
      void onPrepared(AbsMediaPlayer var1);
   }

   public interface OnProgressUpdateListener {
      void onProgressUpdate(AbsMediaPlayer var1, int var2, int var3);
   }

   public interface OnVideoSizeChangedListener {
      void onVideoSizeChangedListener(AbsMediaPlayer var1, int var2, int var3);
   }
}
