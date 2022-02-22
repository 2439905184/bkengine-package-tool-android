package tv.ouya.console.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class Purchasable implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public Purchasable createFromParcel(Parcel var1) {
         String var2 = var1.readString();
         switch(var1.readByte()) {
         case 1:
            return new Purchasable(var2);
         case 2:
            return new Purchasable(var2, var1.readString(), var1.readString(), var1.readString());
         default:
            throw new IllegalArgumentException("Unable to rebuild purchasable. Encryption data state unknown");
         }
      }

      public Purchasable[] newArray(int var1) {
         return new Purchasable[var1];
      }
   };
   private String mIV;
   private String mKey;
   private String mPayload;
   private String productId;

   public Purchasable(String var1) {
      this.productId = var1;
   }

   public Purchasable(String var1, String var2, String var3, String var4) {
      this.productId = var1;
      this.mKey = var2;
      this.mIV = var3;
      this.mPayload = var4;
   }

   private boolean encrypt(PublicKey var1) throws GeneralSecurityException, UnsupportedEncodingException {
      SecureRandom var2 = SecureRandom.getInstance("SHA1PRNG");
      byte[] var3 = new byte[16];
      var2.nextBytes(var3);
      SecretKeySpec var4 = new SecretKeySpec(var3, "AES");
      byte[] var5 = new byte[16];
      var2.nextBytes(var5);
      IvParameterSpec var6 = new IvParameterSpec(var5);
      Cipher var7 = Cipher.getInstance("AES");
      var7.init(1, var4, var6);
      byte[] var8 = var7.doFinal(this.productId.getBytes("UTF-8"));
      Cipher var9 = Cipher.getInstance("RSA");
      var9.init(1, var1);
      this.mKey = Base64.encodeToString(var9.doFinal(var3), 0);
      this.mIV = Base64.encodeToString(var5, 0);
      this.mPayload = Base64.encodeToString(var8, 0);
      return true;
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this == var1) {
         return true;
      } else if (var1 != null && this.getClass() == var1.getClass()) {
         Purchasable var2 = (Purchasable)var1;
         return this.productId.equals(var2.productId);
      } else {
         return false;
      }
   }

   public String getProductId() {
      return this.productId;
   }

   public boolean hasEncryptionParameters() {
      return this.mKey != null && this.mIV != null && this.mPayload != null;
   }

   public int hashCode() {
      return this.productId.hashCode();
   }

   public String toJSON() {
      if (!this.hasEncryptionParameters()) {
         return null;
      } else {
         StringBuilder var1 = new StringBuilder();
         var1.append("{ \"key\" : \"");
         var1.append(this.mKey);
         var1.append("\", \"iv\" : \"");
         var1.append(this.mIV);
         var1.append("\", \"blob\" : \"");
         var1.append(this.mPayload);
         var1.append("\" }");
         return var1.toString();
      }
   }

   public void writeToParcel(Parcel var1, int var2) {
      var1.writeString(this.productId);
      if (this.hasEncryptionParameters()) {
         var1.writeByte((byte)2);
         var1.writeString(this.mKey);
         var1.writeString(this.mIV);
         var1.writeString(this.mPayload);
      } else {
         var1.writeByte((byte)1);
      }
   }
}
