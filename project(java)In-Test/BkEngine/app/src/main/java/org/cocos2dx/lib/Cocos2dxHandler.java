package org.cocos2dx.lib;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import java.lang.ref.WeakReference;

public class Cocos2dxHandler extends Handler {
   public static final int HANDLER_SHOW_DIALOG = 1;
   public static final int HANDLER_SHOW_EDITBOX_DIALOG = 2;
   public static final int HANDLER_SHOW_TOAST_LONG = 4;
   public static final int HANDLER_SHOW_TOAST_SHORT = 3;
   private WeakReference mActivity;

   public Cocos2dxHandler(Cocos2dxActivity var1) {
      this.mActivity = new WeakReference(var1);
   }

   private void showDialog(Message var1) {
      Cocos2dxActivity var2 = (Cocos2dxActivity)this.mActivity.get();
      Cocos2dxHandler.DialogMessage var3 = (Cocos2dxHandler.DialogMessage)var1.obj;
      (new Builder(var2)).setTitle(var3.titile).setMessage(var3.message).setPositiveButton("Ok", new OnClickListener() {
         public void onClick(DialogInterface var1, int var2) {
         }
      }).create().show();
   }

   private void showEditBoxDialog(Message var1) {
      Cocos2dxHandler.EditBoxMessage var2 = (Cocos2dxHandler.EditBoxMessage)var1.obj;
      (new Cocos2dxEditBoxDialog((Context)this.mActivity.get(), var2.title, var2.content, var2.inputMode, var2.inputFlag, var2.returnType, var2.maxLength)).show();
   }

   public void handleMessage(Message var1) {
      switch(var1.what) {
      case 1:
         this.showDialog(var1);
         return;
      case 2:
         this.showEditBoxDialog(var1);
         return;
      case 3:
         Toast.makeText((Context)this.mActivity.get(), (String)var1.obj, 0).show();
         return;
      case 4:
         Toast.makeText((Context)this.mActivity.get(), (String)var1.obj, 1).show();
         return;
      default:
      }
   }

   public static class DialogMessage {
      public String message;
      public String titile;

      public DialogMessage(String var1, String var2) {
         this.titile = var1;
         this.message = var2;
      }
   }

   public static class EditBoxMessage {
      public String content;
      public int inputFlag;
      public int inputMode;
      public int maxLength;
      public int returnType;
      public String title;

      public EditBoxMessage(String var1, String var2, int var3, int var4, int var5, int var6) {
         this.content = var2;
         this.title = var1;
         this.inputMode = var3;
         this.inputFlag = var4;
         this.returnType = var5;
         this.maxLength = var6;
      }
   }
}
