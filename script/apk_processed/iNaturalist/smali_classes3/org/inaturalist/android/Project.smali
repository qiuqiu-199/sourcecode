.class public Lorg/inaturalist/android/Project;
.super Ljava/lang/Object;
.source "Project.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.project"

.field public static final CHECK_LIST_ID:Ljava/lang/String; = "check_list_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.inatproject"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.inatproject"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final ID:Ljava/lang/String; = "id"

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

.field public static final PROJECTS_URI_CODE:I = 0x7bb

.field public static final PROJECT_ID_URI_CODE:I = 0x7ac

.field public static final PROJECT_TYPE:Ljava/lang/String; = "project_type"

.field public static final PROJECT_TYPE_COLLECTION:Ljava/lang/String; = "collection"

.field public static final PROJECT_TYPE_UMBRELLA:Ljava/lang/String; = "umbrella"

.field public static final TABLE_NAME:Ljava/lang/String; = "projects"

.field public static final TAG:Ljava/lang/String; = "Project"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field public _id:Ljava/lang/Integer;

.field public check_list_id:Ljava/lang/Integer;

.field public description:Ljava/lang/String;

.field public icon_url:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public project_type:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.project/projects"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "title"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "icon_url"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "check_list_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "project_type"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 62
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "icon_url"

    const-string v2, "icon_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "check_list_id"

    const-string v2, "check_list_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/inaturalist/android/Project;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "project_type"

    const-string v2, "project_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 77
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->_id:Ljava/lang/Integer;

    const-string p1, "id"

    .line 78
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    const-string p1, "description"

    .line 79
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->description:Ljava/lang/String;

    const-string p1, "title"

    .line 80
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    const-string p1, "icon_url"

    .line 81
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->icon_url:Ljava/lang/String;

    const-string p1, "project_type"

    .line 82
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->project_type:Ljava/lang/String;

    const-string p1, "check_list_id"

    .line 83
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->check_list_id:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 87
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    const-string v0, "title"

    .line 88
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    const-string v0, "description"

    .line 89
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Project;->description:Ljava/lang/String;

    const-string v0, "icon_url"

    .line 90
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Project;->icon_url:Ljava/lang/String;

    const-string v0, "project_type"

    .line 91
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Project;->project_type:Ljava/lang/String;

    :try_start_0
    const-string v0, "project_list"

    .line 94
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Project;->check_list_id:Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE projects (_id INTEGER PRIMARY KEY,title TEXT,description TEXT,icon_url TEXT,project_type TEXT,id INTEGER,check_list_id INTEGER);"

    return-object v0
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    .line 132
    iget-object v2, p0, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "description"

    .line 133
    iget-object v2, p0, Lorg/inaturalist/android/Project;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 134
    iget-object v2, p0, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon_url"

    .line 135
    iget-object v2, p0, Lorg/inaturalist/android/Project;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "project_type"

    .line 136
    iget-object v2, p0, Lorg/inaturalist/android/Project;->project_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "check_list_id"

    .line 137
    iget-object v2, p0, Lorg/inaturalist/android/Project;->check_list_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/inaturalist/android/Project;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/Project;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 101
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v1, "id"

    .line 103
    iget-object v2, p0, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "title"

    .line 104
    iget-object v2, p0, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "description"

    .line 105
    iget-object v2, p0, Lorg/inaturalist/android/Project;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "icon_url"

    .line 106
    iget-object v2, p0, Lorg/inaturalist/android/Project;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "project_type"

    .line 107
    iget-object v2, p0, Lorg/inaturalist/android/Project;->project_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v2, "id"

    .line 109
    iget-object v3, p0, Lorg/inaturalist/android/Project;->check_list_id:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "project_list"

    .line 110
    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Project(id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Project;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
