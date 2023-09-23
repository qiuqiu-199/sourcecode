.class public Lorg/inaturalist/android/ProjectObservation;
.super Ljava/lang/Object;
.source "ProjectObservation.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.project_observation"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.project_observation"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.project_observation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final IS_NEW:Ljava/lang/String; = "is_new"

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

.field public static final PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final PROJECT_OBSERVATIONS_URI_CODE:I = 0xba3

.field public static final PROJECT_OBSERVATION_ID_URI_CODE:I = 0xb94

.field public static final TABLE_NAME:Ljava/lang/String; = "project_observations"

.field public static final TAG:Ljava/lang/String; = "ProjectObservation"


# instance fields
.field public _id:Ljava/lang/Integer;

.field public is_deleted:Ljava/lang/Boolean;

.field public is_new:Ljava/lang/Boolean;

.field public observation_id:Ljava/lang/Integer;

.field public project_id:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.project_observation/project_observations"

    .line 31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "project_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "observation_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "is_deleted"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "is_new"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "project_id"

    const-string v2, "project_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "observation_id"

    const-string v2, "observation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_deleted"

    const-string v2, "is_deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "is_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 63
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 65
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->_id:Ljava/lang/Integer;

    const-string p1, "project_id"

    .line 66
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    const-string p1, "observation_id"

    .line 67
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    const-string p1, "is_deleted"

    .line 68
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    const-string p1, "is_new"

    .line 69
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "project_id"

    .line 73
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    const-string v0, "observation_id"

    .line 74
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    return-void
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE project_observations (_id INTEGER PRIMARY KEY,project_id INTEGER,observation_id INTEGER,is_deleted INTEGER,is_new INTEGER, UNIQUE(project_id, observation_id) ON CONFLICT REPLACE);"

    return-object v0
.end method


# virtual methods
.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "project_id"

    .line 95
    iget-object v2, p0, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "observation_id"

    .line 96
    iget-object v2, p0, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_deleted"

    .line 97
    iget-object v2, p0, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "is_new"

    .line 98
    iget-object v2, p0, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/inaturalist/android/ProjectObservation;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectObservation;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectObservation(project id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", observation_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectObservation;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
