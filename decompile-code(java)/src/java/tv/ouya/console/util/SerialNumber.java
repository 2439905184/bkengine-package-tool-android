package tv.ouya.console.util;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import java.util.Random;
import tv.ouya.console.internal.util.CurrentTime;

public class SerialNumber {
   public static final String SERIAL = "serial";
   public static final String SERIAL_PREFS = "serial_prefs";
   private static SerialNumber instance;
   private Context context;
   private CurrentTime currentTime;
   private String serialNumber;

   @Deprecated
   public SerialNumber(Context var1) {
      this.context = var1;
      this.currentTime = CurrentTime.getInstance();
   }

   private void firstTime() {
      if (!Build.SERIAL.startsWith("emulator") && !Build.SERIAL.equals("unknown")) {
         this.serialNumber = Build.SERIAL;
      } else {
         Context var1 = null;

         label29: {
            NameNotFoundException var10000;
            label38: {
               boolean var10001;
               try {
                  var1 = this.context.createPackageContext("tv.ouya", 2);
               } catch (NameNotFoundException var4) {
                  var10000 = var4;
                  var10001 = false;
                  break label38;
               }

               if (var1 != null) {
                  break label29;
               }

               try {
                  var1 = this.context;
                  break label29;
               } catch (NameNotFoundException var3) {
                  var10000 = var3;
                  var10001 = false;
               }
            }

            NameNotFoundException var2 = var10000;
            var2.printStackTrace();
         }

         this.serialNumber = var1.getSharedPreferences("serial_prefs", 3).getString("serial", (String)null);
         if (this.serialNumber == null) {
            this.serialNumber = this.generateSerialNumber(var1);
            return;
         }
      }

   }

   private String generateSerialNumber(Context var1) {
      String var2 = "" + Long.valueOf((new Random(this.currentTime.currentTimeMillis())).nextLong()).hashCode();
      Editor var3 = var1.getSharedPreferences("serial_prefs", 3).edit();
      var3.putString("serial", var2);
      var3.commit();
      return var2;
   }

   public static SerialNumber getInstance(Context var0) {
      if (instance == null) {
         instance = new SerialNumber(var0);
      }

      return instance;
   }

   @Deprecated
   public static void setInstance(SerialNumber var0) {
      instance = var0;
   }

   public String getSerialNumber() {
      if (this.serialNumber == null) {
         this.firstTime();
      }

      return this.serialNumber;
   }
}
