package tv.ouya.console.api;

public class GamerInfo {
   String username;
   String uuid;

   public GamerInfo(String var1, String var2) {
      this.uuid = var1;
      this.username = var2;
   }

   public String getUsername() {
      return this.username;
   }

   public String getUuid() {
      return this.uuid;
   }
}
