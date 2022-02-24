package com.unity3d.ads.android.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.PowerManager;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import android.widget.RelativeLayout.LayoutParams;
import com.unity3d.ads.android.UnityAdsDeviceLog;
import com.unity3d.ads.android.UnityAdsUtils;
import com.unity3d.ads.android.properties.UnityAdsProperties;
import com.unity3d.ads.android.view.UnityAdsMuteVideoButton;
import com.unity3d.ads.android.webapp.UnityAdsInstrumentation;
import com.unity3d.ads.android.webapp.UnityAdsWebData;
import com.unity3d.ads.android.zone.UnityAdsZone;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

@TargetApi(9)
public class UnityAdsVideoPlayView extends RelativeLayout {
   private static final int FILL_PARENT = -1;
   private long _bufferingCompledtedMillis = 0L;
   private long _bufferingStartedMillis = 0L;
   private RelativeLayout _bufferingText = null;
   private RelativeLayout _countDownText = null;
   private IUnityAdsVideoPlayerListener _listener;
   private MediaPlayer _mediaPlayer = null;
   private UnityAdsMuteVideoButton _muteButton = null;
   private boolean _muted = false;
   private UnityAdsVideoPausedView _pausedView = null;
   private Map _sentPositionEvents = new HashMap();
   private RelativeLayout _skipText = null;
   private TextView _skipTextView = null;
   private long _skipTimeInSeconds = 0L;
   private RelativeLayout _stagingLayout = null;
   private TextView _stagingText = null;
   private TextView _timeLeftInSecondsText = null;
   private boolean _videoCompleted = false;
   private String _videoFileName = null;
   private Timer _videoPausedTimer = null;
   private boolean _videoPlaybackErrors = false;
   private boolean _videoPlaybackStartedSent = false;
   private boolean _videoPlayheadPrepared = false;
   private long _videoStartedPlayingMillis = 0L;
   private VideoView _videoView = null;
   private float _volumeBeforeMute = 0.5F;

   public UnityAdsVideoPlayView(Context var1, AttributeSet var2) {
      super(var1, var2);
      this.createView();
   }

   public UnityAdsVideoPlayView(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
      this.createView();
   }

   public UnityAdsVideoPlayView(Context var1, IUnityAdsVideoPlayerListener var2) {
      super(var1);
      this._listener = var2;
      this.createView();
   }

   private void createAndAddMuteButton() {
      LayoutParams var1 = new LayoutParams(-2, -2);
      var1.addRule(12);
      var1.addRule(9);
      this._muteButton = new UnityAdsMuteVideoButton(this.getContext());
      this._muteButton.setLayoutParams(var1);
      if (this._muted) {
         this._muteButton.setState(UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.Muted);
      }

      this._muteButton.setOnClickListener(new OnClickListener() {
         public void onClick(View var1) {
            if (UnityAdsVideoPlayView.this._videoPlayheadPrepared && UnityAdsVideoPlayView.this._videoPlaybackStartedSent) {
               if (!UnityAdsVideoPlayView.this._muted) {
                  UnityAdsVideoPlayView.this._muted = true;
                  UnityAdsVideoPlayView.this._muteButton.setState(UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.Muted);
                  UnityAdsVideoPlayView.this.storeVolume();
                  UnityAdsVideoPlayView.this._mediaPlayer.setVolume(0.0F, 0.0F);
                  return;
               }

               UnityAdsVideoPlayView.this._muted = false;
               UnityAdsVideoPlayView.this._muteButton.setState(UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.UnMuted);
               UnityAdsVideoPlayView.this._mediaPlayer.setVolume(UnityAdsVideoPlayView.this._volumeBeforeMute, UnityAdsVideoPlayView.this._volumeBeforeMute);
            }

         }
      });
      this.addView(this._muteButton);
   }

   private void createAndAddPausedView() {
      if (this._pausedView == null) {
         this._pausedView = new UnityAdsVideoPausedView(this.getContext());
      }

      if (this._pausedView != null && this._pausedView.getParent() == null) {
         LayoutParams var1 = new LayoutParams(-1, -1);
         var1.addRule(13);
         this.addView(this._pausedView, var1);
      }

   }

   private void createAndAddSkipText() {
      this._skipText = new RelativeLayout(this.getContext());
      this._skipText.setId(3010);
      LayoutParams var1 = new LayoutParams(-2, -2);
      var1.addRule(10);
      var1.addRule(9);
      var1.topMargin = 5;
      var1.leftMargin = 5;
      this._skipText.setLayoutParams(var1);
      this._skipText.setOnClickListener(new OnClickListener() {
         public void onClick(View var1) {
            UnityAdsVideoPlayView.this._listener.onVideoSkip();
         }
      });
      this._skipTextView = new TextView(this.getContext());
      this._skipTextView.setTextColor(-1);
      this._skipTextView.setText("You can skip this video in " + this._skipTimeInSeconds + " seconds");
      this._skipTextView.setId(10010);
      this._skipText.addView(this._skipTextView);
      this.addView(this._skipText);
   }

   private void createView() {
      if (UnityAdsWebData.getZoneManager().getCurrentZone().muteVideoSounds()) {
         this._muted = true;
      }

      UnityAdsDeviceLog.debug("Creating custom view");
      this.setBackgroundColor(-16777216);
      this._videoCompleted = false;
      this._videoView = new VideoView(this.getContext()) {
         public void onWindowVisibilityChanged(int var1) {
            if (var1 == 0) {
               super.onWindowVisibilityChanged(var1);
            } else if (!UnityAdsVideoPlayView.this._videoCompleted) {
               UnityAdsVideoPlayView.this._listener.onVideoHidden();
               return;
            }

         }
      };
      this._videoView.setId(3001);
      LayoutParams var1 = new LayoutParams(-1, -1);
      var1.addRule(13);
      this._videoView.setLayoutParams(var1);
      this.addView(this._videoView, var1);
      this._videoView.setClickable(true);
      this._videoView.setOnCompletionListener(new OnCompletionListener() {
         public void onCompletion(MediaPlayer var1) {
            UnityAdsVideoPlayView.this._videoCompleted = true;
            UnityAdsVideoPlayView.this._listener.onCompletion(var1);
         }
      });
      this._videoView.setOnPreparedListener(new OnPreparedListener() {
         public void onPrepared(MediaPlayer var1) {
            UnityAdsDeviceLog.entered();
            UnityAdsVideoPlayView.this._mediaPlayer = var1;
            if (UnityAdsVideoPlayView.this._muted) {
               UnityAdsVideoPlayView.this.storeVolume();
               UnityAdsVideoPlayView.this._mediaPlayer.setVolume(0.0F, 0.0F);
            }

            UnityAdsVideoPlayView.this._videoPlayheadPrepared = true;
         }
      });
      this._bufferingText = new RelativeLayout(this.getContext());
      this._bufferingText.setId(3100);
      LayoutParams var2 = new LayoutParams(-2, -2);
      var2.addRule(10);
      var2.addRule(11);
      var2.topMargin = 3;
      var2.rightMargin = 3;
      this._bufferingText.setLayoutParams(var2);
      TextView var3 = new TextView(this.getContext());
      var3.setTextColor(-1);
      var3.setText("Buffering...");
      var3.setId(3103);
      this._bufferingText.addView(var3);
      this.addView(this._bufferingText);
      this._countDownText = new RelativeLayout(this.getContext());
      this._countDownText.setId(3002);
      LayoutParams var4 = new LayoutParams(-2, -2);
      var4.addRule(12);
      var4.addRule(11);
      var4.bottomMargin = 3;
      var4.rightMargin = 3;
      this._countDownText.setLayoutParams(var4);
      TextView var5 = new TextView(this.getContext());
      var5.setTextColor(-1);
      var5.setText("This video ends in ");
      var5.setId(10001);
      this._timeLeftInSecondsText = new TextView(this.getContext());
      this._timeLeftInSecondsText.setTextColor(-1);
      this._timeLeftInSecondsText.setText("00");
      this._timeLeftInSecondsText.setId(10002);
      LayoutParams var6 = new LayoutParams(-2, -2);
      var6.addRule(1, 10001);
      var6.leftMargin = 1;
      this._timeLeftInSecondsText.setLayoutParams(var6);
      TextView var7 = new TextView(this.getContext());
      var7.setTextColor(-1);
      var7.setText("seconds.");
      LayoutParams var8 = new LayoutParams(-2, -2);
      var8.addRule(1, 10002);
      var8.leftMargin = 4;
      var7.setLayoutParams(var8);
      this._countDownText.addView(var5);
      this._countDownText.addView(this._timeLeftInSecondsText);
      this._countDownText.addView(var7);
      this.addView(this._countDownText);
      if (UnityAdsProperties.UNITY_DEVELOPER_INTERNAL_TEST) {
         this._stagingLayout = new RelativeLayout(this.getContext());
         LayoutParams var9 = new LayoutParams(-2, -2);
         var9.addRule(14);
         var9.addRule(15);
         this._stagingLayout.setLayoutParams(var9);
         this._stagingText = new TextView(this.getContext());
         this._stagingText.setTextColor(-65536);
         this._stagingText.setBackgroundColor(-16777216);
         this._stagingText.setText("INTERNAL UNITY TEST BUILD\nDO NOT USE IN PRODUCTION");
         this._stagingLayout.addView(this._stagingText);
         this.addView(this._stagingLayout);
      }

      if (this.hasSkipDuration()) {
         this._skipTimeInSeconds = this.getSkipDuration();
         this.createAndAddSkipText();
      }

      this.setOnClickListener(new OnClickListener() {
         public void onClick(View var1) {
            if (!UnityAdsVideoPlayView.this._videoView.isPlaying()) {
               UnityAdsVideoPlayView.this.hideVideoPausedView();
               UnityAdsVideoPlayView.this.startVideo();
            }

         }
      });
      this.setOnFocusChangeListener(new OnFocusChangeListener() {
         public void onFocusChange(View var1, boolean var2) {
            if (!var2) {
               UnityAdsVideoPlayView.this.pauseVideo();
            }

         }
      });
      this.createAndAddMuteButton();
   }

   private void disableSkippingFromSkipText() {
      if (this._skipText != null) {
         this._skipText.setClickable(false);
      }

   }

   private void enableSkippingFromSkipText() {
      if (this._skipText != null) {
         this._skipText.setVisibility(0);
         this._skipText.setClickable(true);
         this._skipText.setBackgroundColor(33554431);
         this._skipText.setFocusable(true);
         this._skipTextView.setText("Skip video");
         this._skipText.requestFocus();
         Rect var2 = new Rect();
         this._skipText.getHitRect(var2);
         int var3 = var2.bottom - var2.top;
         var2.bottom += var3 * 2;
         var2.right += var3 * 2;
         TouchDelegate var4 = new TouchDelegate(var2, this._skipText);
         ((View)this._skipText.getParent()).setTouchDelegate(var4);
      }

   }

   private long getSkipDuration() {
      return this.hasSkipDuration() ? UnityAdsWebData.getZoneManager().getCurrentZone().allowVideoSkipInSeconds() : 0L;
   }

   private boolean hasSkipDuration() {
      return UnityAdsWebData.getZoneManager().getCurrentZone().allowVideoSkipInSeconds() > 0L;
   }

   private void hideSkipText() {
      if (this._skipText != null && this._skipText.getParent() != null) {
         this.disableSkippingFromSkipText();
         this._skipText.setVisibility(4);
      }

   }

   private void hideTimeRemainingLabel() {
      if (this._countDownText != null && this._countDownText.getParent() != null) {
         this._countDownText.removeAllViews();
         this.removeView(this._countDownText);
      }

   }

   private void hideVideoPausedView() {
      if (this._pausedView != null && this._pausedView.getParent() != null) {
         this.removeView(this._pausedView);
      }

   }

   private void purgeVideoPausedTimer() {
      if (this._videoPausedTimer != null) {
         this._videoPausedTimer.cancel();
         this._videoPausedTimer.purge();
         this._videoPausedTimer = null;
      }

   }

   private void setBufferingTextVisibility(final int var1, final boolean var2, final boolean var3) {
      UnityAdsUtils.runOnUiThread(new Runnable() {
         public void run() {
            if (UnityAdsVideoPlayView.this._bufferingText != null) {
               UnityAdsVideoPlayView.this._bufferingText.setVisibility(var1);
            }

            if (var1 == 0) {
               if (UnityAdsVideoPlayView.this._skipText == null) {
                  UnityAdsVideoPlayView.this.createAndAddSkipText();
               }

               UnityAdsVideoPlayView.this.enableSkippingFromSkipText();
            } else if (var2) {
               if (var3) {
                  UnityAdsVideoPlayView.this.enableSkippingFromSkipText();
               } else {
                  UnityAdsVideoPlayView.this.disableSkippingFromSkipText();
               }
            } else {
               UnityAdsVideoPlayView.this.hideSkipText();
            }
         }
      });
   }

   private void startVideo() {
      UnityAdsUtils.runOnUiThread(new Runnable() {
         public void run() {
            UnityAdsVideoPlayView.this._videoView.start();
            UnityAdsVideoPlayView.this.setKeepScreenOn(true);
         }
      });
      if (this._videoPausedTimer == null) {
         this._videoPausedTimer = new Timer();
         this._videoPausedTimer.scheduleAtFixedRate(new UnityAdsVideoPlayView.VideoStateChecker(), 500L, 500L);
      }

   }

   private void storeVolume() {
      AudioManager var1 = (AudioManager)UnityAdsProperties.getCurrentActivity().getSystemService("audio");
      if (var1 != null) {
         int var2 = var1.getStreamVolume(3);
         int var3 = var1.getStreamMaxVolume(3);
         float var4 = 1.0F / (float)var3;
         this._volumeBeforeMute = var4 * (float)var2;
         UnityAdsDeviceLog.debug("Storing volume: " + var2 + ", " + var3 + ", " + var4 + ", " + this._volumeBeforeMute);
      }

   }

   private void videoErrorOperations() {
      this._videoPlaybackErrors = true;
      this.purgeVideoPausedTimer();
      if (this._listener != null) {
         this._listener.onVideoPlaybackError();
      }

      UnityAdsInstrumentation.gaInstrumentationVideoError(UnityAdsProperties.SELECTED_CAMPAIGN, (Map)null);
   }

   public void clearVideoPlayer() {
      UnityAdsDeviceLog.entered();
      this.setKeepScreenOn(false);
      this.setOnClickListener((OnClickListener)null);
      this.setOnFocusChangeListener((OnFocusChangeListener)null);
      this.hideSkipText();
      this.hideTimeRemainingLabel();
      this.hideVideoPausedView();
      this.purgeVideoPausedTimer();
      this._videoView.stopPlayback();
      this._videoView.setOnCompletionListener((OnCompletionListener)null);
      this._videoView.setOnPreparedListener((OnPreparedListener)null);
      this._videoView.setOnErrorListener((OnErrorListener)null);
      this.removeAllViews();
      this._skipText = null;
      this._skipTextView = null;
      this._bufferingText = null;
      this._countDownText = null;
      this._timeLeftInSecondsText = null;
      this._stagingText = null;
      this._stagingLayout = null;
   }

   public long getBufferingDuration() {
      if (this._bufferingCompledtedMillis == 0L) {
         this._bufferingCompledtedMillis = System.currentTimeMillis();
      }

      return this._bufferingCompledtedMillis - this._bufferingStartedMillis;
   }

   public int getSecondsUntilBackButtonAllowed() {
      UnityAdsZone var1 = UnityAdsWebData.getZoneManager().getCurrentZone();
      int var3;
      if (var1.disableBackButtonForSeconds() > 0L && this._videoStartedPlayingMillis > 0L) {
         var3 = Math.round((float)(1000L * var1.disableBackButtonForSeconds() - (System.currentTimeMillis() - this._videoStartedPlayingMillis)));
         if (var3 < 0) {
            var3 = 0;
         }
      } else {
         long var5;
         int var2 = (var5 = var1.allowVideoSkipInSeconds() - 0L) == 0L ? 0 : (var5 < 0L ? -1 : 1);
         var3 = 0;
         if (var2 > 0) {
            long var6;
            int var4 = (var6 = this._videoStartedPlayingMillis - 0L) == 0L ? 0 : (var6 < 0L ? -1 : 1);
            var3 = 0;
            if (var4 <= 0) {
               return 1;
            }
         }
      }

      return var3;
   }

   public void hideVideo() {
      this.purgeVideoPausedTimer();
   }

   protected void onAttachedToWindow() {
      super.onAttachedToWindow();
      this.hideVideoPausedView();
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      switch(var1) {
      case 4:
         UnityAdsDeviceLog.entered();
         long var3 = UnityAdsWebData.getZoneManager().getCurrentZone().disableBackButtonForSeconds();
         if (var3 == 0L || var3 > 0L && this.getSecondsUntilBackButtonAllowed() == 0) {
            this.clearVideoPlayer();
            long var5 = this.getBufferingDuration();
            HashMap var7 = new HashMap();
            var7.put("bufferingDuration", var5);
            var7.put("eventValue", "back");
            UnityAdsInstrumentation.gaInstrumentationVideoAbort(UnityAdsProperties.SELECTED_CAMPAIGN, var7);
         }

         if (this._listener != null) {
            this._listener.onBackButtonClicked(this);
         }

         return true;
      default:
         return false;
      }
   }

   public void pauseVideo() {
      this.purgeVideoPausedTimer();
      if (this._videoView != null && this._videoView.isPlaying()) {
         UnityAdsUtils.runOnUiThread(new Runnable() {
            public void run() {
               UnityAdsVideoPlayView.this._videoView.pause();
               UnityAdsVideoPlayView.this.setKeepScreenOn(false);
               UnityAdsVideoPlayView.this.createAndAddPausedView();
            }
         });
      }

   }

   public void playVideo(String var1) {
      if (var1 != null) {
         this._videoPlayheadPrepared = false;
         this._videoFileName = var1;
         UnityAdsDeviceLog.debug("Playing video from: " + this._videoFileName);
         this._videoView.setOnErrorListener(new OnErrorListener() {
            public boolean onError(MediaPlayer var1, int var2, int var3) {
               UnityAdsDeviceLog.error("For some reason the device failed to play the video (error: " + var2 + ", " + var3 + "), a crash was prevented.");
               UnityAdsVideoPlayView.this.videoErrorOperations();
               return true;
            }
         });

         try {
            this._videoView.setVideoPath(this._videoFileName);
         } catch (Exception var3) {
            UnityAdsDeviceLog.error("For some reason the device failed to play the video, a crash was prevented.");
            this.videoErrorOperations();
            return;
         }

         if (!this._videoPlaybackErrors) {
            this._timeLeftInSecondsText.setText("" + Math.round(Math.ceil((double)(this._videoView.getDuration() / 1000))));
            this._bufferingStartedMillis = System.currentTimeMillis();
            this.startVideo();
            return;
         }
      }

   }

   private class VideoStateChecker extends TimerTask {
      private Float _curPos;
      private int _duration;
      private Float _oldPos;
      private boolean _playHeadHasMoved;
      private Float _skipTimeLeft;
      private boolean _videoHasStalled;

      private VideoStateChecker() {
         this._curPos = 0.0F;
         this._oldPos = 0.0F;
         this._skipTimeLeft = 0.01F;
         this._duration = 1;
         this._playHeadHasMoved = false;
         this._videoHasStalled = false;
      }

      // $FF: synthetic method
      VideoStateChecker(Object var2) {
         this();
      }

      public void run() {
         if (UnityAdsVideoPlayView.this._videoView != null && UnityAdsVideoPlayView.this._timeLeftInSecondsText != null) {
            if (!((PowerManager)UnityAdsVideoPlayView.this.getContext().getSystemService("power")).isScreenOn()) {
               UnityAdsVideoPlayView.this.pauseVideo();
            }

            this._oldPos = this._curPos;

            try {
               this._curPos = (float)UnityAdsVideoPlayView.this._videoView.getCurrentPosition();
            } catch (Exception var19) {
               UnityAdsDeviceLog.error("Could not get videoView currentPosition");
               if (this._oldPos > 0.0F) {
                  this._curPos = this._oldPos;
               } else {
                  this._curPos = 0.01F;
               }
            }

            0.0F;
            int var3 = 1;
            Boolean var4 = true;

            label98: {
               int var16;
               try {
                  var16 = UnityAdsVideoPlayView.this._videoView.getDuration();
               } catch (Exception var18) {
                  UnityAdsDeviceLog.error("Could not get videoView duration");
                  var4 = false;
                  break label98;
               }

               var3 = var16;
            }

            if (var4) {
               this._duration = var3;
            }

            Float var6 = this._curPos / (float)this._duration;
            if (this._curPos > this._oldPos) {
               this._playHeadHasMoved = true;
               this._videoHasStalled = false;
               UnityAdsVideoPlayView var13 = UnityAdsVideoPlayView.this;
               boolean var14 = UnityAdsVideoPlayView.this.hasSkipDuration();
               boolean var15;
               if (this._skipTimeLeft <= 0.0F) {
                  var15 = true;
               } else {
                  var15 = false;
               }

               var13.setBufferingTextVisibility(4, var14, var15);
            } else {
               this._videoHasStalled = true;
               UnityAdsVideoPlayView.this.setBufferingTextVisibility(0, true, true);
            }

            UnityAdsUtils.runOnUiThread(new Runnable() {
               public void run() {
                  if (UnityAdsVideoPlayView.this._timeLeftInSecondsText != null) {
                     UnityAdsVideoPlayView.this._timeLeftInSecondsText.setText("" + Math.round(Math.ceil((double)(((float)VideoStateChecker.this._duration - VideoStateChecker.this._curPos) / 1000.0F))));
                  }

               }
            });
            if (UnityAdsVideoPlayView.this.hasSkipDuration() && UnityAdsVideoPlayView.this._skipTimeInSeconds > 0L && this._skipTimeLeft > 0.0F && (long)(this._duration / 1000) > UnityAdsVideoPlayView.this._skipTimeInSeconds) {
               this._skipTimeLeft = (float)(1000L * UnityAdsVideoPlayView.this._skipTimeInSeconds) - this._curPos;
               if (this._skipTimeLeft < 0.0F) {
                  this._skipTimeLeft = 0.0F;
               }

               if (this._skipTimeLeft == 0.0F) {
                  UnityAdsUtils.runOnUiThread(new Runnable() {
                     public void run() {
                        UnityAdsVideoPlayView.this.enableSkippingFromSkipText();
                     }
                  });
               } else {
                  UnityAdsUtils.runOnUiThread(new Runnable() {
                     public void run() {
                        if (UnityAdsVideoPlayView.this._skipTextView != null && !VideoStateChecker.this._videoHasStalled) {
                           UnityAdsVideoPlayView.this._skipText.setVisibility(0);
                           UnityAdsVideoPlayView.this._skipTextView.setText("You can skip this video in " + Math.round(Math.ceil((double)(((float)(1000L * UnityAdsVideoPlayView.this._skipTimeInSeconds) - VideoStateChecker.this._curPos) / 1000.0F))) + " seconds");
                        }

                     }
                  });
               }
            } else if (this._playHeadHasMoved && (long)(this._duration / 1000) <= UnityAdsVideoPlayView.this._skipTimeInSeconds) {
               UnityAdsUtils.runOnUiThread(new Runnable() {
                  public void run() {
                     UnityAdsVideoPlayView.this.hideSkipText();
                  }
               });
            }

            if ((double)var6 > 0.25D && !UnityAdsVideoPlayView.this._sentPositionEvents.containsKey(UnityAdsWebData.UnityAdsVideoPosition.FirstQuartile)) {
               UnityAdsVideoPlayView.this._listener.onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition.FirstQuartile);
               UnityAdsVideoPlayView.this._sentPositionEvents.put(UnityAdsWebData.UnityAdsVideoPosition.FirstQuartile, true);
            }

            if ((double)var6 > 0.5D && !UnityAdsVideoPlayView.this._sentPositionEvents.containsKey(UnityAdsWebData.UnityAdsVideoPosition.MidPoint)) {
               UnityAdsVideoPlayView.this._listener.onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition.MidPoint);
               UnityAdsVideoPlayView.this._sentPositionEvents.put(UnityAdsWebData.UnityAdsVideoPosition.MidPoint, true);
            }

            if ((double)var6 > 0.75D && !UnityAdsVideoPlayView.this._sentPositionEvents.containsKey(UnityAdsWebData.UnityAdsVideoPosition.ThirdQuartile)) {
               UnityAdsVideoPlayView.this._listener.onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition.ThirdQuartile);
               UnityAdsVideoPlayView.this._sentPositionEvents.put(UnityAdsWebData.UnityAdsVideoPosition.ThirdQuartile, true);
            }

            try {
               UnityAdsVideoPlayView.this._videoView.getBufferPercentage();
            } catch (Exception var17) {
               UnityAdsDeviceLog.error("Could not get videoView buffering percentage");
            }

            if (!this._playHeadHasMoved && UnityAdsVideoPlayView.this._bufferingStartedMillis > 0L && System.currentTimeMillis() - UnityAdsVideoPlayView.this._bufferingStartedMillis > 20000L) {
               this.cancel();
               UnityAdsUtils.runOnUiThread(new Runnable() {
                  public void run() {
                     UnityAdsDeviceLog.error("Buffering taking too long.. cancelling video play");
                     UnityAdsVideoPlayView.this.videoErrorOperations();
                  }
               });
            }

            if (UnityAdsVideoPlayView.this._videoPlayheadPrepared && this._playHeadHasMoved) {
               UnityAdsUtils.runOnUiThread(new Runnable() {
                  public void run() {
                     if (!UnityAdsVideoPlayView.this._videoPlaybackStartedSent) {
                        if (UnityAdsVideoPlayView.this._listener != null) {
                           UnityAdsVideoPlayView.this._videoPlaybackStartedSent = true;
                           UnityAdsVideoPlayView.this._listener.onVideoPlaybackStarted();
                           UnityAdsVideoPlayView.this._bufferingCompledtedMillis = System.currentTimeMillis();
                           UnityAdsVideoPlayView.this._videoStartedPlayingMillis = System.currentTimeMillis();
                           long var7 = UnityAdsVideoPlayView.this._bufferingCompledtedMillis - UnityAdsVideoPlayView.this._bufferingStartedMillis;
                           HashMap var9 = new HashMap();
                           var9.put("bufferingDuration", var7);
                           UnityAdsInstrumentation.gaInstrumentationVideoPlay(UnityAdsProperties.SELECTED_CAMPAIGN, var9);
                        }

                        if (!UnityAdsVideoPlayView.this._sentPositionEvents.containsKey(UnityAdsWebData.UnityAdsVideoPosition.Start)) {
                           UnityAdsVideoPlayView.this._sentPositionEvents.put(UnityAdsWebData.UnityAdsVideoPosition.Start, true);
                           UnityAdsVideoPlayView.this._listener.onEventPositionReached(UnityAdsWebData.UnityAdsVideoPosition.Start);
                        }
                     }

                  }
               });
               return;
            }
         } else {
            UnityAdsVideoPlayView.this.purgeVideoPausedTimer();
         }

      }
   }
}
