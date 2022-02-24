package tv.ouya.console.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;

public interface IVoidListener extends IInterface {
   void onCancel() throws RemoteException;

   void onFailure(int var1, String var2, Bundle var3) throws RemoteException;

   void onSuccess(String var1) throws RemoteException;
}
