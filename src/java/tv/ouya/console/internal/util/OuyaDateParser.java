package tv.ouya.console.internal.util;

import java.text.SimpleDateFormat;
import java.util.TimeZone;

public class OuyaDateParser extends SimpleDateFormat {
   public OuyaDateParser() {
      super("yyy-MM-dd'T'HH:mm:ss'Z'");
      this.setTimeZone(TimeZone.getTimeZone("UTC"));
   }
}
