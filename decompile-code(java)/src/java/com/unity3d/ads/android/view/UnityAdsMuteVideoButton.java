package com.unity3d.ads.android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.LinearLayout.LayoutParams;
import com.unity3d.ads.android.data.UnityAdsDevice;
import com.unity3d.ads.android.data.UnityAdsGraphicsBundle;

public class UnityAdsMuteVideoButton extends ImageButton {
   private UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize _size;
   private UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState _state;

   public UnityAdsMuteVideoButton(Context var1) {
      super(var1);
      this._state = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.UnMuted;
      this._size = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize.Medium;
      this.setupView();
   }

   public UnityAdsMuteVideoButton(Context var1, AttributeSet var2) {
      super(var1, var2);
      this._state = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.UnMuted;
      this._size = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize.Medium;
      this.setupView();
   }

   public UnityAdsMuteVideoButton(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
      this._state = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState.UnMuted;
      this._size = UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize.Medium;
      this.setupView();
   }

   private Bitmap selectBitmap() {
      if (this._size != null && this._size.equals(UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize.Medium)) {
         switch(this._state) {
         case UnMuted:
            String var2 = UnityAdsGraphicsBundle.ICON_AUDIO_UNMUTED_50x50;
            if (UnityAdsDevice.getScreenDensity() == 120) {
               var2 = UnityAdsGraphicsBundle.ICON_AUDIO_UNMUTED_32x32;
            }

            return UnityAdsGraphicsBundle.getBitmapFromString(var2);
         case Muted:
            String var1 = UnityAdsGraphicsBundle.ICON_AUDIO_MUTED_50x50;
            if (UnityAdsDevice.getScreenDensity() == 120) {
               var1 = UnityAdsGraphicsBundle.ICON_AUDIO_MUTED_32x32;
            }

            return UnityAdsGraphicsBundle.getBitmapFromString(var1);
         }
      }

      return null;
   }

   private void setupView() {
      this.setAdjustViewBounds(true);
      this.setLayoutParams(new LayoutParams(-2, -2));
      this.setImageBitmap(this.selectBitmap());
      this.setBackgroundResource(0);
      this.setPadding(0, 0, 0, 0);
   }

   public void setState(UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState var1) {
      if (var1 != null && !var1.equals(this._state)) {
         this._state = var1;
         this.setImageBitmap(this.selectBitmap());
      }

   }

   public static enum UnityAdsMuteVideoButtonSize {
      Large,
      Medium,
      Small;

      static {
         UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize[] var0 = new UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonSize[]{Small, Medium, Large};
      }
   }

   public static enum UnityAdsMuteVideoButtonState {
      Muted,
      UnMuted;

      static {
         UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState[] var0 = new UnityAdsMuteVideoButton.UnityAdsMuteVideoButtonState[]{UnMuted, Muted};
      }
   }
}
