package tv.ouya.console.api;

import android.util.Base64;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.InvalidParameterException;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.ouya.console.internal.util.OuyaDateParser;

public class OuyaEncryptionHelper {
   private Receipt createReceipt(OuyaDateParser var1, JSONObject var2) throws JSONException, ParseException {
      Date var3;
      if (var2.has("purchaseDate")) {
         var3 = new Date(var2.getLong("purchaseDate"));
      } else {
         var3 = var1.parse(var2.getString("date"));
      }

      Date var4;
      if (var2.has("generateDate")) {
         var4 = new Date(var2.getLong("generateDate"));
      } else {
         var4 = new Date();
         var4.setTime(0L);
      }

      String var5 = var2.optString("identifier");
      if (var5.isEmpty()) {
         var5 = var2.getString("sku");
      }

      String var6 = var2.getString("gamer");
      String var7 = var2.getString("uuid");
      return new Receipt(var5, var2.optInt("priceInCents", 0), var3, var4, var6, var7, var2.optDouble("localPrice", 0.0D), var2.optString("currency", "USD"));
   }

   public static Product decryptProductResponse(String var0, byte[] var1) throws GeneralSecurityException, IOException, JSONException {
      byte[] var2 = Base64.decode(var0, 0);
      if (var2[0] != 1) {
         throw new InvalidParameterException("The receipt is encrypted using a system which is unknown");
      } else {
         PrivateKey var3 = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(var1));
         byte var4 = var2[1];
         Cipher var5 = Cipher.getInstance("RSA");
         var5.init(2, var3);
         SecretKeySpec var6 = new SecretKeySpec(var5.doFinal(var2, 1, var4), "AES");
         Cipher var7 = Cipher.getInstance("AES");
         var7.init(2, var6);
         return new Product(new JSONObject(new String(var7.doFinal(var2, var4 + 2, var2.length), "UTF-8")));
      }
   }

   public String decryptPurchaseResponse(JSONObject var1, PublicKey var2) throws GeneralSecurityException, IOException, JSONException, ParseException {
      if (var1.has("key") && var1.has("iv") && var1.has("blob")) {
         byte[] var3 = Base64.decode(var1.getString("key"), 0);
         Cipher var4 = Cipher.getInstance("RSA/ECB/PKCS1Padding", "BC");
         var4.init(2, var2);
         SecretKeySpec var5 = new SecretKeySpec(var4.doFinal(var3), "AES");
         IvParameterSpec var6 = new IvParameterSpec(Base64.decode(var1.getString("iv"), 0));
         byte[] var7 = Base64.decode(var1.getString("blob"), 0);
         Cipher var8 = Cipher.getInstance("AES/CBC/PKCS5Padding");
         var8.init(2, var5, var6);
         JSONObject var9 = new JSONObject(new String(var8.doFinal(var7), "UTF-8"));
         return var9.has("uuid") ? var9.getString("uuid") : null;
      } else {
         throw new RuntimeException("Invalid response from server");
      }
   }

   public List decryptReceiptResponse(JSONObject var1, PublicKey var2) throws GeneralSecurityException, IOException, JSONException, ParseException {
      if (var1.has("key") && var1.has("iv") && var1.has("blob")) {
         byte[] var3 = Base64.decode(var1.getString("key").trim(), 0);
         Cipher var4 = Cipher.getInstance("RSA/ECB/PKCS1Padding", "BC");
         var4.init(2, var2);
         SecretKeySpec var5 = new SecretKeySpec(var4.doFinal(var3), "AES");
         IvParameterSpec var6 = new IvParameterSpec(Base64.decode(var1.getString("iv").trim(), 0));
         byte[] var7 = Base64.decode(var1.getString("blob").trim(), 0);
         Cipher var8 = Cipher.getInstance("AES/CBC/PKCS5Padding");
         var8.init(2, var5, var6);
         return this.parseJSONReceiptResponse((new JSONObject(new String(var8.doFinal(var7), "UTF-8"))).getJSONArray("purchases"));
      } else {
         throw new RuntimeException("Invalid response from server");
      }
   }

   public List parseJSONReceiptResponse(String var1) throws IOException {
      try {
         List var4 = this.parseJSONReceiptResponse(new JSONArray(var1));
         return var4;
      } catch (JSONException var5) {
         throw new IOException(var5);
      } catch (ParseException var6) {
         throw new IOException(var6);
      }
   }

   public List parseJSONReceiptResponse(JSONArray var1) throws JSONException, ParseException {
      ArrayList var2 = new ArrayList(var1.length());
      OuyaDateParser var3 = new OuyaDateParser();

      for(int var4 = 0; var4 < var1.length(); ++var4) {
         var2.add(this.createReceipt(var3, var1.getJSONObject(var4)));
      }

      return var2;
   }
}
