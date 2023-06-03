.class public Lorg/inaturalist/android/Observation;
.super Ljava/lang/Object;
.source "Observation.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "org.inaturalist.android.observation"

.field public static final CAPTIVE:Ljava/lang/String; = "captive"

.field public static final COMMENTS_COUNT:Ljava/lang/String; = "comments_count"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.observation"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.observation"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

.field public static final DEFAULT_SYNC_ORDER:Ljava/lang/String; = "CASE WHEN _created_at IS NULL THEN created_at ELSE _created_at END ASC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final GEOPRIVACY:Ljava/lang/String; = "geoprivacy"

.field public static final ICONIC_TAXON_ID:Ljava/lang/String; = "iconic_taxon_id"

.field public static final ICONIC_TAXON_NAME:Ljava/lang/String; = "iconic_taxon_name"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDENTIFICATIONS_COUNT:Ljava/lang/String; = "identifications_count"

.field public static final ID_PLEASE:Ljava/lang/String; = "id_please"

.field public static final IS_DELETED:Ljava/lang/String; = "is_deleted"

.field public static final LAST_COMMENTS_COUNT:Ljava/lang/String; = "last_comments_count"

.field public static final LAST_IDENTIFICATIONS_COUNT:Ljava/lang/String; = "last_identifications_count"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final OBSERVATIONS_URI_CODE:I = 0x4ff

.field public static final OBSERVATION_ID_URI_CODE:I = 0x48c

.field public static final OBSERVED_ON:Ljava/lang/String; = "observed_on"

.field public static final OBSERVED_ON_STRING:Ljava/lang/String; = "observed_on_string"

.field public static final OUT_OF_RANGE:Ljava/lang/String; = "out_of_range"

.field public static final OWNERS_IDENTIFICATION_FROM_VISION:Ljava/lang/String; = "owners_identification_from_vision"

.field public static final PLACE_GUESS:Ljava/lang/String; = "place_guess"

.field public static final POSITIONAL_ACCURACY:Ljava/lang/String; = "positional_accuracy"

.field public static final POSITIONING_DEVICE:Ljava/lang/String; = "positioning_device"

.field public static final POSITIONING_METHOD:Ljava/lang/String; = "positioning_method"

.field public static final PREFERRED_COMMON_NAME:Ljava/lang/String; = "preferred_common_name"

.field public static final PRIVATE_LATITUDE:Ljava/lang/String; = "private_latitude"

.field public static final PRIVATE_LONGITUDE:Ljava/lang/String; = "private_longitude"

.field public static final PRIVATE_PLACE_GUESS:Ljava/lang/String; = "private_place_guess"

.field public static final PRIVATE_POSITIONAL_ACCURACY:Ljava/lang/String; = "private_positional_accuracy"

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

.field public static final QUALITY_GRADE:Ljava/lang/String; = "quality_grade"

.field public static final RANK:Ljava/lang/String; = "rank"

.field public static final RANK_LEVEL:Ljava/lang/String; = "rank_level"

.field public static final SCIENTIFIC_NAME:Ljava/lang/String; = "scientific_name"

.field public static final SPECIES_GUESS:Ljava/lang/String; = "species_guess"

.field public static final SYNC_ORDER:Ljava/lang/String; = "_created_at ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "observations"

.field public static final TAG:Ljava/lang/String; = "Observation"

.field public static final TAXON_ID:Ljava/lang/String; = "taxon_id"

.field public static final TIME_OBSERVED_AT:Ljava/lang/String; = "time_observed_at"

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final USER_AGENT:Ljava/lang/String; = "user_agent"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_LOGIN:Ljava/lang/String; = "user_login"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final _CREATED_AT:Ljava/lang/String; = "_created_at"

.field public static final _SYNCED_AT:Ljava/lang/String; = "_synced_at"

.field public static final _UPDATED_AT:Ljava/lang/String; = "_updated_at"


# instance fields
.field public _created_at:Ljava/sql/Timestamp;

.field public _created_at_was:Ljava/sql/Timestamp;

.field public _id:Ljava/lang/Integer;

.field public _synced_at:Ljava/sql/Timestamp;

.field public _synced_at_was:Ljava/sql/Timestamp;

.field public _updated_at:Ljava/sql/Timestamp;

.field public _updated_at_was:Ljava/sql/Timestamp;

.field public captive:Ljava/lang/Boolean;

.field public captive_was:Ljava/lang/Boolean;

.field public comments:Lorg/inaturalist/android/SerializableJSONArray;

.field public comments_count:Ljava/lang/Integer;

.field public created_at:Ljava/sql/Timestamp;

.field public created_at_was:Ljava/sql/Timestamp;

.field public description:Ljava/lang/String;

.field public description_was:Ljava/lang/String;

.field public favorites:Lorg/inaturalist/android/SerializableJSONArray;

.field public field_values:Lorg/inaturalist/android/SerializableJSONArray;

.field public geoprivacy:Ljava/lang/String;

.field public geoprivacy_was:Ljava/lang/String;

.field public iconic_taxon_id:Ljava/lang/Integer;

.field public iconic_taxon_id_was:Ljava/lang/Integer;

.field public iconic_taxon_name:Ljava/lang/String;

.field public iconic_taxon_name_was:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public id_please:Ljava/lang/Boolean;

.field public id_please_was:Ljava/lang/Boolean;

.field public id_was:Ljava/lang/Integer;

.field public identifications:Lorg/inaturalist/android/SerializableJSONArray;

.field public identifications_count:Ljava/lang/Integer;

.field public is_deleted:Ljava/lang/Boolean;

.field public is_deleted_was:Ljava/lang/Boolean;

.field public last_comments_count:Ljava/lang/Integer;

.field public last_identifications_count:Ljava/lang/Integer;

.field public latitude:Ljava/lang/Double;

.field public latitude_was:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public longitude_was:Ljava/lang/Double;

.field public observed_on:Ljava/sql/Timestamp;

.field public observed_on_string:Ljava/lang/String;

.field public observed_on_string_was:Ljava/lang/String;

.field public observed_on_was:Ljava/sql/Timestamp;

.field public out_of_range:Ljava/lang/Boolean;

.field public out_of_range_was:Ljava/lang/Boolean;

.field public owners_identification_from_vision:Ljava/lang/Boolean;

.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/ObservationPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public place_guess:Ljava/lang/String;

.field public place_guess_was:Ljava/lang/String;

.field public positional_accuracy:Ljava/lang/Integer;

.field public positional_accuracy_was:Ljava/lang/Integer;

.field public positioning_device:Ljava/lang/String;

.field public positioning_device_was:Ljava/lang/String;

.field public positioning_method:Ljava/lang/String;

.field public positioning_method_was:Ljava/lang/String;

.field public preferred_common_name:Ljava/lang/String;

.field public private_latitude:Ljava/lang/Double;

.field public private_latitude_was:Ljava/lang/Double;

.field public private_longitude:Ljava/lang/Double;

.field public private_longitude_was:Ljava/lang/Double;

.field public private_place_guess:Ljava/lang/String;

.field public private_place_guess_was:Ljava/lang/String;

.field public private_positional_accuracy:Ljava/lang/Integer;

.field public private_positional_accuracy_was:Ljava/lang/Integer;

.field public projects:Lorg/inaturalist/android/SerializableJSONArray;

.field public quality_grade:Ljava/lang/String;

.field public quality_grade_was:Ljava/lang/String;

.field public rank:Ljava/lang/String;

.field public rank_level:Ljava/lang/Integer;

.field public scientific_name:Ljava/lang/String;

.field public species_guess:Ljava/lang/String;

.field public species_guess_was:Ljava/lang/String;

.field public taxon_id:Ljava/lang/Integer;

.field public taxon_id_was:Ljava/lang/Integer;

.field public time_observed_at:Ljava/sql/Timestamp;

.field public time_observed_at_was:Ljava/sql/Timestamp;

.field public updated_at:Ljava/sql/Timestamp;

.field public updated_at_was:Ljava/sql/Timestamp;

.field public user_agent:Ljava/lang/String;

.field public user_agent_was:Ljava/lang/String;

.field public user_id:Ljava/lang/Integer;

.field public user_id_was:Ljava/lang/Integer;

.field public user_login:Ljava/lang/String;

.field public user_login_was:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://org.inaturalist.android.observation/observations"

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0x2c

    .line 167
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_created_at"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "_synced_at"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "_updated_at"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "created_at"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "description"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "geoprivacy"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "iconic_taxon_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "iconic_taxon_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "id_please"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "latitude"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "longitude"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "observed_on"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "observed_on_string"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "out_of_range"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "captive"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "place_guess"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "private_place_guess"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "positional_accuracy"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "positioning_device"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "positioning_method"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "private_latitude"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "private_longitude"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "private_positional_accuracy"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "quality_grade"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "species_guess"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "preferred_common_name"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "taxon_id"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "time_observed_at"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "updated_at"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_agent"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_id"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string/jumbo v1, "user_login"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "identifications_count"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "comments_count"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "last_comments_count"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "last_identifications_count"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "is_deleted"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string/jumbo v1, "uuid"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "owners_identification_from_vision"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "scientific_name"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "rank_level"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "rank"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    .line 216
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_created_at"

    const-string v2, "_created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_synced_at"

    const-string v2, "_synced_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_updated_at"

    const-string v2, "_updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "created_at"

    const-string v2, "created_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "geoprivacy"

    const-string v2, "geoprivacy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "iconic_taxon_id"

    const-string v2, "iconic_taxon_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "iconic_taxon_name"

    const-string v2, "iconic_taxon_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "id_please"

    const-string v2, "id_please"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "observed_on"

    const-string v2, "observed_on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "observed_on_string"

    const-string v2, "observed_on_string"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "out_of_range"

    const-string v2, "out_of_range"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "captive"

    const-string v2, "captive"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "place_guess"

    const-string v2, "place_guess"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "private_place_guess"

    const-string v2, "private_place_guess"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "uuid"

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "owners_identification_from_vision"

    const-string v2, "owners_identification_from_vision"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "scientific_name"

    const-string v2, "scientific_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "rank_level"

    const-string v2, "rank_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "rank"

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "positional_accuracy"

    const-string v2, "positional_accuracy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "positioning_device"

    const-string v2, "positioning_device"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "positioning_method"

    const-string v2, "positioning_method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "private_latitude"

    const-string v2, "private_latitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "private_longitude"

    const-string v2, "private_longitude"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "private_positional_accuracy"

    const-string v2, "private_positional_accuracy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "quality_grade"

    const-string v2, "quality_grade"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "species_guess"

    const-string v2, "species_guess"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "preferred_common_name"

    const-string v2, "preferred_common_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "taxon_id"

    const-string/jumbo v2, "taxon_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "time_observed_at"

    const-string/jumbo v2, "time_observed_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "updated_at"

    const-string/jumbo v2, "updated_at"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "user_agent"

    const-string/jumbo v2, "user_agent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "user_id"

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "user_login"

    const-string/jumbo v2, "user_login"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "identifications_count"

    const-string v2, "identifications_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comments_count"

    const-string v2, "comments_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_identifications_count"

    const-string v2, "last_identifications_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_comments_count"

    const-string v2, "last_comments_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/inaturalist/android/Observation;->PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "is_deleted"

    const-string v2, "is_deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 267
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    const-string p1, "_created_at"

    .line 268
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    .line 269
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_created_at_was:Ljava/sql/Timestamp;

    const-string p1, "_synced_at"

    .line 270
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    .line 271
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_synced_at_was:Ljava/sql/Timestamp;

    const-string p1, "_updated_at"

    .line 272
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    .line 273
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->_updated_at_was:Ljava/sql/Timestamp;

    const-string p1, "created_at"

    .line 274
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    .line 275
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->created_at_was:Ljava/sql/Timestamp;

    const-string p1, "description"

    .line 276
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->description_was:Ljava/lang/String;

    const-string p1, "geoprivacy"

    .line 278
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    .line 279
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->geoprivacy_was:Ljava/lang/String;

    const-string p1, "iconic_taxon_id"

    .line 280
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    .line 281
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id_was:Ljava/lang/Integer;

    const-string p1, "iconic_taxon_name"

    .line 282
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    .line 283
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name_was:Ljava/lang/String;

    const-string p1, "id"

    .line 284
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 285
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->id_was:Ljava/lang/Integer;

    const-string p1, "id_please"

    .line 286
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    .line 287
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->id_please_was:Ljava/lang/Boolean;

    const-string p1, "latitude"

    .line 288
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 289
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    const-string p1, "longitude"

    .line 290
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 291
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    const-string p1, "observed_on"

    .line 292
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 293
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on_was:Ljava/sql/Timestamp;

    const-string p1, "observed_on_string"

    .line 294
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 295
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->observed_on_string_was:Ljava/lang/String;

    const-string p1, "out_of_range"

    .line 296
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    .line 297
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->out_of_range_was:Ljava/lang/Boolean;

    const-string p1, "captive"

    .line 298
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    .line 299
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->captive_was:Ljava/lang/Boolean;

    const-string p1, "place_guess"

    .line 300
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    .line 301
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->place_guess_was:Ljava/lang/String;

    const-string p1, "private_place_guess"

    .line 302
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    .line 303
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_place_guess_was:Ljava/lang/String;

    const-string/jumbo p1, "uuid"

    .line 304
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    const-string p1, "owners_identification_from_vision"

    .line 305
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    const-string p1, "scientific_name"

    .line 306
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    const-string p1, "rank_level"

    .line 307
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    const-string p1, "rank"

    .line 308
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    const-string p1, "positional_accuracy"

    .line 309
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 310
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positional_accuracy_was:Ljava/lang/Integer;

    const-string p1, "positioning_device"

    .line 311
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    .line 312
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_device_was:Ljava/lang/String;

    const-string p1, "positioning_method"

    .line 313
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->positioning_method_was:Ljava/lang/String;

    const-string p1, "private_latitude"

    .line 315
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 316
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_latitude_was:Ljava/lang/Double;

    const-string p1, "private_longitude"

    .line 317
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 318
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_longitude_was:Ljava/lang/Double;

    const-string p1, "private_positional_accuracy"

    .line 319
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    .line 320
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy_was:Ljava/lang/Integer;

    const-string p1, "quality_grade"

    .line 321
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    .line 322
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->quality_grade_was:Ljava/lang/String;

    const-string p1, "species_guess"

    .line 323
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 324
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->species_guess_was:Ljava/lang/String;

    const-string p1, "preferred_common_name"

    .line 325
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    const-string/jumbo p1, "taxon_id"

    .line 326
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    .line 327
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->taxon_id_was:Ljava/lang/Integer;

    const-string/jumbo p1, "time_observed_at"

    .line 328
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 329
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->time_observed_at_was:Ljava/sql/Timestamp;

    const-string/jumbo p1, "updated_at"

    .line 330
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    .line 331
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->updated_at_was:Ljava/sql/Timestamp;

    const-string/jumbo p1, "user_agent"

    .line 332
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    .line 333
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_agent_was:Ljava/lang/String;

    const-string/jumbo p1, "user_id"

    .line 334
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    .line 335
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_id_was:Ljava/lang/Integer;

    const-string/jumbo p1, "user_login"

    .line 336
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    .line 337
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->user_login_was:Ljava/lang/String;

    const-string p1, "is_deleted"

    .line 338
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->is_deleted:Ljava/lang/Boolean;

    .line 339
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->is_deleted:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->is_deleted_was:Ljava/lang/Boolean;

    const-string p1, "comments_count"

    .line 341
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    const-string p1, "identifications_count"

    .line 342
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    const-string p1, "last_comments_count"

    .line 343
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    const-string p1, "last_identifications_count"

    .line 344
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 5

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_created_at"

    .line 349
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    .line 350
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_created_at_was:Ljava/sql/Timestamp;

    const-string v0, "_synced_at"

    .line 351
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    .line 352
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_synced_at_was:Ljava/sql/Timestamp;

    const-string v0, "_updated_at"

    .line 353
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    .line 354
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->_updated_at_was:Ljava/sql/Timestamp;

    const-string v0, "created_at"

    .line 355
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    .line 356
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->created_at_was:Ljava/sql/Timestamp;

    const-string v0, "description"

    .line 357
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->description_was:Ljava/lang/String;

    const-string v0, "geoprivacy"

    .line 359
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy_was:Ljava/lang/String;

    const-string v0, "iconic_taxon_id"

    .line 361
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    .line 362
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id_was:Ljava/lang/Integer;

    const-string v0, "iconic_taxon_name"

    .line 363
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name_was:Ljava/lang/String;

    const-string v0, "id"

    .line 365
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 366
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id_was:Ljava/lang/Integer;

    const-string v0, "id_please"

    .line 367
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id_please_was:Ljava/lang/Boolean;

    const-string v0, "latitude"

    .line 369
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 370
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    const-string v0, "longitude"

    .line 371
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    const-string v0, "observed_on"

    .line 373
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 374
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_was:Ljava/sql/Timestamp;

    const-string v0, "observed_on_string"

    .line 375
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string_was:Ljava/lang/String;

    const-string v0, "out_of_range"

    .line 377
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    .line 378
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range_was:Ljava/lang/Boolean;

    const-string v0, "captive"

    .line 379
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    .line 380
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->captive_was:Ljava/lang/Boolean;

    const-string v0, "place_guess"

    .line 381
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess_was:Ljava/lang/String;

    const-string v0, "private_place_guess"

    .line 383
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess_was:Ljava/lang/String;

    const-string/jumbo v0, "uuid"

    .line 385
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    const-string v0, "owners_identification_from_vision"

    .line 386
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    const-string v0, "positional_accuracy"

    .line 387
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 388
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy_was:Ljava/lang/Integer;

    const-string v0, "positioning_device"

    .line 389
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device_was:Ljava/lang/String;

    const-string v0, "positioning_method"

    .line 391
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method_was:Ljava/lang/String;

    const-string v0, "private_latitude"

    .line 393
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 394
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude_was:Ljava/lang/Double;

    const-string v0, "private_longitude"

    .line 395
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 396
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude_was:Ljava/lang/Double;

    const-string v0, "private_positional_accuracy"

    .line 397
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    .line 398
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy_was:Ljava/lang/Integer;

    const-string v0, "quality_grade"

    .line 399
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade_was:Ljava/lang/String;

    const-string v0, "species_guess"

    .line 401
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess_was:Ljava/lang/String;

    const-string/jumbo v0, "taxon_id"

    .line 403
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    .line 404
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id_was:Ljava/lang/Integer;

    const-string/jumbo v0, "time_observed_at"

    .line 405
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 406
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at_was:Ljava/sql/Timestamp;

    const-string/jumbo v0, "updated_at"

    .line 407
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    .line 408
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at_was:Ljava/sql/Timestamp;

    const-string/jumbo v0, "user_agent"

    .line 409
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent_was:Ljava/lang/String;

    const-string/jumbo v0, "user_id"

    .line 411
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    .line 412
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_id_was:Ljava/lang/Integer;

    const-string/jumbo v0, "user_login"

    .line 413
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_login_was:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->is_deleted:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->is_deleted_was:Ljava/lang/Boolean;

    const-string v0, "comments"

    .line 417
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->comments:Lorg/inaturalist/android/SerializableJSONArray;

    const-string v0, "identifications"

    .line 418
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->identifications:Lorg/inaturalist/android/SerializableJSONArray;

    const-string v0, "faves"

    .line 419
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->favorites:Lorg/inaturalist/android/SerializableJSONArray;

    const/4 v0, 0x0

    .line 422
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    .line 424
    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "observation_photos"

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "observation_photos"

    goto :goto_0

    :cond_0
    const-string v2, "photos"

    :goto_0
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 425
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 426
    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 427
    new-instance v4, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v4, v3}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    const-string v3, "id"

    .line 428
    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v4, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    .line 429
    iget-object v3, p0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    iput-object v3, v4, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 431
    iget-object v3, v4, Lorg/inaturalist/android/ObservationPhoto;->photo_id:Ljava/lang/Integer;

    iput-object v3, v4, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    .line 432
    iget-object v3, p0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 435
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No value for observation_photos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const-string v1, "comments_count"

    .line 440
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    .line 441
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments:Lorg/inaturalist/android/SerializableJSONArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 443
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    .line 445
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    const-string v1, "identifications_count"

    .line 447
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    .line 448
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->identifications:Lorg/inaturalist/android/SerializableJSONArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->identifications:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 450
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->identifications:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    .line 452
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    const-string v1, "project_observations"

    .line 454
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->projects:Lorg/inaturalist/android/SerializableJSONArray;

    const-string v1, "observation_field_values"

    .line 455
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->field_values:Lorg/inaturalist/android/SerializableJSONArray;

    const/4 v1, 0x0

    .line 457
    iput-object v1, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    const-string/jumbo v1, "taxon"

    .line 458
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "common_name"

    .line 460
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "common_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_1
    const-string v2, "common_name"

    .line 462
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 464
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-string v2, "preferred_common_name"

    .line 467
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "preferred_common_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "preferred_common_name"

    .line 468
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v2, "name"

    .line 470
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    :goto_2
    const-string v2, "id"

    .line 474
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    :cond_6
    const-string v2, "iconic_taxon_name"

    .line 475
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "iconic_taxon_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    :cond_7
    const-string v2, "iconic_taxon_id"

    .line 476
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "iconic_taxon_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    :cond_8
    const-string v2, "rank_level"

    .line 478
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    const-string v2, "name"

    const-string v3, ""

    .line 479
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    const-string v2, "rank"

    .line 480
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    :cond_9
    const-string/jumbo v1, "user"

    .line 483
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v2, "id"

    .line 485
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    const-string v2, "login"

    .line 486
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    :cond_a
    const-string v1, "place"

    .line 489
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    const-string v1, "place"

    .line 490
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 491
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, ","

    .line 492
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 493
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 494
    iget-object v3, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v3, p0, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    .line 495
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 496
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    :cond_b
    const-string v1, "private_location"

    .line 500
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "private_location"

    .line 501
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 502
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, ","

    .line 503
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 504
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 505
    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iput-object v3, p0, Lorg/inaturalist/android/Observation;->private_latitude_was:Ljava/lang/Double;

    .line 506
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 507
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iput-object v1, p0, Lorg/inaturalist/android/Observation;->private_longitude_was:Ljava/lang/Double;

    :cond_c
    const-string v1, "location"

    .line 511
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "location"

    .line 512
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, ","

    .line 514
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 515
    array-length v1, p1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    aget-object v1, p1, v0

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    aget-object v1, p1, v2

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 516
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 517
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    .line 518
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 519
    iget-object p1, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    :cond_d
    return-void
.end method

.method private areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 583
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public static sqlCreate()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE observations (_id INTEGER PRIMARY KEY,_created_at INTEGER,_synced_at INTEGER,_updated_at INTEGER,created_at INTEGER,description TEXT,geoprivacy TEXT,iconic_taxon_id INTEGER,iconic_taxon_name TEXT,id INTEGER,id_please INTEGER,latitude REAL,longitude REAL,observed_on INTEGER,observed_on_string TEXT,out_of_range INTEGER,captive INTEGER,place_guess TEXT,private_place_guess TEXT,uuid TEXT,positional_accuracy INTEGER,positioning_device TEXT,positioning_method TEXT,private_latitude REAL,private_longitude REAL,private_positional_accuracy INTEGER,quality_grade TEXT,species_guess TEXT,preferred_common_name TEXT,taxon_id INTEGER,time_observed_at INTEGER,updated_at INTEGER,user_agent TEXT,user_id INTEGER,user_login TEXT,comments_count INTEGER,identifications_count INTEGER,last_comments_count INTEGER,last_identifications_count INTEGER,activity_viewed_at INTEGER,last_activity_at INTEGER,is_deleted INTEGER,owners_identification_from_vision INTEGER,scientific_name TEXT,rank_level INTEGER,rank TEXT);"

    return-object v0
.end method


# virtual methods
.method public _created_at_changed()Z
    .locals 2

    .line 846
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_created_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _synced_at_changed()Z
    .locals 2

    .line 847
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_synced_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public _updated_at_changed()Z
    .locals 2

    .line 848
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_updated_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public captive_changed()Z
    .locals 2

    .line 861
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->captive_was:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public created_at_changed()Z
    .locals 2

    .line 849
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->created_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public description_changed()Z
    .locals 2

    .line 850
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->description_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public equals(Lorg/inaturalist/android/Observation;)Z
    .locals 3

    .line 590
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iget-object v1, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 593
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 594
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 595
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 596
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 597
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 598
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 599
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    .line 600
    :cond_9
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    .line 601
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    .line 602
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    return v1

    .line 603
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 604
    :cond_d
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 605
    :cond_e
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 606
    :cond_f
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 607
    :cond_10
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 608
    :cond_11
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 609
    :cond_12
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 610
    :cond_13
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 611
    :cond_14
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    return v1

    .line 612
    :cond_15
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 613
    :cond_16
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 614
    :cond_17
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    .line 615
    :cond_18
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 616
    :cond_19
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 617
    :cond_1a
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 618
    :cond_1b
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    .line 619
    :cond_1c
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 620
    :cond_1d
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    .line 621
    :cond_1e
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 622
    :cond_1f
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    .line 623
    :cond_20
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    .line 624
    :cond_21
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    .line 625
    :cond_22
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 626
    :cond_23
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    return v1

    .line 627
    :cond_24
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Lorg/inaturalist/android/Observation;->areFieldsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v1

    :cond_25
    const/4 p1, 0x1

    return p1
.end method

.method public geoprivacy_changed()Z
    .locals 2

    .line 851
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->geoprivacy_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 722
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 723
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    const-string v1, "created_at"

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "description"

    .line 724
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "geoprivacy"

    .line 725
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconic_taxon_id"

    .line 726
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "iconic_taxon_name"

    .line 727
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    .line 728
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "id_please"

    .line 729
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "latitude"

    .line 730
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "longitude"

    .line 731
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 732
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-eqz v1, :cond_1

    const-string v1, "observed_on"

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v1, "observed_on_string"

    .line 733
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "out_of_range"

    .line 734
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "captive"

    .line 735
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "place_guess"

    .line 736
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "private_place_guess"

    .line 737
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uuid"

    .line 738
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "owners_identification_from_vision"

    .line 739
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "scientific_name"

    .line 740
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rank_level"

    .line 741
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    const/16 v2, 0x63

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "rank"

    .line 742
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positional_accuracy"

    .line 743
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "positioning_device"

    .line 744
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "positioning_method"

    .line 745
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "private_latitude"

    .line 746
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "private_longitude"

    .line 747
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "private_positional_accuracy"

    .line 748
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "quality_grade"

    .line 749
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "species_guess"

    .line 750
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "preferred_common_name"

    .line 751
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "taxon_id"

    .line 752
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 753
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "time_observed_at"

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_5

    const-string/jumbo v1, "updated_at"

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    const-string/jumbo v1, "user_agent"

    .line 755
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "user_id"

    .line 756
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "user_login"

    .line 757
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comments_count"

    .line 758
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "identifications_count"

    .line 759
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_comments_count"

    .line 760
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "last_identifications_count"

    .line 761
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "is_deleted"

    .line 762
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->is_deleted:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

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

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 769
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[description]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[geoprivacy]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[iconic_taxon_id]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[id_please]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[latitude]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string v3, ""

    :goto_0
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[longitude]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[observed_on_string]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_6
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[out_of_range]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_7
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[captive_flag]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_8
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    if-eqz v1, :cond_a

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[place_guess]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_a
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    if-eqz v1, :cond_b

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[uuid]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_b
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-eqz v1, :cond_d

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[owners_identification_from_vision]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    const-string v3, "false"

    :goto_3
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_d
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[positional_accuracy]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_e
    const-string v3, ""

    :goto_4
    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    if-eqz v1, :cond_f

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[positioning_device]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_f
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    if-eqz v1, :cond_10

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[positioning_method]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_10
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-eqz v1, :cond_11

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[private_latitude]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_11
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-eqz v1, :cond_12

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[private_longitude]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_12
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[private_positional_accuracy]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    :cond_13
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    if-eqz v1, :cond_14

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[quality_grade]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    :cond_14
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-eqz v1, :cond_15

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[species_guess]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_15
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[taxon_id]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_16
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    if-eqz v1, :cond_17

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "observation[user_agent]"

    iget-object v3, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .line 575
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 578
    :cond_0
    sget-object v0, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public iconic_taxon_id_changed()Z
    .locals 2

    .line 852
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iconic_taxon_name_changed()Z
    .locals 2

    .line 853
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public id_changed()Z
    .locals 2

    .line 854
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public id_please_changed()Z
    .locals 2

    .line 855
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->id_please_was:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDirty()Z
    .locals 2

    .line 882
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->_created_at_changed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 883
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->_synced_at_changed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 884
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->_updated_at_changed()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 885
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->created_at_changed()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 886
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->description_changed()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 887
    :cond_4
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->geoprivacy_changed()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 888
    :cond_5
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->iconic_taxon_id_changed()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 889
    :cond_6
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->iconic_taxon_name_changed()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 890
    :cond_7
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->id_changed()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 891
    :cond_8
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->id_please_changed()Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    .line 892
    :cond_9
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->latitude_changed()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 893
    :cond_a
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->longitude_changed()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 894
    :cond_b
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->observed_on_changed()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 895
    :cond_c
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->observed_on_string_changed()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 896
    :cond_d
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->out_of_range_changed()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 897
    :cond_e
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->captive_changed()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 898
    :cond_f
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->place_guess_changed()Z

    move-result v0

    if-eqz v0, :cond_10

    return v1

    .line 899
    :cond_10
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->private_place_guess_changed()Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 900
    :cond_11
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->positional_accuracy_changed()Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 901
    :cond_12
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->positioning_device_changed()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 902
    :cond_13
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->positioning_method_changed()Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 903
    :cond_14
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->private_latitude_changed()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 904
    :cond_15
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->private_longitude_changed()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 905
    :cond_16
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->private_positional_accuracy_changed()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 906
    :cond_17
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->quality_grade_changed()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 907
    :cond_18
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->species_guess_changed()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 908
    :cond_19
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->taxon_id_changed()Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 909
    :cond_1a
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->time_observed_at_changed()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    .line 910
    :cond_1b
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->updated_at_changed()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    .line 911
    :cond_1c
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->user_agent_changed()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 912
    :cond_1d
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->user_id_changed()Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    .line 913
    :cond_1e
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->user_login_changed()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 914
    :cond_1f
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->is_deleted_changed()Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public is_deleted_changed()Z
    .locals 2

    .line 878
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->is_deleted:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->is_deleted_was:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public latitude_changed()Z
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public longitude_changed()Z
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public merge(Lorg/inaturalist/android/Observation;)Z
    .locals 3

    .line 634
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v2}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    .line 637
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    .line 638
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    .line 639
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    .line 640
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    .line 641
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    .line 642
    :cond_0
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 643
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    .line 644
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 645
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 646
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 647
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 648
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    .line 649
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    .line 650
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    .line 651
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    .line 652
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    .line 653
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    .line 654
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    .line 655
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    .line 656
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    .line 657
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 658
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    .line 659
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    .line 660
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 661
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 662
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    .line 663
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    .line 664
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 665
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    .line 666
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 667
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    .line 668
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    .line 669
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    .line 670
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    .line 671
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    .line 672
    iget-object p1, p1, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 679
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_2

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    const/4 v0, 0x1

    .line 680
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    const/4 v0, 0x1

    .line 681
    :cond_3
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const/4 v0, 0x1

    .line 682
    :cond_4
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    if-nez v2, :cond_5

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 683
    :cond_5
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 684
    :cond_6
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 685
    :cond_7
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    if-nez v2, :cond_8

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 686
    :cond_8
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-nez v2, :cond_9

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-eqz v2, :cond_9

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    const/4 v0, 0x1

    .line 687
    :cond_9
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-nez v2, :cond_a

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-eqz v2, :cond_a

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    const/4 v0, 0x1

    .line 688
    :cond_a
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-nez v2, :cond_b

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-eqz v2, :cond_b

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    const/4 v0, 0x1

    .line 689
    :cond_b
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    const/4 v0, 0x1

    .line 690
    :cond_c
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    if-nez v2, :cond_d

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    if-eqz v2, :cond_d

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 691
    :cond_d
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 692
    :cond_e
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    if-nez v2, :cond_f

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    const/4 v0, 0x1

    .line 693
    :cond_f
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    const/4 v0, 0x1

    .line 694
    :cond_10
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    const/4 v0, 0x1

    .line 695
    :cond_11
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-nez v2, :cond_12

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-eqz v2, :cond_12

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 696
    :cond_12
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 697
    :cond_13
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    if-nez v2, :cond_14

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 698
    :cond_14
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    if-nez v2, :cond_15

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    const/4 v0, 0x1

    .line 699
    :cond_15
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-nez v2, :cond_16

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 700
    :cond_16
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    const/4 v0, 0x1

    .line 701
    :cond_17
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    if-nez v2, :cond_18

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    const/4 v0, 0x1

    .line 702
    :cond_18
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v2, :cond_19

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-eqz v2, :cond_19

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    const/4 v0, 0x1

    .line 703
    :cond_19
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v2, :cond_1a

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-eqz v2, :cond_1a

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    const/4 v0, 0x1

    .line 704
    :cond_1a
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    if-nez v2, :cond_1b

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 705
    :cond_1b
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    if-nez v2, :cond_1c

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    const/4 v0, 0x1

    .line 706
    :cond_1c
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-eqz v2, :cond_1d

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    const/4 v0, 0x1

    .line 707
    :cond_1d
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    if-nez v2, :cond_1e

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 708
    :cond_1e
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz v2, :cond_1f

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 709
    :cond_1f
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-nez v2, :cond_20

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_20

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    const/4 v0, 0x1

    .line 710
    :cond_20
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    if-nez v2, :cond_21

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_21

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    const/4 v0, 0x1

    .line 711
    :cond_21
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    if-nez v2, :cond_22

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    const/4 v0, 0x1

    .line 712
    :cond_22
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    if-nez v2, :cond_23

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 713
    :cond_23
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    if-nez v2, :cond_24

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    const/4 v0, 0x1

    .line 714
    :cond_24
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    if-nez v2, :cond_25

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    if-eqz v2, :cond_25

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 715
    :cond_25
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    if-nez v2, :cond_26

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    if-eqz v2, :cond_26

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method public observed_on_changed()Z
    .locals 2

    .line 858
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->observed_on_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public observed_on_string_changed()Z
    .locals 2

    .line 859
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->observed_on_string_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public out_of_range_changed()Z
    .locals 2

    .line 860
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->out_of_range_was:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public place_guess_changed()Z
    .locals 2

    .line 862
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->place_guess_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public positional_accuracy_changed()Z
    .locals 2

    .line 864
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->positional_accuracy_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public positioning_device_changed()Z
    .locals 2

    .line 865
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->positioning_device_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public positioning_method_changed()Z
    .locals 2

    .line 866
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->positioning_method_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public private_latitude_changed()Z
    .locals 2

    .line 867
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_latitude_was:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public private_longitude_changed()Z
    .locals 2

    .line 868
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_longitude_was:Ljava/lang/Double;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public private_place_guess_changed()Z
    .locals 2

    .line 863
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_place_guess_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public private_positional_accuracy_changed()Z
    .locals 2

    .line 869
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public quality_grade_changed()Z
    .locals 2

    .line 870
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->quality_grade_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public species_guess_changed()Z
    .locals 2

    .line 871
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->species_guess_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public taxon_id_changed()Z
    .locals 2

    .line 872
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->taxon_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public time_observed_at_changed()Z
    .locals 2

    .line 873
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->time_observed_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 531
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v1, "_created_at"

    .line 532
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_synced_at"

    .line 533
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "_updated_at"

    .line 534
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "created_at"

    .line 535
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "description"

    .line 536
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "geoprivacy"

    .line 537
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "iconic_taxon_id"

    .line 538
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "iconic_taxon_name"

    .line 539
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "id"

    .line 540
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "id_please"

    .line 541
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->id_please:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "latitude"

    .line 542
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "longitude"

    .line 543
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "observed_on"

    .line 544
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "observed_on_string"

    .line 545
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "out_of_range"

    .line 546
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->out_of_range:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "captive_flag"

    .line 547
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "place_guess"

    .line 548
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "uuid"

    .line 549
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "owners_identification_from_vision"

    .line 550
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "scientific_name"

    .line 551
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rank_level"

    .line 552
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "rank"

    .line 553
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "positional_accuracy"

    .line 554
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "positioning_device"

    .line 555
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_device:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "positioning_method"

    .line 556
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->positioning_method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "private_latitude"

    .line 557
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "private_longitude"

    .line 558
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "private_positional_accuracy"

    .line 559
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "quality_grade"

    .line 560
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "species_guess"

    .line 561
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "taxon_id"

    .line 562
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "time_observed_at"

    .line 563
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "updated_at"

    .line 564
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "user_agent"

    .line 565
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "user_id"

    .line 566
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "user_login"

    .line 567
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "identifications_count"

    .line 568
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "comment_count"

    .line 569
    iget-object v2, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Observation(id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _synced_at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", _updated_at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unviewedUpdates()Z
    .locals 3

    .line 930
    invoke-virtual {p0}, Lorg/inaturalist/android/Observation;->updatesCount()Ljava/lang/Integer;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 934
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    .line 935
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public updated_at_changed()Z
    .locals 2

    .line 874
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->updated_at_was:Ljava/sql/Timestamp;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updatesCount()Ljava/lang/Integer;
    .locals 3

    .line 920
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    .line 922
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 923
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 925
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 926
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public user_agent_changed()Z
    .locals 2

    .line 875
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_agent:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->user_agent_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public user_id_changed()Z
    .locals 2

    .line 876
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->user_id_was:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public user_login_changed()Z
    .locals 2

    .line 877
    iget-object v0, p0, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/Observation;->user_login_was:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
