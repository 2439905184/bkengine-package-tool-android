package com.unity3d.ads.android.video;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas.VertexMode;
import android.graphics.Paint.Style;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.RelativeLayout.LayoutParams;

public class UnityAdsVideoPausedView extends RelativeLayout {
   private static float screenDensity;
   private ImageView _outerStroke = null;
   private ImageView _playButtonBase = null;
   private TextView _textView = null;
   private ImageView _triangle = null;

   public UnityAdsVideoPausedView(Context var1) {
      super(var1);
      this.createView();
   }

   public UnityAdsVideoPausedView(Context var1, AttributeSet var2) {
      super(var1, var2);
      this.createView();
   }

   public UnityAdsVideoPausedView(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
      this.createView();
   }

   private ImageView createBall(int var1) {
      Bitmap var2 = Bitmap.createBitmap(Math.round(101.0F * screenDensity), Math.round(101.0F * screenDensity), Config.ARGB_4444);
      Canvas var3 = new Canvas(var2);
      Paint var4 = new Paint(1);
      var4.setColor(-1879048192);
      var3.drawCircle((float)Math.round(50.0F * screenDensity), (float)Math.round(50.0F * screenDensity), (float)Math.round(50.0F * screenDensity), var4);
      ImageView var5 = new ImageView(this.getContext());
      var5.setImageBitmap(var2);
      var5.setId(var1);
      return var5;
   }

   private AnimationSet createBlinkAnimation(long var1) {
      AnimationSet var3 = new AnimationSet(false);
      AlphaAnimation var4 = new AlphaAnimation(1.0F, 0.0F);
      var4.setRepeatCount(-1);
      var4.setRepeatMode(2);
      var4.setFillBefore(true);
      var4.setFillAfter(true);
      var4.setDuration(800L);
      var3.addAnimation(var4);
      return var3;
   }

   private ImageView createOuterStroke(int var1) {
      Bitmap var2 = Bitmap.createBitmap(Math.round(113.0F * screenDensity), Math.round(113.0F * screenDensity), Config.ARGB_4444);
      Canvas var3 = new Canvas(var2);
      Paint var4 = new Paint(1);
      var4.setColor(-1);
      var4.setStyle(Style.STROKE);
      var4.setStrokeWidth(5.0F);
      var3.drawCircle((float)Math.round(56.0F * screenDensity), (float)Math.round(56.0F * screenDensity), (float)Math.round(53.0F * screenDensity), var4);
      ImageView var5 = new ImageView(this.getContext());
      var5.setImageBitmap(var2);
      var5.setId(var1);
      return var5;
   }

   private ImageView createTriangle(int var1) {
      Bitmap var2 = Bitmap.createBitmap(Math.round(47.0F * screenDensity), Math.round(51.0F * screenDensity), Config.ARGB_4444);
      Canvas var3 = new Canvas(var2);
      Paint var4 = new Paint(1);
      var4.setColor(-1);
      var4.setStyle(Style.FILL);
      float[] var5 = new float[]{0.0F, 0.0F, 47.0F * screenDensity, 25.0F * screenDensity, 0.0F, 51.0F * screenDensity, 0.0F, 0.0F};
      var3.drawVertices(VertexMode.TRIANGLES, 8, var5, 0, (float[])null, 0, (int[])null, 0, (short[])null, 0, 0, var4);
      Path var6 = new Path();
      var6.moveTo(var5[0], var5[1]);
      var6.lineTo(var5[2], var5[3]);
      var6.lineTo(var5[4], var5[5]);
      var3.drawPath(var6, var4);
      ImageView var7 = new ImageView(this.getContext());
      var7.setImageBitmap(var2);
      var7.setId(var1);
      return var7;
   }

   private void createView() {
      this.setBackgroundColor(-1073741824);
      LayoutParams var1 = new LayoutParams(-2, -2);
      var1.addRule(13);
      this._outerStroke = this.createOuterStroke(60006);
      this.addView(this._outerStroke, var1);
      LayoutParams var2 = new LayoutParams(-2, -2);
      var2.addRule(13);
      this._playButtonBase = this.createBall(60001);
      this.addView(this._playButtonBase, var2);
      LayoutParams var3 = new LayoutParams(-2, -2);
      var3.addRule(15);
      var3.addRule(5, 60001);
      var3.leftMargin = Math.round(31.0F * screenDensity);
      this._triangle = this.createTriangle(60002);
      this.addView(this._triangle, var3);
      this._textView = new TextView(this.getContext());
      this._textView.setTextColor(-1);
      this._textView.setText("Video paused. Tap screen to continue watching.");
      this._textView.setId(60003);
      LayoutParams var4 = new LayoutParams(-2, -2);
      var4.addRule(14);
      var4.addRule(12);
      var4.bottomMargin = Math.round(20.0F * screenDensity);
      this.addView(this._textView, var4);
   }

   public static void initScreenMetrics(Activity var0) {
      screenDensity = var0.getResources().getDisplayMetrics().density;
   }

   protected void onAttachedToWindow() {
      super.onAttachedToWindow();
      if (this._outerStroke != null) {
         this._outerStroke.setAnimation(this.createBlinkAnimation(0L));
      }

   }

   protected void onDetachedFromWindow() {
      super.onDetachedFromWindow();
      if (this._outerStroke != null) {
         this._outerStroke.clearAnimation();
      }

   }
}
