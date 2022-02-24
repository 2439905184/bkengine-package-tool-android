package org.cocos2dx.lib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

public class Cocos2dxEditText extends EditText {
   private Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;

   public Cocos2dxEditText(Context var1) {
      super(var1);
   }

   public Cocos2dxEditText(Context var1, AttributeSet var2) {
      super(var1, var2);
   }

   public Cocos2dxEditText(Context var1, AttributeSet var2, int var3) {
      super(var1, var2, var3);
   }

   public boolean onKeyDown(int var1, KeyEvent var2) {
      super.onKeyDown(var1, var2);
      if (var1 == 4) {
         this.mCocos2dxGLSurfaceView.requestFocus();
      }

      return true;
   }

   public void setCocos2dxGLSurfaceView(Cocos2dxGLSurfaceView var1) {
      this.mCocos2dxGLSurfaceView = var1;
   }
}
