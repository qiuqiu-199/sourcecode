.class public Lorg/inaturalist/android/ProjectFieldValue;
.super Ljava/lang/Object;
.source "ProjectFieldValue.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.project_field_value"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.project_field_value"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.project_field_value"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final FIELD_ID:Ljava/lang/String; = "field_id"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

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

.field public static final PROJECT_FIELD_VALUES_URI_CODE:I = 0x12c1

.field public static final PROJECT_FIELD_VALUE_ID_URI_CODE:I = 0x124e

.field public static final TABLE_NAME:Ljava/lang/String; = "project_field_values"

.field public static final TAG:Ljava/lang/String; = "ProjectFieldValue"

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final _CREATED_AT:Ljava/lang/String; = "_created_at"

.field public static final _SYNCED_AT:Ljava/lang/String; = "_synced_at"

.field public static final _UPDATED_AT:Ljava/lang/String; = "_updated_at"


# instance fields
.field public _created_at:Ljava/sql/Timestamp;

.field public _id:Ljava/lang/Integer;

.field public _synced_at:Ljava/sql/Timestamp;

.field public _updated_at:Ljava/sql/Timestamp;

.field public created_at:Ljava/sql/Timestamp;

.field public field_id:Ljava/lang/Integer;

.field public id:Ljava/lang/Integer;

.field public observation_id:Ljava/lang/Integer;

.field public updated_at:Ljava/sql/Timestamp;

.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.project_field_value/project_field_values"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xa

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_created_at"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "observation_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "field_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "value"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "_synced_at"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "_updated_at"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "created_at"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "updated_at"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 68
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_created_at"

    const-string v2, "_created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_synced_at"

    const-string v2, "_synced_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_updated_at"

    const-string v2, "_updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created_at"

    const-string v2, "created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "observation_id"

    const-string v2, "observation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "field_id"

    const-string v2, "field_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "updated_at"

    const-string v2, "updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 85
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 86
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_id:Ljava/lang/Integer;

    const-string p1, "_created_at"

    .line 87
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_created_at:Ljava/sql/Timestamp;

    const-string p1, "_synced_at"

    .line 88
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_synced_at:Ljava/sql/Timestamp;

    const-string p1, "_updated_at"

    .line 89
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_updated_at:Ljava/sql/Timestamp;

    const-string p1, "created_at"

    .line 90
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    const-string p1, "id"

    .line 91
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    const-string p1, "observation_id"

    .line 92
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    const-string p1, "updated_at"

    .line 93
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    const-string p1, "field_id"

    .line 94
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    const-string p1, "value"

    .line 95
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_created_at"

    .line 99
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->_created_at:Ljava/sql/Timestamp;

    const-string v0, "_synced_at"

    .line 100
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->_synced_at:Ljava/sql/Timestamp;

    const-string v0, "_updated_at"

    .line 101
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->_updated_at:Ljava/sql/Timestamp;

    const-string v0, "created_at"

    .line 102
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    const-string v0, "id"

    .line 103
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    const-string v0, "observation_id"

    .line 104
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    const-string v0, "updated_at"

    .line 105
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    const-string v0, "observation_field"

    .line 106
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "observation_field"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const-string v0, "field_id"

    .line 109
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    .line 111
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string v0, "observation_field_id"

    .line 112
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    :cond_1
    const-string v0, "value"

    .line 113
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    return-void
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE project_field_values (_id INTEGER PRIMARY KEY,_created_at INTEGER,_synced_at INTEGER,_updated_at INTEGER,created_at INTEGER,id INTEGER,observation_id INTEGER,updated_at INTEGER,value TEXT,field_id INTEGER,UNIQUE(field_id, observation_id) ON CONFLICT REPLACE);"

    return-object v0
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    const-string v1, "created_at"

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "id"

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "observation_id"

    .line 133
    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "field_id"

    .line 134
    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "value"

    .line 135
    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_2

    const-string v1, "updated_at"

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldValue;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectFieldValue(id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldValue;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
