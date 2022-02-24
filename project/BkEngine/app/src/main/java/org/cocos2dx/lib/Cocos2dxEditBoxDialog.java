package org.cocos2dx.lib;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView.OnEditorActionListener;

public class Cocos2dxEditBoxDialog extends Dialog {
   private final int kEditBoxInputFlagInitialCapsAllCharacters = 4;
   private final int kEditBoxInputFlagInitialCapsSentence = 3;
   private final int kEditBoxInputFlagInitialCapsWord = 2;
   private final int kEditBoxInputFlagPassword = 0;
   private final int kEditBoxInputFlagSensitive = 1;
   private final int kEditBoxInputModeAny = 0;
   private final int kEditBoxInputModeDecimal = 5;
   private final int kEditBoxInputModeEmailAddr = 1;
   private final int kEditBoxInputModeNumeric = 2;
   private final int kEditBoxInputModePhoneNumber = 3;
   private final int kEditBoxInputModeSingleLine = 6;
   private final int kEditBoxInputModeUrl = 4;
   private final int kKeyboardReturnTypeDefault = 0;
   private final int kKeyboardReturnTypeDone = 1;
   private final int kKeyboardReturnTypeGo = 4;
   private final int kKeyboardReturnTypeSearch = 3;
   private final int kKeyboardReturnTypeSend = 2;
   private EditText mInputEditText;
   private final int mInputFlag;
   private int mInputFlagConstraints;
   private final int mInputMode;
   private int mInputModeContraints;
   private boolean mIsMultiline;
   private final int mMaxLength;
   private final String mMessage;
   private final int mReturnType;
   private TextView mTextViewTitle;
   private final String mTitle;

   public Cocos2dxEditBoxDialog(Context var1, String var2, String var3, int var4, int var5, int var6, int var7) {
      super(var1, 16973841);
      this.mTitle = var2;
      this.mMessage = var3;
      this.mInputMode = var4;
      this.mInputFlag = var5;
      this.mReturnType = var6;
      this.mMaxLength = var7;
   }

   private void closeKeyboard() {
      ((InputMethodManager)this.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mInputEditText.getWindowToken(), 0);
   }

   private int convertDipsToPixels(float var1) {
      return Math.round(var1 * this.getContext().getResources().getDisplayMetrics().density);
   }

   private void openKeyboard() {
      ((InputMethodManager)this.getContext().getSystemService("input_method")).showSoftInput(this.mInputEditText, 0);
   }

   protected void onCreate(Bundle var1) {
      super.onCreate(var1);
      this.getWindow().setBackgroundDrawable(new ColorDrawable(Integer.MIN_VALUE));
      LinearLayout var2 = new LinearLayout(this.getContext());
      var2.setOrientation(1);
      LayoutParams var3 = new LayoutParams(-1, -1);
      this.mTextViewTitle = new TextView(this.getContext());
      LayoutParams var4 = new LayoutParams(-2, -2);
      int var5 = this.convertDipsToPixels(10.0F);
      var4.rightMargin = var5;
      var4.leftMargin = var5;
      this.mTextViewTitle.setTextSize(1, 20.0F);
      var2.addView(this.mTextViewTitle, var4);
      this.mInputEditText = new EditText(this.getContext());
      LayoutParams var6 = new LayoutParams(-1, -2);
      int var7 = this.convertDipsToPixels(10.0F);
      var6.rightMargin = var7;
      var6.leftMargin = var7;
      var2.addView(this.mInputEditText, var6);
      this.setContentView(var2, var3);
      this.getWindow().addFlags(1024);
      this.mTextViewTitle.setText(this.mTitle);
      this.mInputEditText.setText(this.mMessage);
      int var8 = this.mInputEditText.getImeOptions();
      this.mInputEditText.setImeOptions(268435456 | var8);
      int var9 = this.mInputEditText.getImeOptions();
      switch(this.mInputMode) {
      case 0:
         this.mInputModeContraints = 131073;
         break;
      case 1:
         this.mInputModeContraints = 33;
         break;
      case 2:
         this.mInputModeContraints = 4098;
         break;
      case 3:
         this.mInputModeContraints = 3;
         break;
      case 4:
         this.mInputModeContraints = 17;
         break;
      case 5:
         this.mInputModeContraints = 12290;
         break;
      case 6:
         this.mInputModeContraints = 1;
      }

      if (this.mIsMultiline) {
         this.mInputModeContraints |= 131072;
      }

      this.mInputEditText.setInputType(this.mInputModeContraints | this.mInputFlagConstraints);
      switch(this.mInputFlag) {
      case 0:
         this.mInputFlagConstraints = 129;
         break;
      case 1:
         this.mInputFlagConstraints = 524288;
         break;
      case 2:
         this.mInputFlagConstraints = 8192;
         break;
      case 3:
         this.mInputFlagConstraints = 16384;
         break;
      case 4:
         this.mInputFlagConstraints = 4096;
      }

      this.mInputEditText.setInputType(this.mInputFlagConstraints | this.mInputModeContraints);
      switch(this.mReturnType) {
      case 0:
         this.mInputEditText.setImeOptions(var9 | 1);
         break;
      case 1:
         this.mInputEditText.setImeOptions(var9 | 6);
         break;
      case 2:
         this.mInputEditText.setImeOptions(var9 | 4);
         break;
      case 3:
         this.mInputEditText.setImeOptions(var9 | 3);
         break;
      case 4:
         this.mInputEditText.setImeOptions(var9 | 2);
         break;
      default:
         this.mInputEditText.setImeOptions(var9 | 1);
      }

      if (this.mMaxLength > 0) {
         EditText var11 = this.mInputEditText;
         InputFilter[] var12 = new InputFilter[]{new LengthFilter(this.mMaxLength)};
         var11.setFilters(var12);
      }

      (new Handler()).postDelayed(new Runnable() {
         public void run() {
            Cocos2dxEditBoxDialog.this.mInputEditText.requestFocus();
            Cocos2dxEditBoxDialog.this.mInputEditText.setSelection(Cocos2dxEditBoxDialog.this.mInputEditText.length());
            Cocos2dxEditBoxDialog.this.openKeyboard();
         }
      }, 200L);
      this.mInputEditText.setOnEditorActionListener(new OnEditorActionListener() {
         public boolean onEditorAction(TextView var1, int var2, KeyEvent var3) {
            if (var2 == 0 && (var2 != 0 || var3 == null || var3.getAction() != 0)) {
               return false;
            } else {
               Cocos2dxHelper.setEditTextDialogResult(Cocos2dxEditBoxDialog.this.mInputEditText.getText().toString());
               Cocos2dxEditBoxDialog.this.closeKeyboard();
               Cocos2dxEditBoxDialog.this.dismiss();
               return true;
            }
         }
      });
   }
}
