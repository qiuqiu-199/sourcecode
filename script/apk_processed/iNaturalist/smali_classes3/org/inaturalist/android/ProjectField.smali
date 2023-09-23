.class public Lorg/inaturalist/android/ProjectField;
.super Ljava/lang/Object;
.source "ProjectField.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final ALLOWED_VALUES:Ljava/lang/String; = "allowed_values"

.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.project_field"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.project_field"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.project_field"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_TYPE:Ljava/lang/String; = "data_type"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final FIELD_ID:Ljava/lang/String; = "field_id"

.field public static final IS_REQUIRED:Ljava/lang/String; = "is_required"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_FIELDS_URI_CODE:I = 0xf8b

.field public static final PROJECT_FIELD_ID_URI_CODE:I = 0xf7c

.field public static final PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final TABLE_NAME:Ljava/lang/String; = "project_fields"

.field public static final TAG:Ljava/lang/String; = "ProjectField"


# instance fields
.field public _id:Ljava/lang/Integer;

.field public allowed_values:Ljava/lang/String;

.field public data_type:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public field_id:Ljava/lang/Integer;

.field public is_required:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public position:Ljava/lang/Integer;

.field public project_id:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.project_field/project_fields"

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x9

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "field_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "project_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "data_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "allowed_values"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "is_required"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "position"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "field_id"

    const-string v2, "field_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "project_id"

    const-string v2, "project_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "data_type"

    const-string v2, "data_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "allowed_values"

    const-string v2, "allowed_values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_required"

    const-string v2, "is_required"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/inaturalist/android/ProjectField;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 81
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->_id:Ljava/lang/Integer;

    const-string p1, "field_id"

    .line 82
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    const-string p1, "project_id"

    .line 83
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    const-string p1, "name"

    .line 84
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    const-string p1, "description"

    .line 85
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    const-string p1, "data_type"

    .line 86
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string p1, "allowed_values"

    .line 87
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    const-string p1, "is_required"

    .line 88
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    const-string p1, "position"

    .line 89
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    :try_start_0
    const-string v1, "observation_field_id"

    .line 94
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    .line 95
    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    :cond_0
    const-string v1, "project_id"

    .line 96
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    const-string v1, "observation_field"

    .line 98
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "observation_field"

    .line 99
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    const-string v1, "observation_field"

    .line 100
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    const-string v1, "observation_field"

    .line 101
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "datatype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "observation_field"

    .line 102
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "allowed_values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "name"

    .line 104
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    const-string v1, "description"

    .line 105
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    const-string v1, "datatype"

    .line 106
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "allowed_values"

    .line 107
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    :goto_0
    const-string v1, "required"

    .line 110
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    .line 111
    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    :cond_2
    const-string v0, "position"

    .line 112
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE project_fields (_id INTEGER PRIMARY KEY,field_id INTEGER,project_id INTEGER,name TEXT, description TEXT, data_type TEXT, allowed_values TEXT, is_required INTEGER, position INTEGER, UNIQUE(field_id, project_id) ON CONFLICT REPLACE);"

    return-object v0
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 132
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "field_id"

    .line 134
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, "project_id"

    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "name"

    .line 136
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    .line 137
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data_type"

    .line 138
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "allowed_values"

    .line 139
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_required"

    .line 140
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "position"

    .line 141
    iget-object v2, p0, Lorg/inaturalist/android/ProjectField;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/inaturalist/android/ProjectField;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    sget-object v0, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectField(project id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectField;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
