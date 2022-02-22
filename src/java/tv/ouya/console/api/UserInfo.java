package tv.ouya.console.api;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class UserInfo implements Parcelable {
   public static final Creator CREATOR = new Creator() {
      public UserInfo createFromParcel(Parcel var1) {
         byte var2 = 1;
         UserInfo var3 = new UserInfo();
         var3.username = var1.readString();
         var3.email = var1.readString();
         var3.password = var1.readString();
         long var7 = var1.readLong();
         if (var7 > 0L) {
            var3.dateOfBirth = new GregorianCalendar();
            var3.dateOfBirth.setTimeInMillis(var7);
         }

         var3.gender = var1.readInt();
         byte var10;
         if (var1.readByte() == var2) {
            var10 = var2;
         } else {
            var10 = 0;
         }

         var3.founder = (boolean)var10;
         if (var1.readByte() != var2) {
            var2 = 0;
         }

         var3.emailOptOut = (boolean)var2;
         return var3;
      }

      public UserInfo[] newArray(int var1) {
         return new UserInfo[var1];
      }
   };
   public static final DateFormat DOB_FORMAT = new SimpleDateFormat("MM/dd/yyyy");
   public static final int GENDER_FEMALE = 2;
   public static final int GENDER_MALE = 1;
   public static final int GENDER_UNKNOWN;
   private Calendar dateOfBirth;
   private String email;
   private boolean emailOptOut;
   private boolean founder;
   private int gender;
   private String password;
   private String username;

   static {
      DOB_FORMAT.setLenient(false);
   }

   public UserInfo() {
   }

   public UserInfo(String var1, String var2, boolean var3) {
      this.username = var1;
      this.email = var2;
      this.founder = var3;
   }

   public UserInfo(String var1, String var2, boolean var3, String var4, String var5, boolean var6) {
      this(var1, var2, var3);
      this.password = var4;
      this.emailOptOut = var6;
   }

   public int describeContents() {
      return 0;
   }

   public boolean equals(Object var1) {
      if (this != var1) {
         if (var1 != null && this.getClass() == var1.getClass()) {
            UserInfo var2;
            label59: {
               var2 = (UserInfo)var1;
               if (this.email != null) {
                  if (this.email.equals(var2.email)) {
                     break label59;
                  }
               } else if (var2.email == null) {
                  break label59;
               }

               return false;
            }

            if (this.password != null) {
               if (!this.password.equals(var2.password)) {
                  return false;
               }
            } else if (var2.password != null) {
               return false;
            }

            if (this.username != null) {
               if (!this.username.equals(var2.username)) {
                  return false;
               }
            } else if (var2.username != null) {
               return false;
            }

            if (this.dateOfBirth != null) {
               if (!this.dateOfBirth.equals(var2.dateOfBirth)) {
                  return false;
               }
            } else if (var2.dateOfBirth != null) {
               return false;
            }

            if (this.founder != var2.founder) {
               return false;
            } else if (this.emailOptOut != var2.emailOptOut) {
               return false;
            } else {
               return true;
            }
         } else {
            return false;
         }
      } else {
         return true;
      }
   }

   public Calendar getDateOfBirth() {
      return this.dateOfBirth;
   }

   public String getEmail() {
      return this.email;
   }

   public int getGender() {
      return this.gender;
   }

   public String getGenderString() {
      switch(this.getGender()) {
      case 1:
         return "male";
      case 2:
         return "female";
      default:
         return "unknown";
      }
   }

   public String getPassword() {
      return this.password;
   }

   public String getUsername() {
      return this.username;
   }

   public int hashCode() {
      int var1;
      if (this.username != null) {
         var1 = this.username.hashCode();
      } else {
         var1 = 0;
      }

      int var2 = var1 * 31;
      int var3;
      if (this.email != null) {
         var3 = this.email.hashCode();
      } else {
         var3 = 0;
      }

      int var4 = 31 * (var2 + var3);
      int var5;
      if (this.password != null) {
         var5 = this.password.hashCode();
      } else {
         var5 = 0;
      }

      int var6 = 31 * (var4 + var5);
      Calendar var7 = this.dateOfBirth;
      int var8 = 0;
      if (var7 != null) {
         var8 = this.dateOfBirth.hashCode();
      }

      return 31 * (31 * (31 * (var6 + var8) + (new Integer(this.gender)).hashCode()) + Boolean.valueOf(this.founder).hashCode()) + Boolean.valueOf(this.emailOptOut).hashCode();
   }

   public boolean isEmailOptOut() {
      return this.emailOptOut;
   }

   public boolean isFounder() {
      return this.founder;
   }

   public void setDateOfBirth(Calendar var1) {
      this.dateOfBirth = var1;
   }

   public UserInfo setEmail(String var1) {
      this.email = var1;
      return this;
   }

   public void setEmailOptOut(boolean var1) {
      this.emailOptOut = var1;
   }

   public void setGender(int var1) {
      this.gender = var1;
   }

   public UserInfo setPassword(String var1) {
      this.password = var1;
      return this;
   }

   public UserInfo setUsername(String var1) {
      this.username = var1;
      return this;
   }

   public String toString() {
      byte var1 = 1;
      StringBuilder var2 = (new StringBuilder()).append("UserInfo{username='").append(this.username).append('\'').append(", email='").append(this.email).append('\'').append(", password='").append(this.password).append('\'').append(", dateOfBirth='").append(this.dateOfBirth).append('\'').append(", gender='").append(this.gender).append('\'').append(", founder='");
      byte var3;
      if (this.founder) {
         var3 = var1;
      } else {
         var3 = 0;
      }

      StringBuilder var4 = var2.append(var3).append('\'').append(", emailOptOut='");
      if (!this.emailOptOut) {
         var1 = 0;
      }

      return var4.append(var1).append('\'').append('}').toString();
   }

   public void writeToParcel(Parcel var1, int var2) {
      byte var3 = 1;
      var1.writeString(this.username);
      var1.writeString(this.email);
      var1.writeString(this.password);
      long var4;
      if (this.dateOfBirth == null) {
         var4 = 0L;
      } else {
         var4 = this.dateOfBirth.getTimeInMillis();
      }

      var1.writeLong(var4);
      var1.writeInt(this.gender);
      byte var6;
      if (this.founder) {
         var6 = var3;
      } else {
         var6 = 0;
      }

      var1.writeByte((byte)var6);
      if (!this.emailOptOut) {
         var3 = 0;
      }

      var1.writeByte((byte)var3);
   }
}
