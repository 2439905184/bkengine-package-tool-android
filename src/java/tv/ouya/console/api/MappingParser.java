package tv.ouya.console.api;

import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Vector;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class MappingParser {
   private static final String TAG = MappingParser.class.getSimpleName();
   private final String STRING_NOT_FOUND = "NOT_FOUND";
   private SparseArray mController = new SparseArray();
   private MappingParser.Controller mControllerFallback = null;
   private Vector mStringHash = new Vector();

   private String getStringById(int var1) {
      return var1 >= 0 && var1 < this.mStringHash.size() ? (String)this.mStringHash.get(var1) : "NOT_FOUND";
   }

   public MappingParser.Button getButton(int var1, int var2) {
      MappingParser.Controller var3 = this.getController(var1);
      return var3 == null ? null : this.getButton(var3, var2);
   }

   public MappingParser.Button getButton(MappingParser.Controller var1, int var2) {
      return var1 != null && var1.mButton.get(var2) != null ? (MappingParser.Button)var1.mButton.get(var2) : null;
   }

   public MappingParser.Controller getController(int var1) {
      if (this.mController.get(var1) != null) {
         return (MappingParser.Controller)this.mController.get(var1);
      } else {
         if (this.mControllerFallback != null) {
            int var2 = this.mControllerFallback.mAlias.size();

            for(int var3 = 0; var3 < var2; ++var3) {
               Log.i(TAG, "Using controller fallback=" + this.getStringById(((MappingParser.Alias)this.mControllerFallback.mAlias.valueAt(var3)).mName));
            }
         }

         return this.mControllerFallback;
      }
   }

   int getIdByString(String var1) {
      if (!this.mStringHash.contains(var1)) {
         this.mStringHash.add(var1);
      }

      return this.mStringHash.indexOf(var1);
   }

   public void parse(String var1) {
      if (var1 != null) {
         JSONException var10000;
         label187: {
            JSONArray var5;
            boolean var10001;
            try {
               JSONObject var2 = new JSONObject(var1);
               if (!var2.has("controller")) {
                  return;
               }

               var5 = var2.getJSONArray("controller");
            } catch (JSONException var51) {
               var10000 = var51;
               var10001 = false;
               break label187;
            }

            int var6 = 0;

            label178:
            while(true) {
               MappingParser.Controller var7;
               JSONObject var8;
               JSONArray var9;
               try {
                  if (var6 >= var5.length()) {
                     return;
                  }

                  var7 = new MappingParser.Controller();
                  var8 = var5.getJSONObject(var6);
                  var9 = var8.getJSONArray("alias");
               } catch (JSONException var41) {
                  var10000 = var41;
                  var10001 = false;
                  break;
               }

               int var10 = 0;

               while(true) {
                  MappingParser.Alias var35;
                  try {
                     if (var10 >= var9.length()) {
                        break;
                     }

                     JSONObject var34 = var9.getJSONObject(var10);
                     var35 = new MappingParser.Alias();
                     var35.mName = this.getIdByString(var34.getString("name"));
                     var35.mFriendlyName = this.getIdByString(var34.getString("friendly_name"));
                     if (var34.has("fallback")) {
                        var35.mFallback = var34.getBoolean("fallback");
                     }
                  } catch (JSONException var49) {
                     var10000 = var49;
                     var10001 = false;
                     break label178;
                  }

                  try {
                     var7.mAlias.put(var35.mName, var35);
                     this.mController.put(var35.mName, var7);
                     if (var35.mFallback) {
                        this.mControllerFallback = var7;
                     }
                  } catch (JSONException var50) {
                     var10000 = var50;
                     var10001 = false;
                     break label178;
                  }

                  ++var10;
               }

               label190: {
                  JSONArray var30;
                  try {
                     if (!var8.has("axis_exclude_source")) {
                        break label190;
                     }

                     var30 = var8.getJSONArray("axis_exclude_source");
                  } catch (JSONException var48) {
                     var10000 = var48;
                     var10001 = false;
                     break;
                  }

                  int var31 = 0;

                  while(true) {
                     int var32;
                     try {
                        var32 = var30.length();
                     } catch (JSONException var39) {
                        var10000 = var39;
                        var10001 = false;
                        break label178;
                     }

                     if (var31 >= var32) {
                        break;
                     }

                     try {
                        int var33 = var30.getInt(var31);
                        var7.mAxisExcludeSource.append(var33, true);
                     } catch (JSONException var40) {
                        var10000 = var40;
                        var10001 = false;
                        break label178;
                     }

                     ++var31;
                  }
               }

               label192: {
                  JSONArray var25;
                  try {
                     if (!var8.has("axis_remap")) {
                        break label192;
                     }

                     var25 = var8.getJSONArray("axis_remap");
                  } catch (JSONException var47) {
                     var10000 = var47;
                     var10001 = false;
                     break;
                  }

                  int var26 = 0;

                  while(true) {
                     try {
                        if (var26 >= var25.length()) {
                           break;
                        }

                        MappingParser.AxisRemap var27 = new MappingParser.AxisRemap();
                        JSONObject var28 = var25.getJSONObject(var26);
                        var27.mSourceAxis = var28.getInt("source_axis");
                        var27.mDestinationAxis = var28.getInt("destination_axis");
                        var7.mAxisRemap.add(var27);
                     } catch (JSONException var46) {
                        var10000 = var46;
                        var10001 = false;
                        break label178;
                     }

                     ++var26;
                  }
               }

               label193: {
                  JSONArray var20;
                  try {
                     if (!var8.has("button_is_axis")) {
                        break label193;
                     }

                     var20 = var8.getJSONArray("button_is_axis");
                  } catch (JSONException var45) {
                     var10000 = var45;
                     var10001 = false;
                     break;
                  }

                  int var21 = 0;

                  while(true) {
                     try {
                        if (var21 >= var20.length()) {
                           break;
                        }

                        MappingParser.ButtonIsAxis var22 = new MappingParser.ButtonIsAxis();
                        JSONObject var23 = var20.getJSONObject(var21);
                        var22.mSourceAxis = var23.getInt("source_axis");
                        var22.mActionDownMax = (float)var23.getDouble("action_down_max");
                        var22.mActionDownMin = (float)var23.getDouble("action_down_min");
                        var22.mDestinationKeyCode = var23.getInt("destination_keycode");
                        var7.mButtonIsAxis.add(var22);
                     } catch (JSONException var44) {
                        var10000 = var44;
                        var10001 = false;
                        break label178;
                     }

                     ++var21;
                  }
               }

               label194: {
                  JSONArray var11;
                  try {
                     if (!var8.has("button")) {
                        break label194;
                     }

                     var11 = var8.getJSONArray("button");
                  } catch (JSONException var43) {
                     var10000 = var43;
                     var10001 = false;
                     break;
                  }

                  int var12 = 0;

                  while(true) {
                     MappingParser.Button var13;
                     int var15;
                     label196: {
                        JSONArray var16;
                        try {
                           if (var12 >= var11.length()) {
                              break;
                           }

                           var13 = new MappingParser.Button();
                           JSONObject var14 = var11.getJSONObject(var12);
                           var13.mSourceKeyCode = var14.getInt("source_keycode");
                           var15 = var14.getInt("destination_keycode");
                           if (!var14.has("exclude_source")) {
                              break label196;
                           }

                           var16 = var14.getJSONArray("exclude_source");
                        } catch (JSONException var42) {
                           var10000 = var42;
                           var10001 = false;
                           break label178;
                        }

                        int var17 = 0;

                        while(true) {
                           int var18;
                           try {
                              var18 = var16.length();
                           } catch (JSONException var37) {
                              var10000 = var37;
                              var10001 = false;
                              break label178;
                           }

                           if (var17 >= var18) {
                              break;
                           }

                           try {
                              int var19 = var16.getInt(var17);
                              var13.mExcludeSource.append(var19, true);
                           } catch (JSONException var38) {
                              var10000 = var38;
                              var10001 = false;
                              break label178;
                           }

                           ++var17;
                        }
                     }

                     try {
                        var13.mDestinationKeyCode = var15;
                        var7.mButton.put(var13.mSourceKeyCode, var13);
                     } catch (JSONException var36) {
                        var10000 = var36;
                        var10001 = false;
                        break label178;
                     }

                     ++var12;
                  }
               }

               ++var6;
            }
         }

         JSONException var3 = var10000;
         Log.e(TAG, "Failed to load input json: ", var3);
      }
   }

   private class Alias {
      public boolean mFallback;
      public int mFriendlyName;
      public int mName;

      private Alias() {
         this.mName = -1;
         this.mFriendlyName = -1;
         this.mFallback = false;
      }

      // $FF: synthetic method
      Alias(Object var2) {
         this();
      }
   }

   class AxisRemap {
      public int mDestinationAxis = 0;
      public int mSourceAxis = 0;
   }

   class Button {
      public int mDestinationKeyCode = 0;
      public SparseBooleanArray mExcludeSource = new SparseBooleanArray();
      public int mSourceKeyCode = 0;
   }

   class ButtonIsAxis {
      public float mActionDownMax = 0.0F;
      public float mActionDownMin = 0.0F;
      public int mDestinationKeyCode = 0;
      public int mSourceAxis = 0;
   }

   class Controller {
      public SparseArray mAlias = new SparseArray();
      public SparseBooleanArray mAxisExcludeSource = new SparseBooleanArray();
      public Vector mAxisRemap = new Vector();
      public SparseArray mButton = new SparseArray();
      public Vector mButtonIsAxis = new Vector();
   }
}
