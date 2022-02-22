package org.cocos2dx.lib;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class Cocos2dxTextInputWraper implements TextWatcher, OnEditorActionListener {
   private static final String TAG = Cocos2dxTextInputWraper.class.getSimpleName();
   private final Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;
   private String mOriginText;
   private String mText;

   public Cocos2dxTextInputWraper(Cocos2dxGLSurfaceView var1) {
      this.mCocos2dxGLSurfaceView = var1;
   }

   private boolean isFullScreenEdit() {
      return ((InputMethodManager)this.mCocos2dxGLSurfaceView.getCocos2dxEditText().getContext().getSystemService("input_method")).isFullscreenMode();
   }

   public void afterTextChanged(Editable var1) {
      if (!this.isFullScreenEdit()) {
         int var2 = var1.length() - this.mText.length();
         if (var2 > 0) {
            String var3 = var1.subSequence(this.mText.length(), var1.length()).toString();
            this.mCocos2dxGLSurfaceView.insertText(var3);
         } else {
            while(var2 < 0) {
               this.mCocos2dxGLSurfaceView.deleteBackward();
               ++var2;
            }
         }

         this.mText = var1.toString();
      }
   }

   public void beforeTextChanged(CharSequence var1, int var2, int var3, int var4) {
      this.mText = var1.toString();
   }

   public boolean onEditorAction(TextView var1, int var2, KeyEvent var3) {
      if (this.mCocos2dxGLSurfaceView.getCocos2dxEditText() == var1 && this.isFullScreenEdit()) {
         for(int var5 = this.mOriginText.length(); var5 > 0; --var5) {
            this.mCocos2dxGLSurfaceView.deleteBackward();
         }

         String var6 = var1.getText().toString();
         if (var6.compareTo("") == 0) {
            var6 = "\n";
         }

         if ('\n' != var6.charAt(-1 + var6.length())) {
            var6 = var6 + '\n';
         }

         this.mCocos2dxGLSurfaceView.insertText(var6);
      }

      if (var2 == 6) {
         this.mCocos2dxGLSurfaceView.requestFocus();
      }

      return false;
   }

   public void onTextChanged(CharSequence var1, int var2, int var3, int var4) {
   }

   public void setOriginText(String var1) {
      this.mOriginText = var1;
   }
}
