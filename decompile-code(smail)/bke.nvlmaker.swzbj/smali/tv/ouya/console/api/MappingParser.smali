.class Ltv/ouya/console/api/MappingParser;
.super Ljava/lang/Object;
.source "MappingParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/MappingParser$1;,
        Ltv/ouya/console/api/MappingParser$Controller;,
        Ltv/ouya/console/api/MappingParser$ButtonIsAxis;,
        Ltv/ouya/console/api/MappingParser$AxisRemap;,
        Ltv/ouya/console/api/MappingParser$Button;,
        Ltv/ouya/console/api/MappingParser$Alias;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final STRING_NOT_FOUND:Ljava/lang/String;

.field private mController:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ltv/ouya/console/api/MappingParser$Controller;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

.field private mStringHash:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Ltv/ouya/console/api/MappingParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltv/ouya/console/api/MappingParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "NOT_FOUND"

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser;->STRING_NOT_FOUND:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser;->mController:Landroid/util/SparseArray;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    return-void
.end method

.method private getStringById(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 19
    if-ltz p1, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 20
    iget-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "NOT_FOUND"

    goto :goto_0
.end method


# virtual methods
.method public getButton(II)Ltv/ouya/console/api/MappingParser$Button;
    .locals 2
    .param p1, "controllerName"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Ltv/ouya/console/api/MappingParser;->getController(I)Ltv/ouya/console/api/MappingParser$Controller;

    move-result-object v0

    .line 89
    .local v0, "controller":Ltv/ouya/console/api/MappingParser$Controller;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2}, Ltv/ouya/console/api/MappingParser;->getButton(Ltv/ouya/console/api/MappingParser$Controller;I)Ltv/ouya/console/api/MappingParser$Button;

    move-result-object v1

    goto :goto_0
.end method

.method public getButton(Ltv/ouya/console/api/MappingParser$Controller;I)Ltv/ouya/console/api/MappingParser$Button;
    .locals 2
    .param p1, "controller"    # Ltv/ouya/console/api/MappingParser$Controller;
    .param p2, "keyCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p1, Ltv/ouya/console/api/MappingParser$Controller;->mButton:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p1, Ltv/ouya/console/api/MappingParser$Controller;->mButton:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/ouya/console/api/MappingParser$Button;

    goto :goto_0
.end method

.method public getController(I)Ltv/ouya/console/api/MappingParser$Controller;
    .locals 5
    .param p1, "controllerName"    # I

    .prologue
    .line 67
    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mController:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    iget-object v2, v2, Ltv/ouya/console/api/MappingParser$Controller;->mAlias:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 70
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 71
    sget-object v3, Ltv/ouya/console/api/MappingParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using controller fallback="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    iget-object v2, v2, Ltv/ouya/console/api/MappingParser$Controller;->mAlias:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/MappingParser$Alias;

    iget v2, v2, Ltv/ouya/console/api/MappingParser$Alias;->mName:I

    invoke-direct {p0, v2}, Ltv/ouya/console/api/MappingParser;->getStringById(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    .line 76
    :goto_1
    return-object v2

    :cond_1
    iget-object v2, p0, Ltv/ouya/console/api/MappingParser;->mController:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltv/ouya/console/api/MappingParser$Controller;

    goto :goto_1
.end method

.method getIdByString(Ljava/lang/String;)I
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/MappingParser;->mStringHash:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 30
    .param p1, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v15, "device":Lorg/json/JSONObject;
    const-string v27, "controller"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 108
    const-string v27, "controller"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 110
    .local v10, "controller":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "controllerId":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_0

    .line 112
    new-instance v21, Ltv/ouya/console/api/MappingParser$Controller;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ltv/ouya/console/api/MappingParser$Controller;-><init>(Ltv/ouya/console/api/MappingParser;)V

    .line 114
    .local v21, "mappingController":Ltv/ouya/console/api/MappingParser$Controller;
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 116
    .local v25, "objController":Lorg/json/JSONObject;
    const-string v27, "alias"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 118
    .local v11, "controllerAlias":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "aliasId":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_4

    .line 119
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 121
    .local v22, "objAlias":Lorg/json/JSONObject;
    new-instance v4, Ltv/ouya/console/api/MappingParser$Alias;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Ltv/ouya/console/api/MappingParser$Alias;-><init>(Ltv/ouya/console/api/MappingParser;Ltv/ouya/console/api/MappingParser$1;)V

    .line 122
    .local v4, "alias":Ltv/ouya/console/api/MappingParser$Alias;
    const-string v27, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ltv/ouya/console/api/MappingParser;->getIdByString(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mName:I

    .line 124
    const-string v27, "friendly_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ltv/ouya/console/api/MappingParser;->getIdByString(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mFriendlyName:I

    .line 126
    const-string v27, "fallback"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 127
    const-string v27, "fallback"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    move/from16 v0, v27

    iput-boolean v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mFallback:Z

    .line 130
    :cond_2
    move-object/from16 v0, v21

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAlias:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    iget v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mName:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser;->mController:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    iget v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mName:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget-boolean v0, v4, Ltv/ouya/console/api/MappingParser$Alias;->mFallback:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 133
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ltv/ouya/console/api/MappingParser;->mControllerFallback:Ltv/ouya/console/api/MappingParser$Controller;

    .line 118
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 137
    .end local v4    # "alias":Ltv/ouya/console/api/MappingParser$Alias;
    .end local v22    # "objAlias":Lorg/json/JSONObject;
    :cond_4
    const-string v27, "axis_exclude_source"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 138
    const-string v27, "axis_exclude_source"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 139
    .local v18, "excludeSource":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .local v17, "excludeId":I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 140
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v26

    .line 141
    .local v26, "source":I
    move-object/from16 v0, v21

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisExcludeSource:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 139
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 146
    .end local v17    # "excludeId":I
    .end local v18    # "excludeSource":Lorg/json/JSONArray;
    .end local v26    # "source":I
    :cond_5
    const-string v27, "axis_remap"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 147
    const-string v27, "axis_remap"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 149
    .local v6, "axis":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "axisId":I
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_6

    .line 151
    new-instance v19, Ltv/ouya/console/api/MappingParser$AxisRemap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ltv/ouya/console/api/MappingParser$AxisRemap;-><init>(Ltv/ouya/console/api/MappingParser;)V

    .line 153
    .local v19, "mappingAxis":Ltv/ouya/console/api/MappingParser$AxisRemap;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 155
    .local v23, "objAxis":Lorg/json/JSONObject;
    const-string v27, "source_axis"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Ltv/ouya/console/api/MappingParser$AxisRemap;->mSourceAxis:I

    .line 157
    const-string v27, "destination_axis"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Ltv/ouya/console/api/MappingParser$AxisRemap;->mDestinationAxis:I

    .line 160
    move-object/from16 v0, v21

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mAxisRemap:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 163
    .end local v6    # "axis":Lorg/json/JSONArray;
    .end local v7    # "axisId":I
    .end local v19    # "mappingAxis":Ltv/ouya/console/api/MappingParser$AxisRemap;
    .end local v23    # "objAxis":Lorg/json/JSONObject;
    :cond_6
    const-string v27, "button_is_axis"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 164
    const-string v27, "button_is_axis"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 166
    .local v8, "button":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "buttonId":I
    :goto_5
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_7

    .line 168
    new-instance v20, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;-><init>(Ltv/ouya/console/api/MappingParser;)V

    .line 170
    .local v20, "mappingButton":Ltv/ouya/console/api/MappingParser$ButtonIsAxis;
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 172
    .local v24, "objButton":Lorg/json/JSONObject;
    const-string v27, "source_axis"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mSourceAxis:I

    .line 174
    const-string v27, "action_down_max"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMax:F

    .line 176
    const-string v27, "action_down_min"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mActionDownMin:F

    .line 178
    const-string v27, "destination_keycode"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 180
    .local v13, "destinationKeyCode":I
    move-object/from16 v0, v20

    iput v13, v0, Ltv/ouya/console/api/MappingParser$ButtonIsAxis;->mDestinationKeyCode:I

    .line 182
    move-object/from16 v0, v21

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mButtonIsAxis:Ljava/util/Vector;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 185
    .end local v8    # "button":Lorg/json/JSONArray;
    .end local v9    # "buttonId":I
    .end local v13    # "destinationKeyCode":I
    .end local v20    # "mappingButton":Ltv/ouya/console/api/MappingParser$ButtonIsAxis;
    .end local v24    # "objButton":Lorg/json/JSONObject;
    :cond_7
    const-string v27, "button"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 186
    const-string v27, "button"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 188
    .restart local v8    # "button":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "buttonId":I
    :goto_6
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v9, v0, :cond_9

    .line 190
    new-instance v20, Ltv/ouya/console/api/MappingParser$Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ltv/ouya/console/api/MappingParser$Button;-><init>(Ltv/ouya/console/api/MappingParser;)V

    .line 192
    .local v20, "mappingButton":Ltv/ouya/console/api/MappingParser$Button;
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 194
    .restart local v24    # "objButton":Lorg/json/JSONObject;
    const-string v27, "source_keycode"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Ltv/ouya/console/api/MappingParser$Button;->mSourceKeyCode:I

    .line 196
    const-string v27, "destination_keycode"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 200
    .local v14, "destination_keycode":I
    const-string v27, "exclude_source"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 201
    const-string v27, "exclude_source"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 202
    .restart local v18    # "excludeSource":Lorg/json/JSONArray;
    const/16 v17, 0x0

    .restart local v17    # "excludeId":I
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    .line 203
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v26

    .line 204
    .restart local v26    # "source":I
    move-object/from16 v0, v20

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Button;->mExcludeSource:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 202
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 209
    .end local v17    # "excludeId":I
    .end local v18    # "excludeSource":Lorg/json/JSONArray;
    .end local v26    # "source":I
    :cond_8
    move-object/from16 v0, v20

    iput v14, v0, Ltv/ouya/console/api/MappingParser$Button;->mDestinationKeyCode:I

    .line 211
    move-object/from16 v0, v21

    iget-object v0, v0, Ltv/ouya/console/api/MappingParser$Controller;->mButton:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Ltv/ouya/console/api/MappingParser$Button;->mSourceKeyCode:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 110
    .end local v8    # "button":Lorg/json/JSONArray;
    .end local v9    # "buttonId":I
    .end local v14    # "destination_keycode":I
    .end local v20    # "mappingButton":Ltv/ouya/console/api/MappingParser$Button;
    .end local v24    # "objButton":Lorg/json/JSONObject;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 216
    .end local v5    # "aliasId":I
    .end local v10    # "controller":Lorg/json/JSONArray;
    .end local v11    # "controllerAlias":Lorg/json/JSONArray;
    .end local v12    # "controllerId":I
    .end local v15    # "device":Lorg/json/JSONObject;
    .end local v21    # "mappingController":Ltv/ouya/console/api/MappingParser$Controller;
    .end local v25    # "objController":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 217
    .local v16, "e":Lorg/json/JSONException;
    sget-object v27, Ltv/ouya/console/api/MappingParser;->TAG:Ljava/lang/String;

    const-string v28, "Failed to load input json: "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
