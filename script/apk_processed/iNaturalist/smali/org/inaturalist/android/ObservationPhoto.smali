.class public Lorg/inaturalist/android/ObservationPhoto;
.super Ljava/lang/Object;
.source "ObservationPhoto.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.observation_photo"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.observation_photo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.observation_photo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "position ASC, id ASC, _id ASC"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_PHOTOS_URI_CODE:I = 0x709

.field public static final OBSERVATION_PHOTO_ID_URI_CODE:I = 0x696

.field public static final ORIGINAL_PHOTO_FILENAME:Ljava/lang/String; = "original_photo_filename"

.field public static final PHOTO_FILENAME:Ljava/lang/String; = "photo_filename"

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_URL:Ljava/lang/String; = "photo_url"

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

.field public static final TABLE_NAME:Ljava/lang/String; = "observation_photos"

.field public static final TAG:Ljava/lang/String; = "ObservationPhoto"

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final _CREATED_AT:Ljava/lang/String; = "_created_at"

.field public static final _OBSERVATION_ID:Ljava/lang/String; = "_observation_id"

.field public static final _PHOTO_ID:Ljava/lang/String; = "_photo_id"

.field public static final _SYNCED_AT:Ljava/lang/String; = "_synced_at"

.field public static final _UPDATED_AT:Ljava/lang/String; = "_updated_at"


# instance fields
.field public _created_at:Ljava/sql/Timestamp;

.field public _created_at_was:Ljava/sql/Timestamp;

.field public _id:Ljava/lang/Integer;

.field public _observation_id:Ljava/lang/Integer;

.field public _observation_id_was:Ljava/lang/Integer;

.field public _photo_id:Ljava/lang/Integer;

.field public _photo_id_was:Ljava/lang/Integer;

.field public _synced_at:Ljava/sql/Timestamp;

.field public _synced_at_was:Ljava/sql/Timestamp;

.field public _updated_at:Ljava/sql/Timestamp;

.field public _updated_at_was:Ljava/sql/Timestamp;

.field public created_at:Ljava/sql/Timestamp;

.field public created_at_was:Ljava/sql/Timestamp;

.field public id:Ljava/lang/Integer;

.field public id_was:Ljava/lang/Integer;

.field public is_deleted:Ljava/lang/Boolean;

.field public is_deleted_was:Ljava/lang/Boolean;

.field public observation_id:Ljava/lang/Integer;

.field public observation_id_was:Ljava/lang/Integer;

.field public original_photo_filename:Ljava/lang/String;

.field public photo_filename:Ljava/lang/String;

.field public photo_id:Ljava/lang/Integer;

.field public photo_id_was:Ljava/lang/Integer;

.field public photo_url:Ljava/lang/String;

.field public position:Ljava/lang/Integer;

.field public position_was:Ljava/lang/Integer;

.field public updated_at:Ljava/sql/Timestamp;

.field public updated_at_was:Ljava/sql/Timestamp;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.observation_photo/observation_photos"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x11

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_created_at"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "_observation_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "_photo_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "_synced_at"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "_updated_at"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "created_at"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "uuid"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "observation_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "photo_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "position"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "updated_at"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "photo_url"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "is_deleted"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "photo_filename"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "original_photo_filename"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 101
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_created_at"

    const-string v2, "_created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_observation_id"

    const-string v2, "_observation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_photo_id"

    const-string v2, "_photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_synced_at"

    const-string v2, "_synced_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_updated_at"

    const-string v2, "_updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created_at"

    const-string v2, "created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "uuid"

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "observation_id"

    const-string v2, "observation_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "updated_at"

    const-string/jumbo v2, "updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_deleted"

    const-string v2, "is_deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "photo_url"

    const-string v2, "photo_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "photo_filename"

    const-string v2, "photo_filename"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "original_photo_filename"

    const-string v2, "original_photo_filename"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 125
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    const-string p1, "_created_at"

    .line 126
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    .line 127
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at_was:Ljava/sql/Timestamp;

    const-string p1, "_observation_id"

    .line 128
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 129
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id_was:Ljava/lang/Integer;

    const-string p1, "_photo_id"

    .line 130
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    .line 131
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id_was:Ljava/lang/Integer;

    const-string p1, "_synced_at"

    .line 132
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    .line 133
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at_was:Ljava/sql/Timestamp;

    const-string p1, "_updated_at"

    .line 134
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    .line 135
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at_was:Ljava/sql/Timestamp;

    const-string p1, "created_at"

    .line 136
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    .line 137
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at_was:Ljava/sql/Timestamp;

    const-string/jumbo p1, "uuid"

    .line 138
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    const-string p1, "id"

    .line 139
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 140
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->id_was:Ljava/lang/Integer;

    const-string p1, "observation_id"

    .line 141
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    .line 142
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id_was:Ljava/lang/Integer;

    const-string p1, "photo_id"

    .line 143
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    .line 144
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id_was:Ljava/lang/Integer;

    const-string p1, "position"

    .line 145
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 146
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->position_was:Ljava/lang/Integer;

    const-string/jumbo p1, "updated_at"

    .line 147
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    .line 148
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted_was:Ljava/lang/Boolean;

    const-string p1, "is_deleted"

    .line 149
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted:Ljava/lang/Boolean;

    .line 150
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at_was:Ljava/sql/Timestamp;

    const-string p1, "photo_url"

    .line 151
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    const-string p1, "photo_filename"

    .line 152
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    const-string p1, "original_photo_filename"

    .line 153
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->original_photo_filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Lorg/inaturalist/android/BetterJSONObject;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;Z)V
    .locals 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_created_at"

    .line 160
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    .line 161
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at_was:Ljava/sql/Timestamp;

    const-string v0, "_observation_id"

    .line 162
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 163
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id_was:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const-string p2, "_photo_id"

    .line 164
    :goto_0
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_0
    const-string p2, "id"

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    .line 165
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id_was:Ljava/lang/Integer;

    const-string p2, "_synced_at"

    .line 166
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    .line 167
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at_was:Ljava/sql/Timestamp;

    const-string p2, "_updated_at"

    .line 168
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    .line 169
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at_was:Ljava/sql/Timestamp;

    const-string p2, "created_at"

    .line 170
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    .line 171
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at_was:Ljava/sql/Timestamp;

    const-string/jumbo p2, "uuid"

    .line 172
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    const-string p2, "id"

    .line 173
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 174
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->id_was:Ljava/lang/Integer;

    const-string p2, "observation_id"

    .line 175
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    .line 176
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id_was:Ljava/lang/Integer;

    const-string p2, "photo_id"

    .line 177
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    .line 178
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id_was:Ljava/lang/Integer;

    const-string p2, "position"

    .line 179
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 180
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->position_was:Ljava/lang/Integer;

    const-string/jumbo p2, "updated_at"

    .line 181
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    .line 182
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at_was:Ljava/sql/Timestamp;

    const-string p2, "large_url"

    .line 185
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :try_start_0
    const-string v0, "photo"

    .line 189
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 191
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string p2, "photo"

    .line 195
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "photo"

    .line 196
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 197
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    .line 200
    :cond_2
    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-nez p2, :cond_3

    const-string/jumbo p2, "url"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string/jumbo p2, "url"

    .line 201
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    .line 204
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 205
    iget-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "large."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE observation_photos (_id INTEGER PRIMARY KEY,_created_at INTEGER,_observation_id INTEGER,_photo_id INTEGER,_synced_at INTEGER,_updated_at INTEGER,created_at INTEGER,uuid TEXT,id INTEGER,observation_id INTEGER,photo_id INTEGER,position INTEGER,updated_at INTEGER,is_deleted INTEGER,photo_url TEXT,photo_filename TEXT,original_photo_filename TEXT);"

    return-object v0
.end method


# virtual methods
.method public _created_at_changed()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _observation_id_changed()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _photo_id_changed()Z
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _synced_at_changed()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _updated_at_changed()Z
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public created_at_changed()Z
    .locals 2

    .line 320
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 267
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    const-string v1, "created_at"

    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "id"

    .line 268
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "observation_id"

    .line 269
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_observation_id"

    .line 270
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "photo_id"

    .line 271
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "position"

    .line 272
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "photo_url"

    .line 273
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "photo_filename"

    .line 274
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "original_photo_filename"

    .line 275
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->original_photo_filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_deleted"

    .line 276
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 277
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "updated_at"

    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getParams()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation_photo[observation_id]"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation_photo[photo_id]"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation_photo[position]"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation_photo[uuid]"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    sget-object v0, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public id_changed()Z
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDirty()Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->_created_at_changed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 331
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->_observation_id_changed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 332
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->_photo_id_changed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 333
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->_synced_at_changed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 334
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->_updated_at_changed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 335
    :cond_4
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->created_at_changed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 336
    :cond_5
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->id_changed()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 337
    :cond_6
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->observation_id_changed()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 338
    :cond_7
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->photo_id_changed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 339
    :cond_8
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->position_changed()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 340
    :cond_9
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->updated_at_changed()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 341
    :cond_a
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationPhoto;->is_deleted_changed()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public is_deleted_changed()Z
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->is_deleted_was:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public merge(Lorg/inaturalist/android/ObservationPhoto;)V
    .locals 2

    .line 242
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    iget-object v1, p1, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    .line 245
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 246
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    .line 247
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    .line 248
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 249
    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    .line 250
    iget-object p1, p1, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 256
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    .line 257
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    .line 258
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    if-nez v0, :cond_5

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    .line 259
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    if-nez v0, :cond_6

    iget-object v0, p1, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    .line 260
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object p1, p1, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void
.end method

.method public observation_id_changed()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public photo_id_changed()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public position_changed()Z
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->position_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 216
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v1, "_created_at"

    .line 217
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_created_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_observation_id"

    .line 218
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_photo_id"

    .line 219
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_synced_at"

    .line 220
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_updated_at"

    .line 221
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->_updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "created_at"

    .line 222
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "uuid"

    .line 223
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "id"

    .line 224
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "observation_id"

    .line 225
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "photo_id"

    .line 226
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "position"

    .line 227
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->position:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "updated_at"

    .line 228
    iget-object v2, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObservationPhoto(id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photo_url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photo_filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", photo_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", obs_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _obs_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updated_at_changed()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationPhoto;->updated_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
