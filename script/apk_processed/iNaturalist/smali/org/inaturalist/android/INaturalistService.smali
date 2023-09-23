.class public Lorg/inaturalist/android/INaturalistService;
.super Landroid/app/IntentService;
.source "INaturalistService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/INaturalistService$IOnLocation;,
        Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
        Lorg/inaturalist/android/INaturalistService$LoginType;
    }
.end annotation


# static fields
.field public static ACTION_ADD_COMMENT:Ljava/lang/String; = null

.field public static ACTION_ADD_FAVORITE:Ljava/lang/String; = null

.field public static ACTION_ADD_IDENTIFICATION:Ljava/lang/String; = null

.field public static ACTION_ADD_OBSERVATION_TO_PROJECT:Ljava/lang/String; = null

.field public static ACTION_ADD_PROJECT_FIELD:Ljava/lang/String; = null

.field public static ACTION_AGREE_ANNOTATION:Ljava/lang/String; = null

.field public static ACTION_AGREE_DATA_QUALITY:Ljava/lang/String; = null

.field public static ACTION_AGREE_ID:Ljava/lang/String; = null

.field public static ACTION_ALL_GUIDES_RESULT:Ljava/lang/String; = null

.field public static final ACTION_CHECK_LIST_RESULT:Ljava/lang/String; = "action_check_list_result"

.field public static ACTION_CLEAR_OLD_PHOTOS_CACHE:Ljava/lang/String; = null

.field public static ACTION_DELETE_ANNOTATION:Ljava/lang/String; = null

.field public static ACTION_DELETE_ANNOTATION_VOTE:Ljava/lang/String; = null

.field public static ACTION_DELETE_COMMENT:Ljava/lang/String; = null

.field public static ACTION_DELETE_DATA_QUALITY_VOTE:Ljava/lang/String; = null

.field public static ACTION_DELETE_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String; = null

.field public static ACTION_DISAGREE_ANNOTATION:Ljava/lang/String; = null

.field public static ACTION_DISAGREE_DATA_QUALITY:Ljava/lang/String; = null

.field public static ACTION_EXPLORE_GET_IDENTIFIERS:Ljava/lang/String; = null

.field public static ACTION_EXPLORE_GET_OBSERVATIONS:Ljava/lang/String; = null

.field public static ACTION_EXPLORE_GET_OBSERVERS:Ljava/lang/String; = null

.field public static ACTION_EXPLORE_GET_SPECIES:Ljava/lang/String; = null

.field public static ACTION_FEATURED_PROJECTS_RESULT:Ljava/lang/String; = null

.field public static ACTION_FIRST_SYNC:Ljava/lang/String; = null

.field public static ACTION_FLAG_OBSERVATION_AS_CAPTIVE:Ljava/lang/String; = null

.field public static ACTION_FULL_NAME:Ljava/lang/String; = null

.field public static ACTION_GET_ADDITIONAL_OBS:Ljava/lang/String; = null

.field public static ACTION_GET_ADDITIONAL_OBS_RESULT:Ljava/lang/String; = null

.field public static ACTION_GET_ALL_ATTRIBUTES:Ljava/lang/String; = null

.field public static ACTION_GET_ALL_GUIDES:Ljava/lang/String; = null

.field public static ACTION_GET_AND_SAVE_OBSERVATION:Ljava/lang/String; = null

.field public static ACTION_GET_AND_SAVE_OBSERVATION_RESULT:Ljava/lang/String; = null

.field public static ACTION_GET_ATTRIBUTES_FOR_TAXON:Ljava/lang/String; = null

.field public static ACTION_GET_CHECK_LIST:Ljava/lang/String; = null

.field public static ACTION_GET_CURRENT_LOCATION:Ljava/lang/String; = null

.field public static ACTION_GET_DATA_QUALITY_METRICS:Ljava/lang/String; = null

.field public static ACTION_GET_FEATURED_PROJECTS:Ljava/lang/String; = null

.field public static ACTION_GET_HISTOGRAM:Ljava/lang/String; = null

.field public static ACTION_GET_JOINED_PROJECTS:Ljava/lang/String; = null

.field public static ACTION_GET_JOINED_PROJECTS_ONLINE:Ljava/lang/String; = null

.field public static ACTION_GET_LIFE_LIST:Ljava/lang/String; = null

.field public static ACTION_GET_MISSIONS_BY_TAXON:Ljava/lang/String; = null

.field public static ACTION_GET_MY_GUIDES:Ljava/lang/String; = null

.field public static ACTION_GET_NEARBY_PROJECTS:Ljava/lang/String; = null

.field public static ACTION_GET_NEAR_BY_GUIDES:Ljava/lang/String; = null

.field public static ACTION_GET_NEWS:Ljava/lang/String; = null

.field public static ACTION_GET_OBSERVATION:Ljava/lang/String; = null

.field public static ACTION_GET_POPULAR_FIELD_VALUES:Ljava/lang/String; = null

.field public static ACTION_GET_PROJECT_IDENTIFIERS:Ljava/lang/String; = null

.field public static ACTION_GET_PROJECT_NEWS:Ljava/lang/String; = null

.field public static ACTION_GET_PROJECT_OBSERVATIONS:Ljava/lang/String; = null

.field public static ACTION_GET_PROJECT_OBSERVERS:Ljava/lang/String; = null

.field public static ACTION_GET_PROJECT_SPECIES:Ljava/lang/String; = null

.field public static ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String; = null

.field public static ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String; = null

.field public static ACTION_GET_TAXON:Ljava/lang/String; = null

.field public static ACTION_GET_TAXON_NEW:Ljava/lang/String; = null

.field public static final ACTION_GET_TAXON_NEW_RESULT:Ljava/lang/String; = "action_get_taxon_new_result"

.field public static ACTION_GET_TAXON_OBSERVATION_BOUNDS:Ljava/lang/String; = null

.field public static final ACTION_GET_TAXON_RESULT:Ljava/lang/String; = "action_get_taxon_result"

.field public static ACTION_GET_TAXON_SUGGESTIONS:Ljava/lang/String; = null

.field public static final ACTION_GET_TAXON_SUGGESTIONS_RESULT:Ljava/lang/String; = "action_get_taxon_suggestions_result"

.field public static ACTION_GET_USER_DETAILS:Ljava/lang/String; = null

.field public static ACTION_GET_USER_DETAILS_RESULT:Ljava/lang/String; = null

.field public static ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String; = null

.field public static ACTION_GET_USER_OBSERVATIONS:Ljava/lang/String; = null

.field public static ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String; = null

.field public static ACTION_GET_USER_UPDATES:Ljava/lang/String; = null

.field public static ACTION_GUIDE_ID:Ljava/lang/String; = null

.field public static ACTION_GUIDE_XML:Ljava/lang/String; = null

.field public static ACTION_GUIDE_XML_RESULT:Ljava/lang/String; = null

.field public static ACTION_ID_CANNOT_BE_IMPROVED_VOTE:Ljava/lang/String; = null

.field public static ACTION_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String; = null

.field public static ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String; = null

.field public static ACTION_JOIN_PROJECT:Ljava/lang/String; = null

.field public static ACTION_LEAVE_PROJECT:Ljava/lang/String; = null

.field public static ACTION_MY_GUIDES_RESULT:Ljava/lang/String; = null

.field public static ACTION_NEARBY:Ljava/lang/String; = null

.field public static ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String; = null

.field public static ACTION_NEAR_BY_GUIDES_RESULT:Ljava/lang/String; = null

.field public static ACTION_NEWS_RESULT:Ljava/lang/String; = null

.field public static ACTION_OBSERVATION_RESULT:Ljava/lang/String; = null

.field public static ACTION_PASSIVE_SYNC:Ljava/lang/String; = null

.field public static ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String; = null

.field public static ACTION_PROJECT_NEWS_RESULT:Ljava/lang/String; = null

.field public static ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String; = null

.field public static ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String; = null

.field public static ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String; = null

.field public static ACTION_PULL_OBSERVATIONS:Ljava/lang/String; = null

.field public static ACTION_REFRESH_CURRENT_USER_SETTINGS:Ljava/lang/String; = null

.field public static ACTION_REGISTER_USER:Ljava/lang/String; = null

.field public static ACTION_REGISTER_USER_RESULT:Ljava/lang/String; = null

.field public static ACTION_REMOVE_FAVORITE:Ljava/lang/String; = null

.field public static ACTION_REMOVE_ID:Ljava/lang/String; = null

.field public static ACTION_REMOVE_OBSERVATION_FROM_PROJECT:Ljava/lang/String; = null

.field public static ACTION_RESTORE_ID:Ljava/lang/String; = null

.field public static ACTION_SEARCH_PLACES:Ljava/lang/String; = null

.field public static ACTION_SEARCH_TAXA:Ljava/lang/String; = null

.field public static ACTION_SEARCH_USERS:Ljava/lang/String; = null

.field public static ACTION_SEARCH_USER_OBSERVATIONS:Ljava/lang/String; = null

.field public static ACTION_SET_ANNOTATION_VALUE:Ljava/lang/String; = null

.field public static ACTION_SYNC:Ljava/lang/String; = null

.field public static ACTION_SYNC_COMPLETE:Ljava/lang/String; = null

.field public static ACTION_TAXA_FOR_GUIDE:Ljava/lang/String; = null

.field public static ACTION_TAXA_FOR_GUIDES_RESULT:Ljava/lang/String; = null

.field public static ACTION_UPDATE_COMMENT:Ljava/lang/String; = null

.field public static ACTION_UPDATE_CURRENT_USER_DETAILS:Ljava/lang/String; = null

.field public static ACTION_UPDATE_ID:Ljava/lang/String; = null

.field public static ACTION_UPDATE_USER_DETAILS:Ljava/lang/String; = null

.field public static ACTION_UPDATE_USER_DETAILS_RESULT:Ljava/lang/String; = null

.field public static ACTION_UPDATE_USER_NETWORK:Ljava/lang/String; = null

.field public static ACTION_USERNAME:Ljava/lang/String; = null

.field public static ACTION_USER_BIO:Ljava/lang/String; = null

.field public static ACTION_USER_DELETE_PIC:Ljava/lang/String; = null

.field public static ACTION_USER_EMAIL:Ljava/lang/String; = null

.field public static ACTION_USER_PASSWORD:Ljava/lang/String; = null

.field public static ACTION_USER_PIC:Ljava/lang/String; = null

.field public static ACTION_VIEWED_UPDATE:Ljava/lang/String; = null

.field public static final ADD_OBSERVATION_TO_PROJECT_RESULT:Ljava/lang/String; = "add_observation_to_project_result"

.field public static final AGREE_ANNOTATION_RESULT:Ljava/lang/String; = "agree_annotation_result"

.field public static final AGREE_DATA_QUALITY_RESULT:Ljava/lang/String; = "agree_data_quality_result"

.field public static API_HOST:Ljava/lang/String; = "https://api.inaturalist.org/v1"

.field public static final ATTRIBUTE_ID:Ljava/lang/String; = "attribute_id"

.field public static final AUTHENTICATION_FAILED:Ljava/lang/String; = "authentication_failed"

.field public static AUTH_NOTIFICATION:Ljava/lang/Integer; = null

.field public static final CHECK_LIST_ID:Ljava/lang/String; = "check_list_id"

.field public static final CHECK_LIST_RESULT:Ljava/lang/String; = "check_list_result"

.field public static final COMMENT_BODY:Ljava/lang/String; = "comment_body"

.field public static final COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final DATA_QUALITY_METRICS_RESULT:Ljava/lang/String; = "data_quality_metrics_result"

.field public static final DELETE_ANNOTATION_RESULT:Ljava/lang/String; = "delete_annotation_result"

.field public static final DELETE_ANNOTATION_VOTE_RESULT:Ljava/lang/String; = "delete_annotation_vote_result"

.field public static final DELETE_DATA_QUALITY_VOTE_RESULT:Ljava/lang/String; = "delete_data_quality_vote_result"

.field public static final DELETE_ID_CAN_BE_IMPROVED_VOTE_RESULT:Ljava/lang/String; = "delete_id_can_be_improved_vote_result"

.field public static final DISAGREEMENT:Ljava/lang/String; = "disagreement"

.field public static final DISAGREE_ANNOTATION_RESULT:Ljava/lang/String; = "disagree_annotation_result"

.field public static final DISAGREE_DATA_QUALITY_RESULT:Ljava/lang/String; = "disagree_data_quality_result"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EXPAND_LOCATION_BY_DEGREES:Ljava/lang/String; = "expand_location_by_degrees"

.field public static final EXPLORE_DEFAULT_RESULTS_PER_PAGE:I = 0x1e

.field public static final EXPLORE_GET_IDENTIFIERS_RESULT:Ljava/lang/String; = "explore_get_identifiers_result"

.field public static final EXPLORE_GET_OBSERVATIONS_RESULT:Ljava/lang/String; = "explore_get_observations_result"

.field public static final EXPLORE_GET_OBSERVERS_RESULT:Ljava/lang/String; = "explore_get_observers_result"

.field public static final EXPLORE_GET_SPECIES_RESULT:Ljava/lang/String; = "explore_get_species_result"

.field public static final FIELD_ID:Ljava/lang/String; = "field_id"

.field public static final FILTERS:Ljava/lang/String; = "filters"

.field public static final FIRST_SYNC:Ljava/lang/String; = "first_sync"

.field public static final FOLLOWING:Ljava/lang/String; = "following"

.field public static final FROM_VISION:Ljava/lang/String; = "from_vision"

.field public static final GET_ALL_ATTRIBUTES_RESULT:Ljava/lang/String; = "get_all_attributes_result"

.field public static final GET_ATTRIBUTES_FOR_TAXON_RESULT:Ljava/lang/String; = "get_attributes_for_taxon_result"

.field public static final GET_CURRENT_LOCATION_RESULT:Ljava/lang/String; = "get_current_location_result"

.field public static GUIDES_RESULT:Ljava/lang/String; = null

.field public static final GUIDE_XML_RESULT:Ljava/lang/String; = "guide_xml_result"

.field public static final HISTOGRAM_RESULT:Ljava/lang/String; = "histogram_result"

.field public static HOST:Ljava/lang/String; = "https://www.inaturalist.org"

.field public static final IDENTIFICATIONS:Ljava/lang/String; = "identifications"

.field public static final IDENTIFICATIONS_RESULT:Ljava/lang/String; = "identifications_result"

.field public static final IDENTIFICATION_BODY:Ljava/lang/String; = "id_body"

.field public static final IDENTIFICATION_ID:Ljava/lang/String; = "identification_id"

.field public static final ID_CANNOT_BE_IMPROVED_RESULT:Ljava/lang/String; = "id_cannot_be_improved_result"

.field public static final ID_CAN_BE_IMPROVED_RESULT:Ljava/lang/String; = "id_can_be_improved_result"

.field private static final INITIAL_SYNC_OBSERVATION_COUNT:I = 0x64

.field public static final IS_SHARED_ON_APP:Ljava/lang/String; = "is_shared_on_app"

.field private static final JWT_TOKEN_EXPIRATION_MINS:I = 0x19

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LICENSE:Ljava/lang/String; = "license"

.field public static final LIFE_LIST:Ljava/lang/String; = "life_list"

.field public static final LIFE_LIST_ID:Ljava/lang/String; = "life_list_id"

.field public static final LIFE_LIST_RESULT:Ljava/lang/String; = "life_list_result"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final METRIC:Ljava/lang/String; = "metric"

.field public static final MISSIONS_BY_TAXON_RESULT:Ljava/lang/String; = "missions_by_taxon_result"

.field public static final NEAR_BY_OBSERVATIONS_PER_PAGE:I = 0x19

.field public static final NETWORK_SITE_ID:Ljava/lang/String; = "network_site_id"

.field public static final OBSERVATIONS:Ljava/lang/String; = "observations"

.field public static final OBSERVATION_COUNT:Ljava/lang/String; = "observation_count"

.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_JSON_RESULT:Ljava/lang/String; = "observation_json_result"

.field public static final OBSERVATION_RESULT:Ljava/lang/String; = "observation_result"

.field public static final OBSERVATION_SYNC_PROGRESS:Ljava/lang/String; = "observation_sync_progress"

.field public static final OBSERVED_ON:Ljava/lang/String; = "observed_on"

.field public static final OBS_PHOTO_FILENAME:Ljava/lang/String; = "obs_photo_filename"

.field public static final OBS_PHOTO_URL:Ljava/lang/String; = "obs_photo_url"

.field private static final OLD_PHOTOS_CACHE_EXPIRATION_HOURS:I = 0xa8

.field public static final PAGE_NUMBER:Ljava/lang/String; = "page_number"

.field public static final PAGE_SIZE:Ljava/lang/String; = "page_size"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final POPULAR_FIELD_VALUES_RESULT:Ljava/lang/String; = "popular_field_values_result"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final PROJECTS_RESULT:Ljava/lang/String; = "projects_result"

.field public static final PROJECT_ID:Ljava/lang/String; = "project_id"

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final RECOMMENDED_MISSIONS_RESULT:Ljava/lang/String; = "recommended_missions_result"

.field public static final REFRESH_CURRENT_USER_SETTINGS_RESULT:Ljava/lang/String; = "refresh_current_user_settings_result"

.field public static final REGISTER_USER_ERROR:Ljava/lang/String; = "error"

.field public static final REGISTER_USER_STATUS:Ljava/lang/String; = "status"

.field public static final RESEARCH_GRADE:Ljava/lang/String; = "research_grade"

.field public static final RESULTS:Ljava/lang/String; = "results"

.field public static final SEARCH_PLACES_RESULT:Ljava/lang/String; = "search_places_result"

.field public static final SEARCH_TAXA_RESULT:Ljava/lang/String; = "search_taxa_result"

.field public static final SEARCH_USERS_RESULT:Ljava/lang/String; = "search_users_result"

.field public static final SET_ANNOTATION_VALUE_RESULT:Ljava/lang/String; = "set_annotation_value_result"

.field public static final SPECIES_COUNT_RESULT:Ljava/lang/String; = "species_count_result"

.field public static final SUCCESS:Ljava/lang/String; = "success"

.field public static final SYNC_CANCELED:Ljava/lang/String; = "sync_canceled"

.field public static final SYNC_FAILED:Ljava/lang/String; = "sync_failed"

.field public static SYNC_OBSERVATIONS_NOTIFICATION:Ljava/lang/Integer; = null

.field public static SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer; = null

.field public static TAG:Ljava/lang/String; = "INaturalistService"

.field public static TAXA_GUIDE_RESULT:Ljava/lang/String; = null

.field public static final TAXON:Ljava/lang/String; = "taxon"

.field public static final TAXON_ID:Ljava/lang/String; = "taxon_id"

.field public static final TAXON_OBSERVATION_BOUNDS_RESULT:Ljava/lang/String; = "taxon_observation_bounds_result"

.field public static final TAXON_RESULT:Ljava/lang/String; = "taxon_result"

.field public static final TAXON_SUGGESTIONS:Ljava/lang/String; = "taxon_suggestions"

.field public static final UPDATES_FOLLOWING_RESULT:Ljava/lang/String; = "updates_following_results"

.field public static final UPDATES_RESULT:Ljava/lang/String; = "updates_results"

.field public static final UPDATE_CURRENT_USER_DETAILS_RESULT:Ljava/lang/String; = "update_current_user_details_result"

.field public static final USER:Ljava/lang/String; = "user"

.field public static final USERNAME:Ljava/lang/String; = "username"

.field public static USER_AGENT:Ljava/lang/String; = null

.field public static final USER_DETAILS_RESULT:Ljava/lang/String; = "user_details_result"

.field public static final USER_OBSERVATIONS_RESULT:Ljava/lang/String; = "user_observations_result"

.field public static final USER_SEARCH_OBSERVATIONS_RESULT:Ljava/lang/String; = "user_search_observations_result"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final VALUE_ID:Ljava/lang/String; = "value_id"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mCredentials:Ljava/lang/String;

.field private mCurrentObservationProgress:F

.field private mHandler:Landroid/os/Handler;

.field private mIsClearingOldPhotosCache:Z

.field private mIsStopped:Z

.field private mIsSyncing:Z

.field private mLastStatusCode:I

.field private mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLogin:Ljava/lang/String;

.field private mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

.field private mNearByObservationsUrl:Ljava/lang/String;

.field private mObservationLock:Ljava/lang/Object;

.field private mPassive:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mProjectFieldValues:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lorg/inaturalist/android/ProjectFieldValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectObservations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/SerializableJSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseErrors:Lorg/json/JSONArray;

.field private mResponseHeaders:[Lorg/apache/http/Header;

.field private mTotalProgressForObservation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iNaturalist/%VERSION% (Build %BUILD%; Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.version"

    .line 223
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; SDK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistService;->USER_AGENT:Ljava/lang/String;

    const-string v0, "action_get_histogram"

    .line 228
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_HISTOGRAM:Ljava/lang/String;

    const-string v0, "action_get_popular_field_values"

    .line 229
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_POPULAR_FIELD_VALUES:Ljava/lang/String;

    const-string v0, "register_user"

    .line 230
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER:Ljava/lang/String;

    const-string v0, "passive_sync"

    .line 231
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PASSIVE_SYNC:Ljava/lang/String;

    const-string v0, "get_additional_observations"

    .line 232
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS:Ljava/lang/String;

    const-string v0, "add_identification"

    .line 233
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_IDENTIFICATION:Ljava/lang/String;

    const-string v0, "add_project_field"

    .line 234
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_PROJECT_FIELD:Ljava/lang/String;

    const-string v0, "add_favorite"

    .line 235
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_FAVORITE:Ljava/lang/String;

    const-string v0, "remove_favorite"

    .line 236
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_FAVORITE:Ljava/lang/String;

    const-string v0, "get_taxon"

    .line 237
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON:Ljava/lang/String;

    const-string v0, "search_taxa"

    .line 238
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_TAXA:Ljava/lang/String;

    const-string v0, "search_users"

    .line 239
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USERS:Ljava/lang/String;

    const-string v0, "search_places"

    .line 240
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_PLACES:Ljava/lang/String;

    const-string v0, "get_taxon_new"

    .line 241
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_NEW:Ljava/lang/String;

    const-string v0, "get_taxon_suggestions"

    .line 242
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_SUGGESTIONS:Ljava/lang/String;

    const-string v0, "first_sync"

    .line 243
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    const-string v0, "pull_observations"

    .line 244
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    const-string v0, "get_observation"

    .line 245
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    const-string v0, "get_and_save_observation"

    .line 246
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION:Ljava/lang/String;

    const-string v0, "flag_observation_as_captive"

    .line 247
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FLAG_OBSERVATION_AS_CAPTIVE:Ljava/lang/String;

    const-string v0, "get_check_list"

    .line 248
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_CHECK_LIST:Ljava/lang/String;

    const-string v0, "join_project"

    .line 249
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_JOIN_PROJECT:Ljava/lang/String;

    const-string v0, "leave_project"

    .line 250
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_LEAVE_PROJECT:Ljava/lang/String;

    const-string v0, "get_joined_projects"

    .line 251
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS:Ljava/lang/String;

    const-string v0, "get_joined_projects_online"

    .line 252
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS_ONLINE:Ljava/lang/String;

    const-string v0, "get_nearby_projects"

    .line 253
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEARBY_PROJECTS:Ljava/lang/String;

    const-string v0, "get_featured_projects"

    .line 254
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_FEATURED_PROJECTS:Ljava/lang/String;

    const-string v0, "add_observation_to_project"

    .line 255
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_OBSERVATION_TO_PROJECT:Ljava/lang/String;

    const-string v0, "remove_observation_from_project"

    .line 256
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_OBSERVATION_FROM_PROJECT:Ljava/lang/String;

    const-string v0, "get_all_guides"

    .line 257
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ALL_GUIDES:Ljava/lang/String;

    const-string v0, "get_my_guides"

    .line 258
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MY_GUIDES:Ljava/lang/String;

    const-string v0, "get_near_by_guides"

    .line 259
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEAR_BY_GUIDES:Ljava/lang/String;

    const-string v0, "get_taxa_for_guide"

    .line 260
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_TAXA_FOR_GUIDE:Ljava/lang/String;

    const-string v0, "get_user_details"

    .line 261
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS:Ljava/lang/String;

    const-string/jumbo v0, "update_user_details"

    .line 262
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS:Ljava/lang/String;

    const-string v0, "clear_old_photos_cache"

    .line 263
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_CLEAR_OLD_PHOTOS_CACHE:Ljava/lang/String;

    const-string v0, "get_attributes_for_taxon"

    .line 264
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ATTRIBUTES_FOR_TAXON:Ljava/lang/String;

    const-string v0, "get_all_attributes"

    .line 265
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ALL_ATTRIBUTES:Ljava/lang/String;

    const-string v0, "delete_annotation"

    .line 266
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION:Ljava/lang/String;

    const-string v0, "agree_annotation"

    .line 267
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ANNOTATION:Ljava/lang/String;

    const-string v0, "agree_data_quality"

    .line 268
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_DATA_QUALITY:Ljava/lang/String;

    const-string v0, "disagree_data_quality"

    .line 269
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_DATA_QUALITY:Ljava/lang/String;

    const-string v0, "delete_id_can_be_improved_vote"

    .line 270
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    const-string v0, "id_can_be_improved_vote"

    .line 271
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    const-string v0, "id_cannot_be_improved_vote"

    .line 272
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ID_CANNOT_BE_IMPROVED_VOTE:Ljava/lang/String;

    const-string v0, "delete_annotation_vote"

    .line 273
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION_VOTE:Ljava/lang/String;

    const-string v0, "delete_data_quality_vote"

    .line 274
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_DATA_QUALITY_VOTE:Ljava/lang/String;

    const-string v0, "get_data_quality_metrics"

    .line 275
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_DATA_QUALITY_METRICS:Ljava/lang/String;

    const-string v0, "set_annotation_value"

    .line 276
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SET_ANNOTATION_VALUE:Ljava/lang/String;

    const-string v0, "disagree_annotation"

    .line 277
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_ANNOTATION:Ljava/lang/String;

    const-string v0, "get_project_news"

    .line 278
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_NEWS:Ljava/lang/String;

    const-string v0, "get_news"

    .line 279
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEWS:Ljava/lang/String;

    const-string v0, "get_project_observations"

    .line 280
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVATIONS:Ljava/lang/String;

    const-string v0, "get_project_species"

    .line 281
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_SPECIES:Ljava/lang/String;

    const-string v0, "get_project_observers"

    .line 282
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVERS:Ljava/lang/String;

    const-string v0, "get_project_identifiers"

    .line 283
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_IDENTIFIERS:Ljava/lang/String;

    const-string v0, "get_project_observations_result"

    .line 284
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String;

    const-string v0, "get_project_news_result"

    .line 285
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_NEWS_RESULT:Ljava/lang/String;

    const-string v0, "get_news_result"

    .line 286
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEWS_RESULT:Ljava/lang/String;

    const-string v0, "get_project_species_result"

    .line 287
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String;

    const-string v0, "get_project_observers_result"

    .line 288
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String;

    const-string v0, "get_project_identifiers_result"

    .line 289
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String;

    const-string v0, "sync"

    .line 290
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    const-string v0, "nearby"

    .line 291
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    const-string v0, "agree_id"

    .line 292
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ID:Ljava/lang/String;

    const-string v0, "remove_id"

    .line 293
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_ID:Ljava/lang/String;

    const-string/jumbo v0, "update_id"

    .line 294
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_ID:Ljava/lang/String;

    const-string v0, "restore_id"

    .line 295
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_RESTORE_ID:Ljava/lang/String;

    const-string v0, "guide_id"

    .line 296
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_ID:Ljava/lang/String;

    const-string v0, "add_comment"

    .line 297
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_COMMENT:Ljava/lang/String;

    const-string/jumbo v0, "update_comment"

    .line 298
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_COMMENT:Ljava/lang/String;

    const-string v0, "delete_comment"

    .line 299
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_COMMENT:Ljava/lang/String;

    const-string v0, "sync_complete"

    .line 300
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    const-string v0, "get_and_save_observation_result"

    .line 301
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION_RESULT:Ljava/lang/String;

    const-string v0, "get_additional_obs_result"

    .line 302
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS_RESULT:Ljava/lang/String;

    const-string v0, "action_observation_result"

    .line 303
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    const-string v0, "joined_projects_result"

    .line 304
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    const-string v0, "nearby_projects_result"

    .line 305
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY_PROJECTS_RESULT:Ljava/lang/String;

    const-string v0, "featured_projects_result"

    .line 306
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FEATURED_PROJECTS_RESULT:Ljava/lang/String;

    const-string v0, "all_guides_results"

    .line 307
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_ALL_GUIDES_RESULT:Ljava/lang/String;

    const-string v0, "my_guides_results"

    .line 308
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_MY_GUIDES_RESULT:Ljava/lang/String;

    const-string v0, "near_by_guides_results"

    .line 309
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEAR_BY_GUIDES_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "taxa_for_guides_results"

    .line 310
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_TAXA_FOR_GUIDES_RESULT:Ljava/lang/String;

    const-string v0, "get_user_details_result"

    .line 311
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "update_user_details_result"

    .line 312
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS_RESULT:Ljava/lang/String;

    const-string v0, "guide_xml_result"

    .line 313
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML_RESULT:Ljava/lang/String;

    const-string v0, "guide_xml"

    .line 314
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML:Ljava/lang/String;

    const-string v0, "guides_result"

    .line 315
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->GUIDES_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "username"

    .line 316
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USERNAME:Ljava/lang/String;

    const-string v0, "full_name"

    .line 317
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_FULL_NAME:Ljava/lang/String;

    const-string/jumbo v0, "user_bio"

    .line 318
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_BIO:Ljava/lang/String;

    const-string/jumbo v0, "user_password"

    .line 319
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PASSWORD:Ljava/lang/String;

    const-string/jumbo v0, "user_email"

    .line 320
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_EMAIL:Ljava/lang/String;

    const-string/jumbo v0, "user_pic"

    .line 321
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PIC:Ljava/lang/String;

    const-string/jumbo v0, "user_delete_pic"

    .line 322
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_DELETE_PIC:Ljava/lang/String;

    const-string v0, "register_user_result"

    .line 323
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "taxa_guide_result"

    .line 324
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->TAXA_GUIDE_RESULT:Ljava/lang/String;

    const-string v0, "get_specific_user_details"

    .line 325
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    const-string v0, "refresh_current_user_settings"

    .line 326
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REFRESH_CURRENT_USER_SETTINGS:Ljava/lang/String;

    const-string/jumbo v0, "update_current_user_details"

    .line 327
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_CURRENT_USER_DETAILS:Ljava/lang/String;

    const-string v0, "get_current_location"

    .line 328
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_CURRENT_LOCATION:Ljava/lang/String;

    const-string v0, "get_life_list"

    .line 329
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_LIFE_LIST:Ljava/lang/String;

    const-string v0, "get_species_count"

    .line 330
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String;

    const-string v0, "get_user_identifications"

    .line 331
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String;

    const-string v0, "get_user_udpates"

    .line 332
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    const-string v0, "explore_get_observations"

    .line 333
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVATIONS:Ljava/lang/String;

    const-string v0, "explore_get_species"

    .line 334
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_SPECIES:Ljava/lang/String;

    const-string v0, "explore_get_identifiers"

    .line 335
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_IDENTIFIERS:Ljava/lang/String;

    const-string v0, "explore_get_observers"

    .line 336
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVERS:Ljava/lang/String;

    const-string/jumbo v0, "viewed_update"

    .line 337
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_VIEWED_UPDATE:Ljava/lang/String;

    const-string v0, "get_user_observations"

    .line 338
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_OBSERVATIONS:Ljava/lang/String;

    const-string v0, "get_recommended_missions"

    .line 339
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String;

    const-string v0, "get_missions_by_taxon"

    .line 340
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MISSIONS_BY_TAXON:Ljava/lang/String;

    const-string v0, "search_user_observations"

    .line 341
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USER_OBSERVATIONS:Ljava/lang/String;

    const-string v0, "get_taxon_observation_bounds"

    .line 342
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_OBSERVATION_BOUNDS:Ljava/lang/String;

    const-string/jumbo v0, "update_user_network"

    .line 343
    sput-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_NETWORK:Ljava/lang/String;

    const/4 v0, 0x1

    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistService;->SYNC_OBSERVATIONS_NOTIFICATION:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistService;->SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/inaturalist/android/INaturalistService;->AUTH_NOTIFICATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INaturalistService"

    .line 384
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lorg/inaturalist/android/INaturalistService;->mIsStopped:Z

    const/4 v1, 0x0

    .line 367
    iput-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mResponseHeaders:[Lorg/apache/http/Header;

    .line 372
    iput v0, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    .line 373
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mObservationLock:Ljava/lang/Object;

    .line 1707
    iput v0, p0, Lorg/inaturalist/android/INaturalistService;->mTotalProgressForObservation:I

    const/4 v0, 0x0

    .line 1708
    iput v0, p0, Lorg/inaturalist/android/INaturalistService;->mCurrentObservationProgress:F

    .line 386
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->getNearbyObservations(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/INaturalistService;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;Ljava/lang/String;Ljava/lang/Integer;F)Lorg/inaturalist/android/BetterJSONObject;
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/INaturalistService;->getMissions(Landroid/location/Location;Ljava/lang/String;Ljava/lang/Integer;F)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->getNearByGuides(Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/INaturalistService;Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->getNearByProjects(Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/INaturalistService;)Landroid/location/Location;
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->getLastKnownLocationFromClient()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/INaturalistService;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/INaturalistService;)Landroid/location/Location;
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->getLocationFromGPS()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method private addComment(ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2829
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "comment[parent_id]"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "comment[parent_type]"

    const-string v2, "Observation"

    invoke-direct {p1, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2831
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "comment[body]"

    invoke-direct {p1, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/comments.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    return-void
.end method

.method private addFavorite(I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/votes/vote/observation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {p0, p1, v1}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2623
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2625
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private addIdentification(IILjava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "identification[observation_id]"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "identification[taxon_id]"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 2698
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "identification[body]"

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    :cond_0
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "identification[disagreement]"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2700
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "identification[vision]"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/identifications.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2707
    :try_start_0
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string p1, "observation"

    .line 2708
    invoke-virtual {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2709
    new-instance p2, Lorg/inaturalist/android/Observation;

    new-instance p3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p2, p3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 2711
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2716
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2717
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p3

    if-nez p3, :cond_2

    .line 2718
    new-instance p3, Lorg/inaturalist/android/Observation;

    invoke-direct {p3, p1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 2719
    invoke-virtual {p3, p2}, Lorg/inaturalist/android/Observation;->merge(Lorg/inaturalist/android/Observation;)Z

    move-result p4

    .line 2720
    invoke-virtual {p3}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object p5

    .line 2721
    iget-object v0, p3, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, p2}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "_synced_at"

    .line 2725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2729
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p5, p4, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2732
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2734
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private addObservationToProject(II)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3911
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3915
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/project_observations.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3918
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "project_observation[observation_id]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3919
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "project_observation[project_id]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3920
    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3927
    :cond_1
    :try_start_0
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 3929
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private addProjectField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "%s/observation_fields/%d.json"

    const/4 v2, 0x2

    .line 4525
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return v0

    .line 4529
    :cond_0
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 4530
    new-instance p1, Lorg/inaturalist/android/ProjectField;

    invoke-direct {p1, v1}, Lorg/inaturalist/android/ProjectField;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 4532
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectField;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 4537
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method

.method private addProjectFields(Lorg/json/JSONArray;)V
    .locals 8

    .line 3832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 3834
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 3836
    :try_start_0
    new-instance v5, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 3837
    new-instance v6, Lorg/inaturalist/android/ProjectField;

    invoke-direct {v6, v5}, Lorg/inaturalist/android/ProjectField;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 3838
    iget-object v5, v6, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3839
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    goto :goto_2

    :catch_0
    move-exception v4

    move v7, v5

    move-object v5, v4

    move v4, v7

    goto :goto_1

    :catch_1
    move-exception v5

    .line 3841
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eq v4, v2, :cond_1

    .line 3847
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v2, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(project_id IS NOT NULL) and (project_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3850
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 3851
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ProjectField;

    .line 3852
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectField;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    return-void
.end method

.method private agreeAnnotation(Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/votes/vote/annotation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1940
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :try_start_0
    const-string/jumbo p2, "vote"

    const-string v3, "bad"

    .line 1943
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string p2, "id"

    .line 1944
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1950
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1951
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 1956
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1957
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    return-object v2

    :cond_2
    :goto_1
    return-object v2

    .line 1946
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private agreeDataQualityMetric(Ljava/lang/Integer;Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/%d/quality/%s"

    const/4 v1, 0x3

    .line 2040
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2042
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "agree"

    if-eqz p3, :cond_0

    const-string/jumbo p3, "true"

    goto :goto_0

    :cond_0
    const-string p3, "false"

    .line 2045
    :goto_0
    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "id"

    .line 2046
    invoke-virtual {v1, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "metric"

    .line 2047
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2053
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2054
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 2059
    :cond_1
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 2060
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v2

    :cond_2
    :goto_1
    return-object v2

    :catch_1
    move-exception p1

    .line 2049
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private agreeIdentification(II)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2635
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "identification[observation_id]"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "identification[taxon_id]"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/identifications.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2642
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2644
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p2

    :cond_0
    return-object p2
.end method

.method private checkForCancelSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/CancelSyncException;
        }
    .end annotation

    .line 2597
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getCancelSync()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/inaturalist/android/CancelSyncException;

    invoke-direct {v0}, Lorg/inaturalist/android/CancelSyncException;-><init>()V

    throw v0
.end method

.method private clearOldCachedPhotos()V
    .locals 9

    .line 3190
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 3193
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_updated_at = _synced_at AND _synced_at IS NOT NULL AND id IS NOT NULL AND _updated_at < ? AND photo_filename IS NOT NULL AND observation_id IS NOT NULL"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 3197
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const-string v7, "position ASC, id ASC, _id ASC"

    .line 3193
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3199
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3200
    new-instance v2, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 3201
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3203
    iget-object v4, v2, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 3207
    :try_start_0
    iget-object v4, v2, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v1}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3210
    new-instance v5, Lorg/inaturalist/android/Observation;

    new-instance v6, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v6, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    const/4 v4, 0x0

    .line 3211
    :goto_1
    iget-object v6, v5, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 3212
    iget-object v6, v5, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v6, v6, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 3213
    iget-object v6, v5, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v6, v6, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    iget-object v7, v2, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3215
    iget-object v5, v5, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v4, v4, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    iput-object v4, v2, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 3224
    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 3230
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 3235
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3237
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3241
    :cond_4
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP - clearOldCachedPhotos - Setting _SYNCED_AT - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 3242
    iput-object v3, v2, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    .line 3243
    invoke-virtual {v2}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_synced_at"

    .line 3244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3245
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v2}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3248
    iget-object v2, v2, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->warmUpImageCache(Ljava/lang/String;)V

    .line 3250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 3253
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "delete"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 4622
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private deleteAnnotation(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/annotations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2085
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2086
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2091
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 2092
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteAnnotationVote(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/votes/unvote/annotation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1966
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1967
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1972
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1973
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteComment(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/comments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    return-void
.end method

.method private deleteDataQualityMetricVote(Ljava/lang/Integer;Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/%d/quality/%s?id=%d&metric=%s"

    const/4 v1, 0x5

    .line 2067
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 p1, 0x4

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2069
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2070
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2075
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 2076
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method private deleteIdCanBeImprovedVote(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/votes/unvote/observation/%d?id=%d&scope=needs_id"

    const/4 v1, 0x3

    .line 2007
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2009
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2010
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2015
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 2016
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private deleteObservationPhotos(Lorg/inaturalist/android/Observation;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2506
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v3, "is_deleted = 1 AND _observation_id = ?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 2509
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "position ASC, id ASC, _id ASC"

    .line 2506
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2513
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2514
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2515
    new-instance v1, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2517
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteObservationPhotos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "::::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v2, v1, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_1

    .line 2519
    iget-object v2, v1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2520
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteObservationPhotos: Deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/observation_photos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2523
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteObservationPhotos: Deletion error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iget v2, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 2526
    :cond_0
    sget-object p1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "deleteObservationPhotos: Not a 404 error"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2528
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1

    .line 2533
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 2535
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "id = ? or _id = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-object v8, v1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 2536
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    iget-object v1, v1, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 2535
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2537
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteObservationPhotos: Deleted from DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 2541
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2544
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    return v6
.end method

.method private deleteObservations()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2551
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_deleted = 1 AND user_login = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2557
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteObservations: Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2560
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v2, 0x7f10012e

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2565
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2566
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 2567
    new-instance v2, Lorg/inaturalist/android/Observation;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 2568
    sget-object v4, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteObservations: Deleting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/observations/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2575
    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2571
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2572
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 2579
    :cond_2
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteObservations: Deleted IDs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2583
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "is_deleted = 1"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2585
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observation_id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-static {v1, v5}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2586
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observation_id in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-static {v1, v6}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2587
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "observation_id in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-static {v1, v7}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 2589
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteObservations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    const/4 v0, 0x1

    return v0
.end method

.method private downloadToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 5426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 5428
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5429
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 5430
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 5431
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x400

    .line 5434
    new-array p2, p2, [B

    .line 5435
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 5436
    invoke-virtual {v2, p2, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 5439
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 5441
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :catch_1
    return v0
.end method

.method private ensureCredentials()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 4866
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4871
    :cond_0
    iget-boolean v0, p0, Lorg/inaturalist/android/INaturalistService;->mPassive:Z

    if-eqz v0, :cond_2

    .line 4875
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 4876
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistService;->stopForeground(Z)V

    goto :goto_0

    .line 4878
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->stopSelf()V

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4872
    :cond_2
    new-instance v0, Lorg/inaturalist/android/INaturalistService$AuthenticationException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$1;)V

    throw v0
.end method

.method private get(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4639
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private get(Ljava/lang/String;Z)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "get"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 4643
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private getAdditionalUserObservations(I)I
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 4025
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 4030
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "last_downloaded_id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4032
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v4, 0x7fffffff

    if-nez v2, :cond_2

    .line 4033
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(is_deleted = 0 OR is_deleted is NULL) AND (user_login = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4039
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 4040
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 4041
    new-instance v2, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string v5, "id"

    .line 4042
    invoke-virtual {v2, v5}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 4044
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4046
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 4050
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/observations?user_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&per_page="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&id_below="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4052
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4053
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 4054
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&locale="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    .line 4057
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 4059
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4060
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 4062
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "results"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4063
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    .line 4067
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 4068
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 4069
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v10, "_id = ?"

    new-array v11, v0, [Ljava/lang/String;

    .line 4072
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    const-string v12, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    .line 4069
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-ge v6, v5, :cond_3

    move v5, v6

    .line 4079
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 4080
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4083
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4085
    :cond_5
    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/INaturalistService;->syncJson(Lorg/json/JSONArray;Z)V

    .line 4087
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 4088
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_downloaded_id"

    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "last_downloaded_id"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 4090
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_downloaded_id"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4093
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4095
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1

    :cond_7
    return v1
.end method

.method private getAllAttributes()Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2099
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2100
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/controlled_terms?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2105
    invoke-direct {p0, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2106
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2111
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "results"

    .line 2112
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 2113
    :cond_1
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getAllGuides()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3655
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 3656
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_host_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/guides.json?per_page=200&page=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3661
    invoke-direct {p0, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3663
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v1
.end method

.method private getAndDownloadObservation(I)Lorg/inaturalist/android/Observation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2915
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2918
    :cond_0
    new-instance v1, Lorg/inaturalist/android/Observation;

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 2921
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2922
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    .line 2923
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    .line 2924
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    .line 2926
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2927
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2928
    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/INaturalistService;->syncJson(Lorg/json/JSONArray;Z)V

    return-object v1
.end method

.method private getAnonymousJWTToken()Ljava/lang/String;
    .locals 7

    const v0, 0x7f1001de

    .line 4651
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4655
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "application"

    const-string v3, "android"

    .line 4656
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "exp"

    .line 4657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4659
    invoke-static {}, Lio/jsonwebtoken/Jwts;->builder()Lio/jsonwebtoken/JwtBuilder;

    move-result-object v2

    .line 4660
    invoke-interface {v2, v1}, Lio/jsonwebtoken/JwtBuilder;->setClaims(Ljava/util/Map;)Lio/jsonwebtoken/JwtBuilder;

    move-result-object v1

    sget-object v2, Lio/jsonwebtoken/SignatureAlgorithm;->HS512:Lio/jsonwebtoken/SignatureAlgorithm;

    .line 4661
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/jsonwebtoken/JwtBuilder;->signWith(Lio/jsonwebtoken/SignatureAlgorithm;[B)Lio/jsonwebtoken/JwtBuilder;

    move-result-object v0

    .line 4662
    invoke-interface {v0}, Lio/jsonwebtoken/JwtBuilder;->compact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttributesForTaxon(Lorg/json/JSONObject;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2120
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2121
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ancestor_ids"

    .line 2122
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    .line 2127
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v3, v6, :cond_1

    .line 2128
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    .line 2129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%d,"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2131
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/controlled_terms/for_taxon?taxon_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ttl=-1&locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2135
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2136
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2141
    :cond_2
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "results"

    .line 2142
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    .line 2143
    :cond_3
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_4
    :goto_1
    return-object v2
.end method

.method private getCheckList(I)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "notification"

    .line 3936
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3937
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3938
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/lists/%d.json?per_page=50&locale=%s"

    const/4 v2, 0x3

    .line 3940
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3942
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3949
    :cond_0
    :try_start_0
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "listed_taxa"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3951
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3952
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1
.end method

.method private getCurrentUserDetails()Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users/me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3300
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3303
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 3304
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "results"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 3305
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 3307
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getDataQualityMetrics(Ljava/lang/Integer;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/%d/quality_metrics?id=%d"

    const/4 v1, 0x3

    .line 2023
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v4, 0x2

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2025
    invoke-direct {p0, p1, v2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2026
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2031
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "results"

    .line 2032
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 2033
    :cond_1
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getExploreResults(Ljava/lang/String;Lorg/inaturalist/android/ExploreSearchFilters;IILjava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 3440
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3441
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s/observations%s?locale=%s&page=%d&per_page=%d&ordered_by=%s&order=desc&return_bounds=true&%s"

    const/4 v3, 0x7

    .line 3442
    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    .line 3446
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p1

    const/4 p1, 0x4

    .line 3447
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v3, p1

    const/4 p1, 0x5

    if-nez p5, :cond_2

    const-string p5, ""

    :cond_2
    aput-object p5, v3, p1

    const/4 p1, 0x6

    .line 3449
    invoke-virtual {p2}, Lorg/inaturalist/android/ExploreSearchFilters;->toUrlQueryString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    .line 3442
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3451
    invoke-direct {p0, p1, v5}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 3453
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_4

    return-object v0

    .line 3455
    :cond_4
    :try_start_0
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 3457
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private getFeaturedProjects()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3790
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 3791
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_site_id_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/projects?featured=true&site_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3794
    invoke-direct {p0, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3797
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3803
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "results"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3810
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3813
    :try_start_1
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3814
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3815
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3816
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-lez v3, :cond_1

    .line 3818
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "joined"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 3821
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3827
    :cond_2
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v1

    :catch_1
    move-exception v0

    .line 3805
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 3806
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object v0
.end method

.method private getGuideXML(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "notification"

    .line 3257
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3258
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3259
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/guides/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3264
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 3265
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.allow-circular-redirects"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 3266
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 3268
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 3270
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 3272
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    .line 3275
    new-array v3, v3, [B

    .line 3276
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 3277
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 3281
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 3284
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 3285
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3288
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3291
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method private getHistogram(IZ)Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/histogram?taxon_id=%d&"

    const/4 v1, 0x2

    .line 1813
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "quality_grade=research"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1818
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "verifiable=true"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1821
    :goto_0
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 1822
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1829
    :cond_1
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1830
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p2

    :cond_2
    :goto_1
    return-object p2
.end method

.method private getJWTToken()Ljava/lang/String;
    .locals 8

    .line 4668
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "iNaturalistPreferences"

    .line 4669
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    .line 4670
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "jwt_token"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4671
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "jwt_token_expiration"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 4673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x5dc

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 4676
    :cond_2
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/users/api_token.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4677
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 4680
    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "api_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4683
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "jwt_token"

    .line 4684
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v4, "jwt_token_expiration"

    .line 4685
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 4686
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    .line 4690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method private getJoinedProjects()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3992
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3995
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/projects/user/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 3997
    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 3998
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 4004
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4006
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "project"

    .line 4007
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "joined"

    .line 4008
    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 4009
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v5, "project_observation_fields"

    .line 4012
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/inaturalist/android/INaturalistService;->addProjectFields(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 4015
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4019
    :cond_2
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, v3}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method private getJoinedProjectsOffline()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 7

    .line 3966
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 3968
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    const-string v6, "_id DESC"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3970
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    .line 3973
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3974
    new-instance v3, Lorg/inaturalist/android/Project;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/Project;-><init>(Landroid/database/Cursor;)V

    .line 3975
    invoke-virtual {v3}, Lorg/inaturalist/android/Project;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    const-string v4, "joined"

    const/4 v5, 0x1

    .line 3977
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3978
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 3980
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3983
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3986
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3988
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v1
.end method

.method private getLastKnownLocationFromClient()Landroid/location/Location;
    .locals 4

    .line 5305
    :try_start_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5307
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v0, 0x0

    .line 5310
    :goto_0
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastKnownLocationFromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 5313
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->getLocationFromGPS()Landroid/location/Location;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method private getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V
    .locals 4

    .line 5320
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->isLocationEnabled(Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5321
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "getLocation: Location not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/INaturalistService$11;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$11;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 5332
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 5334
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocation: resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 5338
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/INaturalistService$12;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$12;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5345
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 5348
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 5349
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/INaturalistService$14;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$14;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    .line 5350
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/INaturalistService$13;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$13;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    .line 5366
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 5379
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 5380
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mLocationClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    .line 5385
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/INaturalistService$15;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$15;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5390
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method private getLocationFromGPS()Landroid/location/Location;
    .locals 4

    .line 5290
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 5291
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x0

    .line 5292
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5295
    :cond_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 5296
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocationFromGPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getMissions(Landroid/location/Location;Ljava/lang/String;Ljava/lang/Integer;F)Lorg/inaturalist/android/BetterJSONObject;
    .locals 11

    .line 3541
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3542
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/species_counts?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&verifiable=true&hrank=species&oauth_application_id=2,3"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v5, p4, v5

    if-nez v5, :cond_0

    .line 3547
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&lat="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "&lng="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3551
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&nelat=%f&nelng=%f&swlat=%f&swlng=%f"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 3552
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    float-to-double v9, p4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v6, v3

    .line 3553
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v6, v4

    .line 3554
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v6, v2

    .line 3555
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v6, v1

    .line 3551
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 3560
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&unobserved_by_user_id="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p3, :cond_2

    .line 3564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&taxon_id="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3568
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 3569
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 3570
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&month=%d,%d,%d"

    new-array p4, v1, [Ljava/lang/Object;

    add-int/lit8 v0, p2, -0x1

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->modulo(II)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v3

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, v4

    invoke-direct {p0, p2, v1}, Lorg/inaturalist/android/INaturalistService;->modulo(II)I

    move-result p2

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v2

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3574
    :try_start_0
    invoke-direct {p0, p1, v3}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_3

    return-object p2

    .line 3580
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-nez p3, :cond_4

    return-object p2

    .line 3582
    :cond_4
    :try_start_1
    new-instance p3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 3584
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p2

    :catch_1
    move-exception p1

    .line 3576
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    return-object p2
.end method

.method private getMyGuides()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3668
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 3669
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_host_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/guides.json?by=you&per_page=200"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3672
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 3674
    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3681
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    const/4 v1, 0x0

    .line 3686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3687
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3689
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 3690
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 3692
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3698
    :cond_2
    invoke-static {p0}, Lorg/inaturalist/android/GuideXML;->getAllOfflineGuides(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 3699
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3701
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/GuideXML;

    .line 3702
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 3703
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v5, "id"

    .line 3709
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "title"

    .line 3710
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "description"

    .line 3711
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    .line 3714
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3717
    :goto_4
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 3720
    :cond_4
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v1
.end method

.method private getNearByGuides(Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3726
    sget-object p1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v0, "Current place is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1

    .line 3730
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 3731
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 3733
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 3734
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inat_host_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/guides.json?latitude=%s&longitude=%s&per_page=200"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3737
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3741
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method private getNearByProjects(Landroid/location/Location;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 3748
    sget-object p1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v0, "Current place is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1

    .line 3752
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 3753
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 3755
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 3756
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inat_host_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/projects.json?latitude=%s&longitude=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3760
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3765
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1

    .line 3769
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3772
    :try_start_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id = \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3773
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3774
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 3775
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-lez v3, :cond_2

    .line 3777
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "joined"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3780
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3786
    :cond_3
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method private getNearbyObservations(Landroid/content/Intent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 4543
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "minx"

    .line 4544
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "maxx"

    .line 4545
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "miny"

    .line 4546
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "maxy"

    .line 4547
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "lat"

    .line 4548
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "lng"

    .line 4549
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "clear_map_limit"

    const/4 v7, 0x0

    .line 4550
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "page"

    .line 4551
    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "per_page"

    const/16 v10, 0x19

    .line 4552
    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 4554
    sget-object v10, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const-string/jumbo v10, "username"

    .line 4555
    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4556
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/observations/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "username"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".json?extra=observation_photos"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 4558
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/observations.json?extra=observation_photos"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4561
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "&captive=false&page="

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "&per_page="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "taxon_id"

    .line 4563
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4564
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&taxon_id="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "taxon_id"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    const-string v9, "location_id"

    .line 4566
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&place_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "location_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 4568
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 4569
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmpl-double v6, v9, v11

    if-nez v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v6, v9, v11

    if-eqz v6, :cond_4

    .line 4570
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&lat="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&lng="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 4573
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&swlat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&nelat="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4575
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&swlng="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4576
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&nelng="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    :goto_1
    const-string v4, "project_id"

    .line 4580
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&projects[]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "project_id"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4584
    :cond_6
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4585
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 4586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4589
    sget-object v4, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Near by observations URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mNearByObservationsUrl:Ljava/lang/String;

    .line 4593
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v4

    .line 4594
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "minx"

    .line 4595
    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "maxx"

    .line 4596
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "miny"

    .line 4597
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "maxy"

    .line 4598
    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-nez v4, :cond_7

    const-string v0, "error"

    const v1, 0x7f100106

    .line 4600
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4605
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mNearByObservationsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4607
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v4}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4608
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method private getNews()Lorg/inaturalist/android/SerializableJSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/posts/for_user.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3605
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    .line 3606
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v1
.end method

.method private getObservationJson(IZ)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "notification"

    .line 2892
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2893
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2894
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/observations/%d?locale=%s&include_new_projects=true"

    const/4 v2, 0x3

    .line 2896
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2898
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2899
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2903
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2904
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    .line 2906
    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2908
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method private getOutputMediaFileUri(Lorg/inaturalist/android/Observation;)Landroid/net/Uri;
    .locals 5

    .line 4983
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4984
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "observation_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->created_at:Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "title"

    .line 4986
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getPopularFieldValues(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/popular_field_values?taxon_id=%d&verifiable=true"

    const/4 v1, 0x2

    .line 1837
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1839
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1840
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1847
    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1848
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getProjectIdentifiers(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/observations/identifiers?project_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3631
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3633
    :try_start_0
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 3634
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3636
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3637
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1
.end method

.method private getProjectNews(I)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/projects/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/journal.json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3612
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3613
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0
.end method

.method private getProjectObservations(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3506
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3507
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations?project_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&per_page=50&locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3509
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3510
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1

    .line 3512
    :cond_0
    :try_start_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3514
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3515
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1
.end method

.method private getProjectObservers(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/observations/observers?project_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3619
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3621
    :try_start_0
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 3622
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3624
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3625
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1
.end method

.method private getProjectSpecies(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3590
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3591
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/species_counts?project_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3593
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3595
    :try_start_0
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 3596
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3598
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3599
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1
.end method

.method private getTaxaForGuide(Ljava/lang/Integer;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/guide_taxa.json?guide_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3643
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3645
    :try_start_0
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 3646
    :cond_0
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "guide_taxa"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3648
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3649
    new-instance p1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    return-object p1
.end method

.method private getTaxon(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2150
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2151
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s/taxa/%d.json?locale=%s"

    const/4 v2, 0x3

    .line 2152
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2154
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2155
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2162
    :cond_0
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getTaxonNew(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1884
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1885
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/taxa/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "?locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1888
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1889
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1896
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v2, "results"

    .line 1897
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const-string v2, "results"

    .line 1898
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 1900
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getTaxonObservationsBounds(Ljava/lang/Integer;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3

    .line 3520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/observations?per_page=1&return_bounds=true&taxon_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3524
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    return-object v1

    .line 3530
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3532
    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 3533
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    const-string/jumbo v2, "total_bounds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3535
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 3526
    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    return-object v1
.end method

.method private getTaxonSuggestions(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/sql/Timestamp;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1855
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1856
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 1857
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, v1

    .line 1858
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/computervision/score_image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1861
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "locale"

    invoke-direct {v2, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "lat"

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v0, "lng"

    invoke-virtual {p3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_1

    .line 1864
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string p3, "observed_on"

    invoke-direct {p2, p3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    :cond_1
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string p3, "image"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "post"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    .line 1867
    invoke-direct/range {v2 .. v9}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1868
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 1875
    :cond_2
    :try_start_0
    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "results"

    .line 1876
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object v1

    .line 1877
    :cond_3
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method private getTotalProgressForObservation(Lorg/inaturalist/android/Observation;)I
    .locals 18

    move-object/from16 v0, p1

    .line 1727
    iget-object v1, v0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object v4, v0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v1, v4}, Ljava/sql/Timestamp;->after(Ljava/sql/Timestamp;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1732
    :goto_1
    iget-object v4, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v8, "((_synced_at IS NULL) OR (_updated_at > _synced_at AND _synced_at IS NOT NULL AND id IS NOT NULL) OR (is_deleted = 1)) AND ((observation_id = ?) OR (_observation_id = ?))"

    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    .line 1738
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    iget-object v10, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    const-string v10, "position ASC, id ASC, _id ASC"

    .line 1734
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1740
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1741
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    const-string v15, "((_synced_at IS NULL) OR (_updated_at > _synced_at AND _synced_at IS NOT NULL)) AND ((observation_id = ?) OR (observation_id = ?))"

    new-array v5, v11, [Ljava/lang/String;

    .line 1748
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v7, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v17, "_id DESC"

    move-object/from16 v16, v5

    .line 1744
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1750
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1751
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    const-string v15, "((is_deleted = 1) OR (is_new = 1)) AND ((observation_id = ?) OR (observation_id = ?))"

    new-array v5, v11, [Ljava/lang/String;

    .line 1758
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v17, "_id DESC"

    move-object/from16 v16, v5

    .line 1754
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1760
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1761
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    add-int/2addr v1, v3

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    return v1
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 5404
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5406
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    .line 5409
    :goto_0
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->USER_AGENT:Ljava/lang/String;

    const-string v1, "%BUILD%"

    if-eqz p0, :cond_0

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/inaturalist/android/INaturalistApp;->VERSION:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%VERSION%"

    if-eqz p0, :cond_1

    .line 5410
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    sget-object p0, Lorg/inaturalist/android/INaturalistApp;->VERSION:Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUserDetails()Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users/edit.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 3493
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3496
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3497
    :cond_1
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 3499
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserDetails(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3335
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3338
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3339
    :cond_1
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 3341
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserIdentifications(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/identifications?user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&own_observation=false&per_page=30"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3425
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3428
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3430
    :cond_1
    :try_start_0
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 3432
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserLifeList(I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/life_lists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3480
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3482
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3484
    :cond_1
    :try_start_0
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 3486
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserObservations(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/observations?per_page=30&user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3393
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3395
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3397
    :cond_1
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3399
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserObservations(I)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;
        }
    .end annotation

    .line 4157
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations?user_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4162
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_sync_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 4163
    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 4164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&updated_since=%s&order_by=created_at&order=desc&extra=observation_photos,projects,fields"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    const/16 p1, 0xc8

    :cond_1
    if-lez p1, :cond_2

    .line 4172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&per_page=%d&page=1"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4175
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 4176
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 4177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&locale="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    .line 4180
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    .line 4182
    invoke-direct {p0, p1, v3}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4183
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 4184
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "getUserObservations"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4192
    invoke-virtual {p0, p1, v3}, Lorg/inaturalist/android/INaturalistService;->syncJson(Lorg/json/JSONArray;Z)V

    return v3

    :catch_0
    move-exception p1

    .line 4189
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v1

    .line 4196
    :cond_3
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private getUserSpeciesCount(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3464
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3465
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/species_counts?place_id=any&verifiable=any&per_page=30&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3467
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3469
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 3471
    :cond_1
    :try_start_0
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 3473
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private getUserUpdates(Z)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3405
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3406
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/updates?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&per_page=200&observations_by="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "following"

    goto :goto_0

    :cond_0
    const-string p1, "owner"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 3409
    invoke-direct/range {v2 .. v9}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 3411
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 3413
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 3414
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "results"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3415
    new-instance v1, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 3417
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private handleObservationResponse(Lorg/inaturalist/android/Observation;Lorg/json/JSONArray;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 5257
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 5260
    :cond_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 5261
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 5262
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleObservationResponse: Observation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5263
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v4, "handleObservationResponse: JSON: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lorg/inaturalist/android/LoggingUtils;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5266
    new-instance p2, Lorg/inaturalist/android/Observation;

    invoke-direct {p2, v1}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 5267
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleObservationResponse: jsonObservation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/Observation;->merge(Lorg/inaturalist/android/Observation;)Z

    .line 5269
    sget-object p2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleObservationResponse: merged obs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object p2

    const-string v1, "_synced_at"

    .line 5271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5272
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 5274
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return v0

    :cond_1
    :goto_0
    return v0
.end method

.method private handleProjectFieldErrors(II)Z
    .locals 10

    .line 2352
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    const/4 v1, 0x0

    .line 2357
    :try_start_0
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2362
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2363
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2364
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 2365
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v1

    .line 2368
    :cond_0
    new-instance v3, Lorg/inaturalist/android/Observation;

    invoke-direct {v3, p1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 2369
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2371
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2372
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2373
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_1

    .line 2374
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v1

    .line 2377
    :cond_1
    new-instance p2, Lorg/inaturalist/android/Project;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/Project;-><init>(Landroid/database/Cursor;)V

    .line 2378
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2381
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 2382
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v4, 0x0

    .line 2384
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v4, v5, :cond_2

    const v5, 0x7f10015d

    .line 2386
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, p2, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    aput-object v8, v6, v1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 2388
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2392
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v4, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p2, Lorg/inaturalist/android/Project;->id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5, p1}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    const p1, 0x7f10015c

    .line 2394
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, v3, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-nez v4, :cond_3

    const v3, 0x7f10037a

    .line 2395
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    iget-object v3, v3, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    :goto_2
    aput-object v3, v0, v1

    iget-object p2, p2, Lorg/inaturalist/android/Project;->title:Ljava/lang/String;

    aput-object p2, v0, v7

    aput-object v2, v0, v6

    .line 2394
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2398
    iget-object p2, p0, Lorg/inaturalist/android/INaturalistService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/inaturalist/android/INaturalistService$9;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/INaturalistService$9;-><init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2406
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "Alert"

    .line 2407
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2409
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Sync Failed"

    invoke-virtual {p1, v0, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2411
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return v7

    :catch_2
    return v1
.end method

.method public static hasJoinedProject(Landroid/content/Context;I)Z
    .locals 6

    .line 3957
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 3958
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    .line 3959
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V
    .locals 3

    .line 1711
    iget v0, p0, Lorg/inaturalist/android/INaturalistService;->mCurrentObservationProgress:F

    .line 1712
    iget v1, p0, Lorg/inaturalist/android/INaturalistService;->mTotalProgressForObservation:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v1, v2, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42c60000    # 99.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    .line 1716
    :cond_0
    iput v0, p0, Lorg/inaturalist/android/INaturalistService;->mCurrentObservationProgress:F

    .line 1719
    new-instance v1, Landroid/content/Intent;

    const-string v2, "observation_sync_progress"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "observation_id"

    .line 1720
    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "progress"

    .line 1721
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 1722
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 3181
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3182
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3183
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private modulo(II)I
    .locals 0

    .line 5417
    rem-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private observationToJsonObject(Lorg/inaturalist/android/Observation;Z)Lorg/json/JSONObject;
    .locals 4

    .line 5224
    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 5228
    :try_start_0
    iget-object p2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p2

    const-string v0, "site_id"

    .line 5229
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_site_id_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5232
    :cond_0
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "observation"

    .line 5233
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ignore_photos"

    const/4 v0, 0x1

    .line 5234
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 5238
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private paramsForObservation(Lorg/inaturalist/android/Observation;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/inaturalist/android/Observation;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 5244
    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getParams()Ljava/util/ArrayList;

    move-result-object p1

    .line 5245
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ignore_photos"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 5248
    iget-object p2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p2

    .line 5249
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "site_id"

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inat_site_id_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method private post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "post"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 4630
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private post(Ljava/lang/String;Ljava/util/ArrayList;Z)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "post"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .line 4626
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "post"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 4634
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private postObservation(Lorg/inaturalist/android/Observation;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2837
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2839
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postObservation: Updating existing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "put"

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->observationToJsonObject(Lorg/inaturalist/android/Observation;Z)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2844
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postObservation: Error for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    iget v2, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_0

    .line 2850
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postObservation: Deleting obs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2854
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "observation_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2855
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observation_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2856
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "observation_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v5, p1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 2858
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postObservation: After delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2864
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->handleObservationResponse(Lorg/inaturalist/android/Observation;Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 2866
    :cond_1
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1

    .line 2874
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    .line 2875
    invoke-direct {p0, p1, v1}, Lorg/inaturalist/android/INaturalistService;->observationToJsonObject(Lorg/inaturalist/android/Observation;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 2876
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "postObservation: New obs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "post"

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    .line 2881
    invoke-direct/range {v2 .. v9}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object v0

    .line 2879
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->handleObservationResponse(Lorg/inaturalist/android/Observation;Lorg/json/JSONArray;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 2885
    :cond_3
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1
.end method

.method private postPhotos(Lorg/inaturalist/android/Observation;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2934
    iget-object v0, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 2939
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postPhotos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 2943
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v9, "_updated_at > _synced_at AND _synced_at IS NOT NULL AND id IS NULL AND observation_id = ?"

    new-array v10, v5, [Ljava/lang/String;

    .line 2946
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "position ASC, id ASC, _id ASC"

    .line 2943
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2949
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2950
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2951
    new-instance v7, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v7, v6}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2953
    iput-object v3, v7, Lorg/inaturalist/android/ObservationPhoto;->_synced_at:Ljava/sql/Timestamp;

    .line 2954
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos: Updating with _synced_at = null: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v8, v9, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2956
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2958
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2960
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v13, "_synced_at IS NULL AND id IS NOT NULL AND observation_id = ?"

    new-array v14, v5, [Ljava/lang/String;

    .line 2963
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v4

    const-string v15, "position ASC, id ASC, _id ASC"

    .line 2960
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2966
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2967
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2968
    new-instance v7, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v7, v6}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2970
    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v8

    const-string v9, "_synced_at"

    .line 2971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2972
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v7}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v9, v7, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2973
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2975
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2979
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v13, "_updated_at > _synced_at AND _synced_at IS NOT NULL AND id IS NOT NULL AND observation_id = ? AND ((is_deleted == 0) OR (is_deleted IS NULL))"

    new-array v14, v5, [Ljava/lang/String;

    .line 2982
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v4

    const-string v15, "position ASC, id ASC, _id ASC"

    .line 2979
    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2985
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2987
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postPhotos: Updating photos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2990
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2991
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 2993
    new-instance v0, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v0, v6}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2994
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getParams()Ljava/util/ArrayList;

    move-result-object v7

    .line 2995
    iget-object v8, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v8}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v8

    .line 2996
    iget-object v9, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inat_host_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2997
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "site_id"

    iget-object v12, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inat_site_id_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2999
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "postPhotos: Updating "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/observation_photos/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ".json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v7}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3002
    :try_start_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v5, :cond_2

    .line 3007
    invoke-direct/range {p0 .. p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 3009
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3010
    new-instance v8, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v8, v7}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 3011
    new-instance v7, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v7, v8}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 3012
    sget-object v9, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "postPhotos after put: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos after put 2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    invoke-virtual {v0, v7}, Lorg/inaturalist/android/ObservationPhoto;->merge(Lorg/inaturalist/android/ObservationPhoto;)V

    .line 3015
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postPhotos after put 3 - merge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 3017
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos: Setting _SYNCED_AT - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "_synced_at"

    .line 3018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3019
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    .line 3003
    :cond_2
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postPhotos: Failed updating "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3005
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3022
    :goto_3
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSONException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 3027
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3032
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v11, "(_synced_at IS NULL) AND (id IS NULL) AND (observation_id = ?) AND ((is_deleted == 0) OR (is_deleted IS NULL))"

    new-array v12, v5, [Ljava/lang/String;

    iget-object v0, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 3034
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v4

    const-string v13, "position ASC, id ASC, _id ASC"

    .line 3032
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3035
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "postPhotos: New photos: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 3037
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v5

    .line 3041
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 3044
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3045
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v7, 0x2

    if-nez v0, :cond_c

    .line 3046
    new-instance v0, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v0, v6}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 3048
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos: Posting photo - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    iget-object v8, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 3052
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v7, "postPhotos: Skipping because photo_url is not null"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 3057
    :cond_6
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getParams()Ljava/util/ArrayList;

    move-result-object v8

    .line 3059
    iget-object v9, v0, Lorg/inaturalist/android/ObservationPhoto;->photo_filename:Ljava/lang/String;

    if-nez v9, :cond_8

    .line 3062
    sget-object v10, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v11, "postPhotos: Posting photo - photo_filename is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    if-eqz v10, :cond_8

    .line 3064
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v11, v0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 3065
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-array v15, v7, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v15, v4

    const-string v7, "_data"

    aput-object v7, v15, v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "bucket_display_name"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3071
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_7

    .line 3072
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v9, "_data"

    .line 3073
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3075
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v9, :cond_b

    .line 3079
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_8

    .line 3097
    :cond_9
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "file"

    invoke-direct {v7, v10, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    iget-object v7, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v7}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v7

    .line 3100
    iget-object v9, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inat_host_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3101
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "site_id"

    iget-object v12, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "inat_site_id_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v11, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3104
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "postPhotos: POSTing new photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/observation_photos.json"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7, v8, v5}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 3107
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v5, :cond_a

    .line 3112
    invoke-direct/range {p0 .. p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 3114
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 3115
    new-instance v8, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v8, v7}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 3116
    new-instance v9, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v9, v8, v4}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Lorg/inaturalist/android/BetterJSONObject;Z)V

    .line 3117
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v10, "postPhotos: Response for POST: "

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lorg/inaturalist/android/LoggingUtils;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos: Response for POST 2: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    invoke-virtual {v0, v9}, Lorg/inaturalist/android/ObservationPhoto;->merge(Lorg/inaturalist/android/ObservationPhoto;)V

    .line 3121
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postPhotos: Response for POST 3: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 3124
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos - Setting _SYNCED_AT - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "_synced_at"

    .line 3125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3126
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    .line 3108
    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3109
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3129
    :goto_6
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "JSONException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 3133
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_5

    .line 3081
    :cond_b
    :goto_8
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "postPhotos: Posting photo - still problematic photo filename: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id = ?"

    new-array v10, v5, [Ljava/lang/String;

    iget-object v11, v0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3087
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const v8, 0x7f10012d

    .line 3088
    invoke-virtual {v1, v8}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 3089
    iget-object v8, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0, v4, v7}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    .line 3092
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 3093
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_5

    .line 3135
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3137
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v12, "(_synced_at IS NULL) AND ((_observation_id = ? OR observation_id = ?)) AND ((is_deleted == 0) OR (is_deleted IS NULL))"

    new-array v13, v7, [Ljava/lang/String;

    iget-object v0, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 3139
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v4

    iget-object v0, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v5

    const-string v14, "position ASC, id ASC, _id ASC"

    .line 3137
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3140
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 3141
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postPhotos: currentCount = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez v2, :cond_d

    return v5

    .line 3149
    :cond_d
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0
.end method

.method private postProjectObservations()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2255
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    const-string v3, "is_deleted = 1"

    const-string v5, "_id DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2261
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const v2, 0x7f10035b

    const v3, 0x7f10035d

    const v4, 0x7f1002dc

    if-lez v1, :cond_0

    .line 2262
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer;

    .line 2263
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2264
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2265
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2262
    invoke-virtual {v1, v5, v6, v7, v8}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2269
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2270
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 2271
    new-instance v1, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 2274
    iget-object v5, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v6, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    .line 2278
    :try_start_0
    iget-object v5, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v5, v1}, Lorg/inaturalist/android/INaturalistService;->removeObservationFromProject(II)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 2289
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2280
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2281
    new-instance v1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2285
    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2286
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 2292
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2295
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_deleted = 1"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2299
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    const-string v10, "is_new = 1"

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2305
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2306
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer;

    .line 2307
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2308
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2309
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2306
    invoke-virtual {v1, v5, v4, v3, v2}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2314
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2315
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 2316
    new-instance v1, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 2317
    iget-object v2, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/INaturalistService;->addObservationToProject(II)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2319
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    goto :goto_2

    .line 2320
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2321
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 2324
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v3, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 2326
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 2327
    iget-object v2, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/inaturalist/android/INaturalistService;->handleProjectFieldErrors(II)Z

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 2330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    .line 2331
    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 2332
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectObservation;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2335
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v3, v1, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    .line 2338
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2341
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2343
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 2346
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->storeProjectObservations()V

    const/4 v0, 0x1

    return v0
.end method

.method private postProjectObservations(Lorg/inaturalist/android/Observation;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2171
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2177
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_deleted = 1 AND observation_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 2180
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const-string v7, "_id DESC"

    .line 2177
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2183
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2184
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2185
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 2186
    new-instance v2, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 2189
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v4, v2, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    .line 2193
    :try_start_0
    iget-object v3, v2, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/inaturalist/android/INaturalistService;->removeObservationFromProject(II)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2199
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectObservation;->_id:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2208
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 2195
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2196
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2202
    :catch_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2203
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1

    .line 2211
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2214
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    const-string v5, "is_new = 1 AND observation_id = ?"

    new-array v6, v1, [Ljava/lang/String;

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 2217
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const-string v7, "_id DESC"

    .line 2214
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2220
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2221
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 2222
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 2223
    new-instance v2, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 2224
    iget-object v3, v2, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lorg/inaturalist/android/INaturalistService;->addObservationToProject(II)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v3

    if-nez v3, :cond_4

    .line 2226
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 2227
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2228
    new-instance p1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {p1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw p1

    .line 2231
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 2233
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v3, :cond_5

    .line 2234
    iget-object v3, v2, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lorg/inaturalist/android/INaturalistService;->handleProjectFieldErrors(II)Z

    goto :goto_3

    .line 2237
    :cond_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    .line 2238
    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 2239
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectObservation;->getUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2242
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v4, v2, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v4, v2, v5}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    .line 2245
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 2248
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method private put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 4613
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "_method"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "put"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    .line 4614
    invoke-direct/range {v3 .. v8}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private put(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v2, "put"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 4618
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private redownloadOldObservations()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1775
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(photo_filename IS NULL) AND (photo_url IS NULL)"

    const-string v5, "position ASC, id ASC, _id ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1781
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1783
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redownloadOldObservations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "observation_id"

    .line 1786
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1788
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redownloadOldObservations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v3, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "id"

    .line 1791
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1792
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json?extra=observation_photos,projects,fields"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1797
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1798
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&locale="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1800
    invoke-direct {p0, v1, v2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1801
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1802
    invoke-virtual {p0, v1, v2}, Lorg/inaturalist/android/INaturalistService;->syncJson(Lorg/json/JSONArray;Z)V

    .line 1805
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 1808
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2787
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "user[email]"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2788
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "user[login]"

    invoke-direct {p1, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p3, "user[password]"

    invoke-direct {p1, p3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p3, "user[password_confirmation]"

    invoke-direct {p1, p3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2791
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object p1

    .line 2792
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p3, "user[site_id]"

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_site_id_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[preferred_observation_license]"

    invoke-direct {p1, p2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[preferred_photo_license]"

    invoke-direct {p1, p2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2795
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[preferred_sound_license]"

    invoke-direct {p1, p2, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2797
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 2798
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p3, "user[locale]"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/users.json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;Z)Lorg/json/JSONArray;

    .line 2801
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 2804
    :try_start_0
    iget-object p1, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2806
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p3

    :cond_0
    return-object p3
.end method

.method private removeFavorite(I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/votes/unvote/observation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2607
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2609
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private removeIdentification(I)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/identifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2658
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2660
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private removeObservationFromProject(II)Lorg/inaturalist/android/BetterJSONObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3892
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "%s/projects/%d/remove.json?observation_id=%d"

    const/4 v2, 0x3

    .line 3896
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "delete"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, p0

    .line 3897
    invoke-direct/range {v5 .. v12}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3902
    :cond_1
    :try_start_0
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 3904
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3905
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    return-object p1
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;Z)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lorg/json/JSONObject;",
            "Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4647
    invoke-direct/range {v0 .. v7}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lorg/json/JSONObject;",
            "ZZZ)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 4700
    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    .line 4702
    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableContentCompression()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    new-instance v6, Lorg/apache/http/impl/client/LaxRedirectStrategy;

    invoke-direct {v6}, Lorg/apache/http/impl/client/LaxRedirectStrategy;-><init>()V

    .line 4704
    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/HttpClientBuilder;->setRedirectStrategy(Lorg/apache/http/client/RedirectStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    iget-object v6, v1, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 4705
    invoke-static {v6}, Lorg/inaturalist/android/INaturalistService;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/HttpClientBuilder;->setUserAgent(Ljava/lang/String;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    .line 4706
    invoke-virtual {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v6

    .line 4714
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v7, "URL: %s - %s (params: %s / %s)"

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v11, 0x1

    aput-object v2, v9, v11

    if-eqz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_0
    const-string v12, "null"

    :goto_0
    const/4 v13, 0x2

    aput-object v12, v9, v13

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    const-string v12, "null"

    :goto_1
    const/4 v14, 0x3

    aput-object v12, v9, v14

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "post"

    .line 4716
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4717
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_2
    const-string v0, "delete"

    .line 4718
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4719
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "put"

    .line 4720
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4721
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 4723
    :cond_4
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    if-eqz p4, :cond_6

    const-string v0, "Content-type"

    const-string v12, "application/json"

    .line 4729
    invoke-virtual {v7, v0, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "UTF-8"

    invoke-direct {v0, v12, v15}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 4734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    :goto_4
    const-string v12, "put"

    .line 4737
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4738
    move-object v12, v7

    check-cast v12, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_8

    .line 4740
    :cond_5
    move-object v12, v7

    check-cast v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_8

    :cond_6
    if-eqz v4, :cond_c

    const-string v0, "UTF-8"

    .line 4745
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    .line 4746
    new-instance v15, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {v15, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    const/4 v14, 0x0

    .line 4747
    :goto_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_a

    .line 4748
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v13, "image"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v13, "file"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v13, "user[icon]"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    .line 4756
    :cond_7
    :try_start_1
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/http/NameValuePair;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v11, v12}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v15, v0, v13}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 4758
    sget-object v11, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to add "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/NameValuePair;

    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to entity for a "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " request: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 4750
    :cond_8
    :goto_6
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 4752
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/NameValuePair;

    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v15, v10, v11}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x2

    goto/16 :goto_5

    :cond_a
    const-string v0, "put"

    .line 4762
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4763
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {v0, v15}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_8

    .line 4765
    :cond_b
    move-object v0, v7

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 4769
    :cond_c
    :goto_8
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_9

    :cond_d
    move/from16 v0, p5

    move/from16 v10, p6

    :goto_9
    if-eqz v0, :cond_11

    if-eqz v10, :cond_e

    if-eqz p7, :cond_e

    .line 4776
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, "Authorization"

    .line 4778
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getAnonymousJWTToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 4780
    :cond_e
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    if-eqz v10, :cond_f

    const-string v0, "Authorization"

    .line 4784
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getJWTToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 4785
    :cond_f
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    sget-object v10, Lorg/inaturalist/android/INaturalistService$LoginType;->PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne v0, v10, :cond_10

    const-string v0, "Authorization"

    .line 4787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Basic "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const-string v0, "Authorization"

    .line 4790
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bearer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4796
    :cond_11
    :goto_a
    :try_start_2
    iput-object v9, v1, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    .line 4797
    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/CloseableHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v0

    .line 4798
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 4799
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_12
    move-object v6, v9

    .line 4801
    :goto_b
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    sget-object v7, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v10, "(for URL: %s - %s (params: %s / %s))"

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v8, v11

    const/4 v3, 0x1

    aput-object v2, v8, v3

    if-eqz v4, :cond_13

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_13
    const-string v3, "null"

    :goto_c
    const/4 v4, 0x2

    aput-object v3, v8, v4

    if-eqz p4, :cond_14

    invoke-virtual/range {p4 .. p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_14
    const-string v3, "null"

    :goto_d
    const/4 v4, 0x3

    aput-object v3, v8, v4

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lorg/inaturalist/android/LoggingUtils;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, v1, Lorg/inaturalist/android/INaturalistService;->mLastStatusCode:I

    .line 4808
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_18

    const/16 v4, 0x191

    if-eq v3, v4, :cond_17

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_16

    const/16 v4, 0x1a6

    if-eq v3, v4, :cond_15

    goto :goto_e

    .line 4812
    :cond_15
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4851
    :cond_16
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GONE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    :goto_e
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 4849
    :cond_17
    new-instance v0, Lorg/inaturalist/android/INaturalistService$AuthenticationException;

    invoke-direct {v0, v1, v9}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;-><init>(Lorg/inaturalist/android/INaturalistService;Lorg/inaturalist/android/INaturalistService$1;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 4815
    :cond_18
    :goto_f
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_10

    .line 4818
    :catch_2
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4819
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 4820
    :try_start_5
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_3
    move-object v3, v4

    goto :goto_10

    :catch_4
    move-object v3, v9

    .line 4825
    :goto_10
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mResponseHeaders:[Lorg/apache/http/Header;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v3, :cond_19

    .line 4828
    :try_start_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v4, 0x0

    .line 4829
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "errors"

    .line 4830
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 4832
    sget-object v4, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got an error response: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "errors"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "errors"

    .line 4833
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    return-object v9

    :catch_5
    move-exception v0

    .line 4838
    :try_start_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_19
    if-eqz v6, :cond_1a

    .line 4841
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    .line 4843
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_1a
    return-object v3

    :catch_6
    move-exception v0

    .line 4860
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error for URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-object v9
.end method

.method private requestCredentials()V
    .locals 5

    .line 4885
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4886
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/INaturalistService;->stopForeground(Z)V

    goto :goto_0

    .line 4888
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->stopSelf()V

    .line 4891
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->AUTH_NOTIFICATION:Ljava/lang/Integer;

    const v2, 0x7f1002be

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1002bf

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->sweepingNotify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private restoreIdentification(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2673
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2674
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "current"

    const/4 v3, 0x1

    .line 2676
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "identification"

    .line 2677
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/identifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2681
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private saveJoinedProjects()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 2447
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer;

    const v2, 0x7f1002dc

    .line 2448
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1000af

    .line 2449
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10035b

    .line 2450
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2447
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->getJoinedProjects()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    .line 2454
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    if-eqz v0, :cond_3

    .line 2460
    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 2463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2465
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2467
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 2468
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 2469
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 2472
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2479
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id not in ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-static {v1, v6}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2487
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2488
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2491
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    const-string v8, "id = ?"

    new-array v9, v2, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v3

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2493
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 2494
    new-instance v4, Lorg/inaturalist/android/Project;

    new-instance v5, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v5, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v4, v5}, Lorg/inaturalist/android/Project;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 2495
    invoke-virtual {v4}, Lorg/inaturalist/android/Project;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 2496
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2498
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_2
    return v2

    :catch_1
    move-exception v0

    .line 2481
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2482
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 2457
    :cond_3
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0
.end method

.method private searchAutoComplete(Ljava/lang/String;Ljava/lang/String;I)Lorg/inaturalist/android/BetterJSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3376
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3377
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/autocomplete?geo=true&locale="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&per_page=50&page="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&q="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3379
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 3381
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p3

    .line 3383
    :cond_1
    :try_start_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3385
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p3
.end method

.method private searchUserObservation(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3350
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/observations/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?per_page=100"

    .line 3351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&q="

    .line 3352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "utf8"

    .line 3353
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&extra=observation_photos,projects,fields"

    .line 3355
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3358
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "&locale="

    .line 3359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3360
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 3368
    invoke-direct {p0, p1, v1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 3370
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 3372
    :cond_1
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/SerializableJSONArray;-><init>(Lorg/json/JSONArray;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 3364
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0
.end method

.method private setAnnotationValue(III)Lorg/inaturalist/android/BetterJSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/annotations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1911
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "resource_type"

    const-string v4, "Observation"

    .line 1913
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "resource_id"

    .line 1914
    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "controlled_attribute_id"

    .line 1915
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "controlled_value_id"

    .line 1916
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1923
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1924
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1929
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 1930
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v2

    :cond_1
    :goto_0
    return-object v2

    :catch_1
    move-exception p1

    .line 1918
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private setUserViewedUpdate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/observations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/viewed_updates"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    return-void
.end method

.method private startIntentForeground()V
    .locals 4

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 410
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "Service startIntentForeground"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "inaturalist_service"

    .line 414
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Channel human readable title"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "notification"

    .line 418
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 420
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    .line 421
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, ""

    .line 422
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 424
    invoke-virtual {p0, v1, v0}, Lorg/inaturalist/android/INaturalistService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private storeProjectObservations()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2419
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2420
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/SerializableJSONArray;

    if-nez v2, :cond_0

    goto :goto_3

    .line 2423
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 2425
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2428
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2429
    new-instance v5, Lorg/inaturalist/android/ProjectObservation;

    new-instance v6, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v6, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lorg/inaturalist/android/ProjectObservation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 2430
    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 2431
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "project_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " AND observation_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "_id DESC"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2435
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 2436
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2438
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 2440
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private syncObservationFields()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 4358
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_updated_at > _synced_at AND _synced_at IS NOT NULL"

    const-string v5, "_id DESC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4364
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4366
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 4372
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    .line 4367
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->SYNC_PHOTOS_NOTIFICATION:Ljava/lang/Integer;

    const v4, 0x7f1002dc

    .line 4368
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f10035d

    .line 4369
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f10035b

    .line 4370
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4367
    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_d

    .line 4377
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 4378
    new-instance v1, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Landroid/database/Cursor;)V

    .line 4382
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v7, "id = ? AND _synced_at IS NOT NULL AND _id != ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    .line 4385
    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "_id DESC"

    .line 4382
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4387
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 4388
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-nez v5, :cond_2

    .line 4390
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 4395
    :cond_2
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v5, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 4397
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v5, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 4399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/observations/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4402
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 4405
    :try_start_0
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "observation_field_values"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 4407
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 4408
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "observation_field"

    .line 4409
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    const-string v9, "observation_field_id"

    .line 4410
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 4411
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lorg/inaturalist/android/ProjectFieldValue;

    new-instance v9, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v9, v6}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v8, v9}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    invoke-virtual {v3, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 4414
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 4417
    :cond_3
    iget-object v4, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v5, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4419
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto :goto_3

    .line 4421
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 4422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4423
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4427
    :cond_5
    :goto_3
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v4, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    if-nez v3, :cond_6

    .line 4433
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 4437
    :cond_6
    iget-object v4, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    move-object v4, v5

    :goto_4
    const/4 v10, 0x1

    goto :goto_5

    .line 4441
    :cond_7
    iget-object v4, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ProjectFieldValue;

    .line 4443
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    iget-object v7, v1, Lorg/inaturalist/android/ProjectFieldValue;->_updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v6, v7}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v10, :cond_b

    .line 4450
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4451
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "observation_field_value[observation_id]"

    iget-object v8, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4452
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "observation_field_value[observation_field_id]"

    iget-object v8, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4453
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "observation_field_value[value]"

    iget-object v8, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/observation_field_values.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    if-nez v4, :cond_c

    .line 4457
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v3, :cond_a

    .line 4461
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "field_id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 4463
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4464
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    .line 4465
    new-instance v4, Lorg/inaturalist/android/ProjectField;

    invoke-direct {v4, v3}, Lorg/inaturalist/android/ProjectField;-><init>(Landroid/database/Cursor;)V

    .line 4466
    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, v4, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lorg/inaturalist/android/INaturalistService;->handleProjectFieldErrors(II)Z

    .line 4468
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4469
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4470
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_1

    .line 4458
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4459
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4477
    :cond_b
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    iput-object v6, v1, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    .line 4478
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    iput-object v6, v1, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    .line 4479
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    iput-object v6, v1, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    .line 4480
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    iput-object v6, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    .line 4481
    iget-object v6, v4, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    iput-object v6, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    .line 4482
    iget-object v4, v4, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    iput-object v4, v1, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    .line 4485
    :cond_c
    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v6, "_synced_at"

    .line 4486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4487
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4489
    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4491
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4492
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_1

    .line 4494
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4496
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 4499
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 4500
    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/ProjectFieldValue;

    .line 4501
    invoke-virtual {v3}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_synced_at"

    .line 4502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4503
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4505
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "field_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4507
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_10

    .line 4509
    iget-object v3, v3, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/inaturalist/android/INaturalistService;->addProjectField(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    .line 4511
    :cond_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4512
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4515
    :cond_10
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_11
    return v2
.end method

.method private syncObservationFields(Lorg/inaturalist/android/Observation;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4202
    iget-object v0, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 4208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    const-string v7, "_updated_at > _synced_at AND _synced_at IS NOT NULL AND observation_id = ?"

    new-array v8, v3, [Ljava/lang/String;

    iget-object v0, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 4211
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v8, v10

    const-string v9, "_id DESC"

    .line 4208
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4214
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4216
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 4217
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v3

    .line 4221
    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4222
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    .line 4223
    new-instance v5, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {v5, v4}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Landroid/database/Cursor;)V

    .line 4225
    invoke-direct/range {p0 .. p1}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 4227
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/observations/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ".json"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4232
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 4235
    :try_start_0
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "observation_field_values"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    .line 4237
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 4238
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "observation_field"

    .line 4239
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "id"

    const-string v12, "observation_field_id"

    .line 4240
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 4241
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lorg/inaturalist/android/ProjectFieldValue;

    new-instance v12, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v12, v8}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v11, v12}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    invoke-virtual {v6, v9, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4244
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4247
    :cond_2
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v7, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v0, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4249
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto :goto_2

    .line 4251
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4252
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4256
    :cond_4
    :goto_2
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_5

    .line 4262
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 4266
    :cond_5
    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    move-object v8, v7

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    .line 4270
    :cond_6
    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/inaturalist/android/ProjectFieldValue;

    .line 4272
    iget-object v8, v6, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    if-eqz v8, :cond_7

    iget-object v8, v6, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    iget-object v9, v5, Lorg/inaturalist/android/ProjectFieldValue;->_updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v8, v9}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v6

    goto :goto_3

    :cond_7
    move-object v8, v6

    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_a

    .line 4279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4280
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "observation_field_value[observation_id]"

    iget-object v11, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4281
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "observation_field_value[observation_field_id]"

    iget-object v11, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4282
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "observation_field_value[value]"

    iget-object v11, v5, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-direct {v8, v9, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4283
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/observation_field_values.json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v6}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_b

    .line 4286
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-eqz v0, :cond_9

    .line 4290
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v13, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field_id = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, "_id DESC"

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4292
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4293
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_8

    .line 4294
    new-instance v6, Lorg/inaturalist/android/ProjectField;

    invoke-direct {v6, v0}, Lorg/inaturalist/android/ProjectField;-><init>(Landroid/database/Cursor;)V

    .line 4295
    iget-object v5, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v6, Lorg/inaturalist/android/ProjectField;->project_id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v1, v5, v6}, Lorg/inaturalist/android/INaturalistService;->handleProjectFieldErrors(II)Z

    .line 4297
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4298
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 4299
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_0

    .line 4287
    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4288
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4306
    :cond_a
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->created_at:Ljava/sql/Timestamp;

    .line 4307
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->id:Ljava/lang/Integer;

    .line 4308
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    .line 4309
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    .line 4310
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    .line 4311
    iget-object v6, v8, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    iput-object v6, v5, Lorg/inaturalist/android/ProjectFieldValue;->updated_at:Ljava/sql/Timestamp;

    .line 4314
    :cond_b
    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v8, "_synced_at"

    .line 4315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4316
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectFieldValue;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9, v6, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4318
    iget-object v5, v5, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4320
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 4321
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    goto/16 :goto_0

    .line 4323
    :cond_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4326
    iget-object v0, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_d

    return v3

    .line 4332
    :cond_d
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/ProjectFieldValue;

    .line 4333
    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_synced_at"

    .line 4334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4335
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4337
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "field_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4339
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_f

    .line 4341
    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/INaturalistService;->addProjectField(I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_6

    .line 4343
    :cond_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4344
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0

    .line 4347
    :cond_f
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_10
    return v3

    :cond_11
    :goto_7
    return v3
.end method

.method private syncObservations()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;,
            Lorg/inaturalist/android/SyncFailedException;
        }
    .end annotation

    .line 1530
    :try_start_0
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Via"

    .line 1533
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Automatic Upload"

    goto :goto_0

    :cond_0
    const-string v2, "Manual Full Upload"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1534
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_deleted = 1 AND user_login = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "numDeletes"

    .line 1540
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1541
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: to be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1544
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(_updated_at > _synced_at AND _synced_at IS NOT NULL AND user_login = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\') OR (id IS NULL AND _updated_at > _created_at)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_created_at ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "numUploads"

    .line 1550
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1551
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: uploads: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1554
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Sync Observation"

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1556
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1559
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f1002d0

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Calling syncRemotelyDeletedObs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->syncRemotelyDeletedObs()Z

    .line 1564
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Calling getUserObservations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1565
    invoke-direct {p0, v0}, Lorg/inaturalist/android/INaturalistService;->getUserObservations(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1567
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "syncObservations: After calling getUserObservations"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1574
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v5, "(_synced_at IS NULL) OR (_updated_at > _synced_at AND _synced_at IS NOT NULL)"

    const/4 v6, 0x0

    const-string v7, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1580
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1581
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_id"

    .line 1582
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1586
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1587
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: observationIdsToSync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v7, "(_synced_at IS NULL) OR (_updated_at > _synced_at AND _synced_at IS NOT NULL AND id IS NOT NULL) OR (is_deleted = 1)"

    const/4 v8, 0x0

    const-string v9, "position ASC, id ASC, _id ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1597
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1598
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "_observation_id"

    .line 1599
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1600
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 1603
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1605
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: observationIdsToSync 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    const-string v7, "(_synced_at IS NULL) OR (_updated_at > _synced_at AND _synced_at IS NOT NULL)"

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1615
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1616
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "observation_id"

    .line 1617
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1618
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 1621
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1622
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: observationIdsToSync 3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1626
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1627
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id in ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    .line 1629
    invoke-static {v1, v10}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    .line 1627
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1632
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 1633
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1638
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v7, "is_deleted"

    .line 1639
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 1640
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1642
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 1645
    :cond_6
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncObservations: obsIdsToRemove: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1648
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1651
    :cond_7
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncObservations: observationIdsToSync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 1655
    invoke-static {v1, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "CASE WHEN _created_at IS NULL THEN created_at ELSE _created_at END ASC"

    .line 1653
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1659
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1661
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1662
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v3, 0x7f10035e

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f100361

    .line 1663
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/INaturalistService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1662
    invoke-virtual {v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->notify(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    new-instance v2, Lorg/inaturalist/android/Observation;

    invoke-direct {v2, v1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    const/4 v3, 0x0

    .line 1667
    iput v3, p0, Lorg/inaturalist/android/INaturalistService;->mCurrentObservationProgress:F

    .line 1668
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->getTotalProgressForObservation(Lorg/inaturalist/android/Observation;)I

    move-result v3

    iput v3, p0, Lorg/inaturalist/android/INaturalistService;->mTotalProgressForObservation:I

    .line 1669
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 1671
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v4, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1672
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncObservations: Syncing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v3, v2, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    if-eqz v3, :cond_9

    iget-object v3, v2, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object v4, v2, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v3, v4}, Ljava/sql/Timestamp;->after(Ljava/sql/Timestamp;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1675
    :cond_8
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->postObservation(Lorg/inaturalist/android/Observation;)Z

    .line 1676
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->increaseProgressForObservation(Lorg/inaturalist/android/Observation;)V

    .line 1678
    :cond_9
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncObservations: Finished Syncing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - now uploading photos"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->postPhotos(Lorg/inaturalist/android/Observation;)Z

    .line 1681
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncObservations: Finished uploading photos "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->deleteObservationPhotos(Lorg/inaturalist/android/Observation;)Z

    .line 1683
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->syncObservationFields(Lorg/inaturalist/android/Observation;)Z

    .line 1684
    invoke-direct {p0, v2}, Lorg/inaturalist/android/INaturalistService;->postProjectObservations(Lorg/inaturalist/android/Observation;)Z

    .line 1685
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncObservations: Finished delete photos, obs fields and project obs - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_7

    .line 1690
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1692
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Calling delete obs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->deleteObservations()Z

    .line 1695
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Calling saveJoinedProj"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->saveJoinedProjects()Z

    .line 1698
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Calling storeProjObs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->storeProjectObservations()V

    .line 1701
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->redownloadOldObservations()V

    .line 1703
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncObservations: Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_user_details_refresh_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void

    .line 1565
    :cond_b
    new-instance v0, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v0}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v0
.end method

.method private syncRemotelyDeletedObs()Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;,
            Lorg/inaturalist/android/CancelSyncException;
        }
    .end annotation

    .line 4106
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->ensureCredentials()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/observations/deleted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4111
    iget-object v2, p0, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "last_sync_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    .line 4114
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "syncRemotelyDeletedObs: First time syncing, no need to delete observations"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 4118
    :cond_1
    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    .line 4120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?since=%s"

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4122
    invoke-direct {p0, v0, v6}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4123
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 4127
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "results"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4133
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_2

    return v6

    .line 4135
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 4136
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 4137
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v2, ","

    .line 4139
    invoke-static {v3, v2}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4141
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncRemotelyDeletedObs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "))"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4145
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "observation_id in ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4146
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "observation_id in ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4147
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "observation_id in ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v1

    .line 4150
    :cond_4
    :goto_1
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->checkForCancelSync()V

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private updateComment(IILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "comment[parent_id]"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "comment[parent_type]"

    const-string v2, "Observation"

    invoke-direct {p2, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2818
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "comment[body]"

    invoke-direct {p2, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2820
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/comments/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    return-void
.end method

.method private updateCurrentUserDetails(Lorg/json/JSONObject;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 3313
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "user"

    .line 3315
    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3317
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3320
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/users/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "put"

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/inaturalist/android/INaturalistService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;ZZZ)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3324
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 3325
    :cond_1
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    .line 3327
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private updateIdentification(IIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2687
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "identification[observation_id]"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "identification[taxon_id]"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2689
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p3, "identification[body]"

    invoke-direct {p1, p3, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/identifications/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    return-void
.end method

.method private updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2757
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "user[login]"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v1, "user[name]"

    invoke-direct {p1, v1, p4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p4, "user[description]"

    invoke-direct {p1, p4, p5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2760
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p4, "user[email]"

    invoke-direct {p1, p4, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 2761
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 2762
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[password]"

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[password_confirmation]"

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p7, :cond_1

    .line 2768
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "icon_delete"

    const-string/jumbo p3, "true"

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 2771
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "user[icon]"

    invoke-direct {p1, p2, p6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2774
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/users/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".json"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2776
    iget-object p2, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-nez p2, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 2780
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateUserNetwork(I)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 2741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2742
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "user[site_id]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".json"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->put(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2746
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService;->mResponseErrors:Lorg/json/JSONArray;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2750
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static verifyCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/inaturalist/android/INaturalistService$LoginType;)[Ljava/lang/String;
    .locals 8

    .line 4898
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 4899
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.useragent"

    invoke-static {p0}, Lorg/inaturalist/android/INaturalistService;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 4900
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p3, v1, :cond_0

    const-string v1, "/oauth/token"

    goto :goto_0

    :cond_0
    const-string v1, "/oauth/assertion_token"

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4901
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 4902
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4904
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "format"

    const-string v5, "json"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4905
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client_id"

    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100288

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4906
    sget-object v3, Lorg/inaturalist/android/INaturalistService$LoginType;->FACEBOOK:Lorg/inaturalist/android/INaturalistService$LoginType;

    const/4 v4, 0x0

    if-ne p3, v3, :cond_1

    const-string v3, "facebook"

    goto :goto_1

    .line 4908
    :cond_1
    sget-object v3, Lorg/inaturalist/android/INaturalistService$LoginType;->GOOGLE:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p3, v3, :cond_2

    const-string v3, "google"

    goto :goto_1

    .line 4910
    :cond_2
    sget-object v3, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p3, v3, :cond_3

    const-string v3, "password"

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 4914
    :goto_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "grant_type"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4915
    sget-object v3, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    if-ne p3, v3, :cond_4

    .line 4916
    new-instance p3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    invoke-direct {p3, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4917
    new-instance p2, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p3, "username"

    invoke-direct {p2, p3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4918
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p2, "client_secret"

    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object p3

    const v3, 0x7f100289

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4920
    :cond_4
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string p3, "assertion"

    invoke-direct {p1, p3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4924
    :goto_2
    :try_start_0
    move-object p1, v1

    check-cast p1, Lorg/apache/http/client/methods/HttpPost;

    new-instance p2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {p2, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 4931
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 4932
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    .line 4933
    invoke-static {p2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p2

    .line 4935
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p3, 0xc8

    if-ne p1, p3, :cond_7

    .line 4938
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "access_token"

    .line 4939
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4942
    new-instance p2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/users/edit.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v1, "Authorization"

    .line 4943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4945
    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 4946
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 4947
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 4949
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v3, "RESP2: %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4951
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    if-eq v0, p3, :cond_5

    return-object v4

    .line 4955
    :cond_5
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "login"

    .line 4956
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v4

    :cond_6
    const-string v0, "login"

    .line 4960
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    .line 4962
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v7

    aput-object p3, v0, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 4965
    :cond_7
    :try_start_3
    sget-object p1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Authentication failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v4

    :catch_1
    move-exception p0

    .line 4973
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, v1

    .line 4969
    :goto_3
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 4970
    sget-object p2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error for URL "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v4

    :catch_3
    move-exception p0

    .line 4926
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v4
.end method

.method private voteIdCanBeImproved(IZ)Lorg/inaturalist/android/BetterJSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/votes/vote/observation/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1982
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "vote"

    if-eqz p2, :cond_0

    const-string/jumbo p2, "yes"

    goto :goto_0

    :cond_0
    const-string p2, "no"

    .line 1985
    :goto_0
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "id"

    .line 1986
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "scope"

    const-string p2, "needs_id"

    .line 1987
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1993
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1994
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 1999
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 2000
    new-instance p2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {p2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    return-object v2

    :cond_2
    :goto_1
    return-object v2

    :catch_1
    move-exception p1

    .line 1989
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private warmUpImageCache(Ljava/lang/String;)V
    .locals 2

    .line 3156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3159
    new-instance v1, Lorg/inaturalist/android/INaturalistService$10;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$10;-><init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public flagObservationAsCaptive(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/observations/%d/quality/wild.json?agree=false"

    const/4 v1, 0x2

    .line 3859
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    return-void
.end method

.method public joinProject(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/projects/%d/join.json"

    const/4 v1, 0x2

    .line 3863
    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    check-cast v2, Lorg/json/JSONObject;

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/INaturalistService;->post(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    :try_start_0
    const-string v0, "%s/projects/%d.json"

    .line 3866
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->get(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3868
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 3869
    new-instance p1, Lorg/inaturalist/android/Project;

    invoke-direct {p1, v0}, Lorg/inaturalist/android/Project;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 3872
    invoke-virtual {p1}, Lorg/inaturalist/android/Project;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 3873
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string p1, "project_observation_fields"

    .line 3876
    invoke-virtual {v0, p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/INaturalistService;->addProjectFields(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3879
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public leaveProject(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/inaturalist/android/INaturalistService$AuthenticationException;
        }
    .end annotation

    const-string v0, "%s/projects/%d/leave.json"

    const/4 v1, 0x2

    .line 3884
    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/INaturalistService;->delete(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    .line 3887
    invoke-virtual {p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(id IS NOT NULL) and (id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 391
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 393
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->startIntentForeground()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 5396
    iput-boolean v0, p0, Lorg/inaturalist/android/INaturalistService;->mIsStopped:Z

    .line 5397
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 430
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/INaturalistService$1;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/INaturalistService$1;-><init>(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onHandleIntentWorker(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    const-string v2, "iNaturalistPreferences"

    const/4 v10, 0x0

    .line 442
    invoke-virtual {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    .line 443
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "username"

    const/4 v11, 0x0

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    .line 444
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "credentials"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    .line 445
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "login_type"

    sget-object v4, Lorg/inaturalist/android/INaturalistService$LoginType;->OAUTH_PASSWORD:Lorg/inaturalist/android/INaturalistService$LoginType;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistService$LoginType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/inaturalist/android/INaturalistService$LoginType;->valueOf(Ljava/lang/String;)Lorg/inaturalist/android/INaturalistService$LoginType;

    move-result-object v2

    iput-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mLoginType:Lorg/inaturalist/android/INaturalistService$LoginType;

    .line 446
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/INaturalistApp;

    iput-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    return-void

    .line 454
    :cond_1
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_PASSIVE_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mPassive:Z

    .line 456
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    const/4 v14, 0x1

    .line 459
    :try_start_0
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v2, "get_location"

    .line 461
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "location_expansion"

    .line 462
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 463
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 464
    invoke-direct/range {p0 .. p1}, Lorg/inaturalist/android/INaturalistService;->getNearbyObservations(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 467
    :cond_2
    new-instance v2, Lorg/inaturalist/android/INaturalistService$2;

    invoke-direct {v2, v9, v1, v3}, Lorg/inaturalist/android/INaturalistService$2;-><init>(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;F)V

    invoke-direct {v9, v2}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 493
    :cond_3
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 494
    iput-boolean v14, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 495
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 497
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->saveJoinedProjects()Z

    const/16 v1, 0x64

    .line 498
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserObservations(I)Z

    move-result v1

    .line 500
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(is_deleted = 0 OR is_deleted is NULL) AND (user_login = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 505
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 507
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 508
    new-instance v3, Lorg/inaturalist/android/BetterCursor;

    invoke-direct {v3, v2}, Lorg/inaturalist/android/BetterCursor;-><init>(Landroid/database/Cursor;)V

    const-string v4, "id"

    .line 509
    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterCursor;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 510
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_downloaded_id"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v1, :cond_5

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 515
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_sync_time"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    if-eqz v1, :cond_6

    .line 518
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->syncObservationFields()Z

    .line 519
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->postProjectObservations()Z

    goto/16 :goto_19

    .line 517
    :cond_6
    new-instance v1, Lorg/inaturalist/android/SyncFailedException;

    invoke-direct {v1}, Lorg/inaturalist/android/SyncFailedException;-><init>()V

    throw v1

    .line 521
    :cond_7
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_HISTOGRAM:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "taxon_id"

    .line 522
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "research_grade"

    .line 523
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 524
    invoke-direct {v9, v2, v1}, Lorg/inaturalist/android/INaturalistService;->getHistogram(IZ)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    .line 526
    new-instance v3, Landroid/content/Intent;

    const-string v4, "histogram_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "histogram_result"

    .line 527
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "research_grade"

    .line 528
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 530
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 532
    :cond_8
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_POPULAR_FIELD_VALUES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "taxon_id"

    .line 533
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 534
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getPopularFieldValues(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 536
    new-instance v2, Landroid/content/Intent;

    const-string v3, "popular_field_values_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "popular_field_values_result"

    .line 537
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 541
    :cond_9
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "observation_id"

    .line 542
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v2, "taxon_id"

    .line 543
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "disagreement"

    .line 544
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v7

    .line 545
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->addIdentification(IILjava/lang/String;ZZ)V

    .line 548
    invoke-direct {v9, v7, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 550
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    .line 552
    new-instance v3, Lorg/inaturalist/android/Observation;

    new-instance v4, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v4, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    const-string v4, "observation_result"

    .line 553
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "observation_json_result"

    .line 554
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_a
    const-string v1, "observation_result"

    .line 556
    move-object v3, v11

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "observation_json_result"

    .line 557
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    :goto_0
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 562
    :cond_b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_RESTORE_ID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "observation_id"

    .line 563
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "identification_id"

    .line 564
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 565
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->restoreIdentification(I)V

    .line 568
    invoke-direct {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 569
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 571
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 572
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 573
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 576
    :cond_c
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_ID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "observation_id"

    .line 577
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "taxon_id"

    .line 578
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "identification_id"

    .line 579
    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "id_body"

    .line 580
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-direct {v9, v2, v4, v3, v1}, Lorg/inaturalist/android/INaturalistService;->updateIdentification(IIILjava/lang/String;)V

    .line 584
    invoke-direct {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 585
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 587
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 588
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 589
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 592
    :cond_d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_ID:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "identification_id"

    .line 593
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "observation_id"

    .line 594
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 595
    invoke-direct {v9, v2}, Lorg/inaturalist/android/INaturalistService;->removeIdentification(I)Lorg/json/JSONObject;

    .line 598
    invoke-direct {v9, v1, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 599
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 601
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 602
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 603
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 606
    :cond_e
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_FAVORITE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "observation_id"

    .line 607
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 608
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->addFavorite(I)Lorg/json/JSONObject;

    goto/16 :goto_19

    .line 610
    :cond_f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_FAVORITE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "observation_id"

    .line 611
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 612
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->removeFavorite(I)Lorg/json/JSONObject;

    goto/16 :goto_19

    .line 614
    :cond_10
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v1, 0x14

    .line 615
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getAdditionalUserObservations(I)I

    move-result v1

    .line 617
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-le v1, v13, :cond_11

    const/4 v4, 0x1

    goto :goto_1

    :cond_11
    const/4 v4, 0x0

    .line 618
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "observation_count"

    .line 619
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 622
    :cond_12
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_IDENTIFICATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v7, 0x3e8

    if-eqz v2, :cond_13

    const-string v2, "observation_id"

    .line 623
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v2, "taxon_id"

    .line 624
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "id_body"

    .line 625
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "disagreement"

    .line 626
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "from_vision"

    .line 627
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v1, p0

    move v2, v11

    .line 628
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->addIdentification(IILjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 633
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 635
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 639
    :goto_2
    invoke-direct {v9, v11, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 642
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 644
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 645
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 646
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 650
    :cond_13
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_PROJECT_FIELD:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "field_id"

    .line 651
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 652
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->addProjectField(I)Z

    goto/16 :goto_19

    .line 654
    :cond_14
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "email"

    .line 655
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    .line 656
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "username"

    .line 657
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "license"

    .line 658
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-direct {v9, v2, v3, v4, v1}, Lorg/inaturalist/android/INaturalistService;->registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_REGISTER_USER_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    if-nez v1, :cond_15

    const/4 v4, 0x1

    goto :goto_3

    :cond_15
    const/4 v4, 0x0

    .line 663
    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "error"

    .line 664
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 667
    :cond_16
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_NEWS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "project_id"

    .line 668
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 669
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getProjectNews(I)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 671
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_NEWS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "results"

    .line 672
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 673
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 675
    :cond_17
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "project_id"

    .line 676
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 677
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getProjectObservations(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 679
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 680
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_shared_on_app"

    .line 681
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 684
    :cond_18
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_IDENTIFIERS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "project_id"

    .line 685
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 686
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getProjectIdentifiers(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 688
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 690
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 691
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 693
    :cond_19
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVERS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "project_id"

    .line 694
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 695
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getProjectObservers(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 697
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 698
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 699
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 702
    :cond_1a
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_SPECIES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "project_id"

    .line 703
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 704
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getProjectSpecies(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 706
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 708
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 711
    :cond_1b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "uuid"

    .line 712
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->deleteAnnotation(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 715
    new-instance v2, Landroid/content/Intent;

    const-string v3, "delete_annotation_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_4

    :cond_1c
    const/4 v1, 0x0

    .line 716
    :goto_4
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 719
    :cond_1d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION_VOTE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "uuid"

    .line 720
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->deleteAnnotationVote(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 723
    new-instance v2, Landroid/content/Intent;

    const-string v3, "delete_annotation_vote_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_5

    :cond_1e
    const/4 v1, 0x0

    .line 724
    :goto_5
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 727
    :cond_1f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "observation_id"

    .line 728
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 729
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->deleteIdCanBeImprovedVote(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 731
    new-instance v2, Landroid/content/Intent;

    const-string v3, "delete_id_can_be_improved_vote_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "delete_id_can_be_improved_vote_result"

    .line 732
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 733
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 735
    :cond_20
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ID_CAN_BE_IMPROVED_VOTE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v2, "observation_id"

    .line 736
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 737
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v9, v1, v14}, Lorg/inaturalist/android/INaturalistService;->voteIdCanBeImproved(IZ)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 739
    new-instance v2, Landroid/content/Intent;

    const-string v3, "id_can_be_improved_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "id_can_be_improved_result"

    .line 740
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 741
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 743
    :cond_21
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ID_CANNOT_BE_IMPROVED_VOTE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "observation_id"

    .line 744
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 745
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v9, v1, v10}, Lorg/inaturalist/android/INaturalistService;->voteIdCanBeImproved(IZ)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 747
    new-instance v2, Landroid/content/Intent;

    const-string v3, "id_cannot_be_improved_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "id_cannot_be_improved_result"

    .line 748
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 749
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 751
    :cond_22
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SET_ANNOTATION_VALUE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "observation_id"

    .line 752
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "attribute_id"

    .line 753
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "value_id"

    .line 754
    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 755
    invoke-direct {v9, v2, v3, v1}, Lorg/inaturalist/android/INaturalistService;->setAnnotationValue(III)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 757
    new-instance v2, Landroid/content/Intent;

    const-string v3, "set_annotation_value_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_6

    :cond_23
    const/4 v1, 0x0

    .line 758
    :goto_6
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 761
    :cond_24
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_DATA_QUALITY_METRICS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "observation_id"

    .line 762
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 763
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getDataQualityMetrics(Ljava/lang/Integer;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 765
    new-instance v2, Landroid/content/Intent;

    const-string v3, "data_quality_metrics_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data_quality_metrics_result"

    .line 766
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 767
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 770
    :cond_25
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_DATA_QUALITY_VOTE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "observation_id"

    .line 771
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "metric"

    .line 772
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    invoke-direct {v9, v2, v1}, Lorg/inaturalist/android/INaturalistService;->deleteDataQualityMetricVote(Ljava/lang/Integer;Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 775
    new-instance v2, Landroid/content/Intent;

    const-string v3, "delete_data_quality_vote_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_7

    :cond_26
    const/4 v1, 0x0

    .line 776
    :goto_7
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 777
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 780
    :cond_27
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_DATA_QUALITY:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "observation_id"

    .line 781
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "metric"

    .line 782
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-direct {v9, v2, v1, v14}, Lorg/inaturalist/android/INaturalistService;->agreeDataQualityMetric(Ljava/lang/Integer;Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 785
    new-instance v2, Landroid/content/Intent;

    const-string v3, "agree_data_quality_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_8

    :cond_28
    const/4 v1, 0x0

    .line 786
    :goto_8
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 789
    :cond_29
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_DATA_QUALITY:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string v2, "observation_id"

    .line 790
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "metric"

    .line 791
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-direct {v9, v2, v1, v10}, Lorg/inaturalist/android/INaturalistService;->agreeDataQualityMetric(Ljava/lang/Integer;Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 794
    new-instance v2, Landroid/content/Intent;

    const-string v3, "disagree_data_quality_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_9

    :cond_2a
    const/4 v1, 0x0

    .line 795
    :goto_9
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 796
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 799
    :cond_2b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "uuid"

    .line 800
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-direct {v9, v1, v14}, Lorg/inaturalist/android/INaturalistService;->agreeAnnotation(Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 803
    new-instance v2, Landroid/content/Intent;

    const-string v3, "agree_annotation_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_a

    :cond_2c
    const/4 v1, 0x0

    .line 804
    :goto_a
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 805
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 807
    :cond_2d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "uuid"

    .line 808
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-direct {v9, v1, v10}, Lorg/inaturalist/android/INaturalistService;->agreeAnnotation(Ljava/lang/String;Z)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 811
    new-instance v2, Landroid/content/Intent;

    const-string v3, "disagree_annotation_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "success"

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_b

    :cond_2e
    const/4 v1, 0x0

    .line 812
    :goto_b
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 813
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 815
    :cond_2f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ALL_ATTRIBUTES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 816
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getAllAttributes()Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 818
    new-instance v2, Landroid/content/Intent;

    const-string v3, "get_all_attributes_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "get_all_attributes_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 820
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 821
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 823
    :cond_30
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ATTRIBUTES_FOR_TAXON:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "taxon"

    .line 824
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/BetterJSONObject;

    .line 825
    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getAttributesForTaxon(Lorg/json/JSONObject;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 827
    new-instance v2, Landroid/content/Intent;

    const-string v3, "get_attributes_for_taxon_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "get_attributes_for_taxon_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 829
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 832
    :cond_31
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_SUGGESTIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "obs_photo_filename"

    .line 833
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "obs_photo_url"

    .line 834
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "longitude"

    const-wide/16 v5, 0x0

    .line 835
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v7, "latitude"

    .line 836
    invoke-virtual {v1, v7, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "observed_on"

    .line 837
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/sql/Timestamp;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_35

    :try_start_3
    const-string v6, "online_photo"

    const-string v7, ".jpeg"

    .line 843
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 845
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v3, v7}, Lorg/inaturalist/android/INaturalistService;->downloadToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 846
    new-instance v3, Landroid/content/Intent;

    const-string v7, "action_get_taxon_suggestions_result"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "taxon_suggestions"

    .line 847
    move-object v8, v11

    check-cast v8, Ljava/io/Serializable;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 848
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1510
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_33

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1513
    :cond_32
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sync_canceled"

    .line 1520
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "sync_failed"

    .line 1521
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "first_sync"

    .line 1522
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1523
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_33
    return-void

    .line 852
    :cond_34
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v3

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v3, v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v3, v0

    move-object v6, v11

    .line 854
    :goto_c
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :cond_35
    move-object v6, v11

    :goto_d
    const/16 v3, 0x12b

    .line 860
    invoke-static {v9, v2, v11, v3}, Lorg/inaturalist/android/ImageUtils;->resizeImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_36

    .line 863
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 866
    :cond_36
    invoke-direct {v9, v2, v5, v4, v1}, Lorg/inaturalist/android/INaturalistService;->getTaxonSuggestions(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/sql/Timestamp;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 868
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 871
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_get_taxon_suggestions_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "taxon_suggestions"

    .line 872
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 873
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 875
    :cond_37
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_NEW:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string/jumbo v2, "taxon_id"

    .line 876
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 877
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getTaxonNew(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 879
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_get_taxon_new_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "action_get_taxon_new_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 881
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 884
    :cond_38
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string/jumbo v2, "taxon_id"

    .line 885
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 886
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getTaxon(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 888
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_get_taxon_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "taxon_result"

    .line 889
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 890
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 892
    :cond_39
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_PLACES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "query"

    .line 893
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page_number"

    .line 894
    invoke-virtual {v1, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "places"

    .line 895
    invoke-direct {v9, v3, v2, v1}, Lorg/inaturalist/android/INaturalistService;->searchAutoComplete(Ljava/lang/String;Ljava/lang/String;I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 897
    new-instance v2, Landroid/content/Intent;

    const-string v3, "search_places_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 898
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "search_places_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 899
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 902
    :cond_3a
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USERS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    const-string v2, "query"

    .line 903
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page_number"

    .line 904
    invoke-virtual {v1, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "users"

    .line 905
    invoke-direct {v9, v3, v2, v1}, Lorg/inaturalist/android/INaturalistService;->searchAutoComplete(Ljava/lang/String;Ljava/lang/String;I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 907
    new-instance v3, Landroid/content/Intent;

    const-string v4, "search_users_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "search_users_result"

    invoke-virtual {v4, v5, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 909
    invoke-virtual {v3, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "query"

    .line 910
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 914
    :cond_3b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_TAXA:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const-string v2, "query"

    .line 915
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "page_number"

    .line 916
    invoke-virtual {v1, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "taxa"

    .line 917
    invoke-direct {v9, v3, v2, v1}, Lorg/inaturalist/android/INaturalistService;->searchAutoComplete(Ljava/lang/String;Ljava/lang/String;I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 919
    new-instance v2, Landroid/content/Intent;

    const-string v3, "search_taxa_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "search_taxa_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 921
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 922
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 924
    :cond_3c
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_CURRENT_USER_DETAILS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "user"

    .line 925
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/BetterJSONObject;

    .line 926
    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->updateCurrentUserDetails(Lorg/json/JSONObject;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 928
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "update_current_user_details_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    .line 929
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 930
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 932
    :cond_3d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_REFRESH_CURRENT_USER_SETTINGS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 933
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getCurrentUserDetails()Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    if-eqz v1, :cond_77

    .line 937
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "prefers_scientific_name_first"

    invoke-virtual {v3, v4, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/INaturalistApp;->setShowScientificNameFirst(Z)V

    .line 939
    new-instance v2, Landroid/content/Intent;

    const-string v3, "refresh_current_user_settings_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    .line 940
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 941
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 944
    :cond_3e
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const-string/jumbo v2, "username"

    .line 945
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 946
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserDetails(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    .line 948
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "user_details_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    .line 949
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "username"

    .line 950
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 951
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 953
    :cond_3f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_CURRENT_LOCATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 954
    new-instance v1, Lorg/inaturalist/android/INaturalistService$3;

    invoke-direct {v1, v9}, Lorg/inaturalist/android/INaturalistService$3;-><init>(Lorg/inaturalist/android/INaturalistService;)V

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 963
    :cond_40
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MISSIONS_BY_TAXON:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "username"

    .line 964
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "taxon_id"

    .line 965
    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "expand_location_by_degrees"

    .line 966
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 968
    new-instance v3, Lorg/inaturalist/android/INaturalistService$4;

    invoke-direct {v3, v9, v4, v2, v1}, Lorg/inaturalist/android/INaturalistService$4;-><init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/Integer;Ljava/lang/String;F)V

    invoke-direct {v9, v3}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 991
    :cond_41
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_OBSERVATION_BOUNDS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "taxon_id"

    .line 992
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 993
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getTaxonObservationsBounds(Ljava/lang/Integer;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 995
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "taxon_observation_bounds_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "taxon_observation_bounds_result"

    .line 996
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 997
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 999
    :cond_42
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const-string/jumbo v2, "username"

    .line 1000
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "expand_location_by_degrees"

    .line 1001
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 1003
    new-instance v3, Lorg/inaturalist/android/INaturalistService$5;

    invoke-direct {v3, v9, v2, v1}, Lorg/inaturalist/android/INaturalistService$5;-><init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/String;F)V

    invoke-direct {v9, v3}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 1024
    :cond_43
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string/jumbo v2, "username"

    .line 1025
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1026
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserSpeciesCount(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    .line 1028
    new-instance v3, Landroid/content/Intent;

    const-string v4, "species_count_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "species_count_result"

    invoke-virtual {v4, v5, v2}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "is_shared_on_app"

    .line 1030
    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "username"

    .line 1031
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1034
    :cond_44
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_LIFE_LIST:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "life_list_id"

    .line 1035
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1036
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserLifeList(I)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1038
    new-instance v2, Landroid/content/Intent;

    const-string v3, "life_list_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "life_list_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1040
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1041
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1043
    :cond_45
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string/jumbo v2, "username"

    .line 1044
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserObservations(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1047
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "user_observations_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string/jumbo v5, "user_observations_result"

    if-eqz v2, :cond_46

    new-instance v11, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v11, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    :cond_46
    invoke-virtual {v4, v5, v11}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "is_shared_on_app"

    .line 1049
    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "username"

    .line 1050
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1053
    :cond_47
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USER_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "query"

    .line 1054
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->searchUserObservation(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v2

    .line 1057
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "user_search_observations_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string/jumbo v5, "user_search_observations_result"

    invoke-virtual {v4, v5, v2}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "is_shared_on_app"

    .line 1059
    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "query"

    .line 1060
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1063
    :cond_48
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_VIEWED_UPDATE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "observation_id"

    .line 1064
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1065
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->setUserViewedUpdate(I)V

    goto/16 :goto_19

    .line 1067
    :cond_49
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "following"

    .line 1068
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1069
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v9, v2}, Lorg/inaturalist/android/INaturalistService;->getUserUpdates(Z)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v2

    .line 1072
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1073
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "updates_following_results"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string/jumbo v4, "updates_following_results"

    invoke-virtual {v3, v4, v2}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_e

    .line 1076
    :cond_4a
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "updates_results"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string/jumbo v4, "updates_results"

    invoke-virtual {v3, v4, v2}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_e
    const-string v2, "is_shared_on_app"

    .line 1079
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1080
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1082
    :cond_4b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v2, "username"

    .line 1083
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1084
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getUserIdentifications(Ljava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v2

    .line 1086
    new-instance v3, Landroid/content/Intent;

    const-string v4, "identifications_result"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    iget-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "identifications_result"

    invoke-virtual {v4, v5, v2}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "is_shared_on_app"

    .line 1088
    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "username"

    .line 1089
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1092
    :cond_4c
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVERS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1e

    if-eqz v2, :cond_4d

    const-string v2, "filters"

    .line 1093
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/inaturalist/android/ExploreSearchFilters;

    const-string v2, "page_number"

    .line 1094
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "page_size"

    .line 1095
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "observers"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 1096
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->getExploreResults(Ljava/lang/String;Lorg/inaturalist/android/ExploreSearchFilters;IILjava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1098
    new-instance v2, Landroid/content/Intent;

    const-string v3, "explore_get_observers_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "explore_get_observers_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1100
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1101
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1103
    :cond_4d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_IDENTIFIERS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string v2, "filters"

    .line 1104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/inaturalist/android/ExploreSearchFilters;

    const-string v2, "page_number"

    .line 1105
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "page_size"

    .line 1106
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "identifiers"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 1107
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->getExploreResults(Ljava/lang/String;Lorg/inaturalist/android/ExploreSearchFilters;IILjava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1109
    new-instance v2, Landroid/content/Intent;

    const-string v3, "explore_get_identifiers_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1110
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "explore_get_identifiers_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1111
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1114
    :cond_4e
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_SPECIES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "filters"

    .line 1115
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/inaturalist/android/ExploreSearchFilters;

    const-string v2, "page_number"

    .line 1116
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "page_size"

    .line 1117
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "species_counts"

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 1118
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->getExploreResults(Ljava/lang/String;Lorg/inaturalist/android/ExploreSearchFilters;IILjava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1120
    new-instance v2, Landroid/content/Intent;

    const-string v3, "explore_get_species_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "explore_get_species_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1122
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1123
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1125
    :cond_4f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "filters"

    .line 1126
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/inaturalist/android/ExploreSearchFilters;

    const-string v2, "page_number"

    .line 1127
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "page_size"

    .line 1128
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v2, 0x0

    const-string v7, "observation.id"

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    .line 1129
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/INaturalistService;->getExploreResults(Ljava/lang/String;Lorg/inaturalist/android/ExploreSearchFilters;IILjava/lang/String;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1131
    new-instance v2, Landroid/content/Intent;

    const-string v3, "explore_get_observations_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1132
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "explore_get_observations_result"

    invoke-virtual {v3, v4, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "is_shared_on_app"

    .line 1133
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1134
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1136
    :cond_50
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_COMMENT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "observation_id"

    .line 1137
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "comment_body"

    .line 1138
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-direct {v9, v2, v1}, Lorg/inaturalist/android/INaturalistService;->addComment(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1144
    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_f

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1146
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1150
    :goto_f
    invoke-direct {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 1151
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1153
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 1154
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 1155
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1158
    :cond_51
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_COMMENT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const-string v2, "observation_id"

    .line 1159
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "comment_id"

    .line 1160
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comment_body"

    .line 1161
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-direct {v9, v3, v2, v1}, Lorg/inaturalist/android/INaturalistService;->updateComment(IILjava/lang/String;)V

    .line 1165
    invoke-direct {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 1166
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1168
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 1169
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 1170
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1173
    :cond_52
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_COMMENT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v2, "observation_id"

    .line 1174
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "comment_id"

    .line 1175
    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1176
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->deleteComment(I)V

    .line 1179
    invoke-direct {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 1180
    new-instance v2, Lorg/inaturalist/android/Observation;

    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v3, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v2, v3}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1182
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "observation_result"

    .line 1183
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "observation_json_result"

    .line 1184
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1187
    :cond_53
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1188
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v9, v2}, Lorg/inaturalist/android/INaturalistService;->getGuideXML(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    .line 1193
    new-instance v3, Lorg/inaturalist/android/GuideXML;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v9, v1}, Lorg/inaturalist/android/GuideXML;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1196
    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getOfflineGuideXmlFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1200
    :cond_54
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML_RESULT:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "guide_xml_result"

    .line 1201
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1204
    :cond_55
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_CLEAR_OLD_PHOTOS_CACHE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1206
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsClearingOldPhotosCache:Z

    if-nez v1, :cond_77

    .line 1207
    iput-boolean v14, v9, Lorg/inaturalist/android/INaturalistService;->mIsClearingOldPhotosCache:Z

    .line 1208
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->clearOldCachedPhotos()V

    .line 1209
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsClearingOldPhotosCache:Z

    goto/16 :goto_19

    .line 1213
    :cond_56
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_NETWORK:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "network_site_id"

    .line 1214
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1215
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->updateUserNetwork(I)Lorg/json/JSONObject;

    goto/16 :goto_19

    .line 1217
    :cond_57
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1218
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_USERNAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1219
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_FULL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1220
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_BIO:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1221
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PASSWORD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1222
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_EMAIL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1223
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_PIC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1224
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_USER_DELETE_PIC:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v1, p0

    move-object v3, v15

    .line 1226
    invoke-direct/range {v1 .. v8}, Lorg/inaturalist/android/INaturalistService;->updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5b

    const-string v2, "errors"

    .line 1228
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "iNaturalistPreferences"

    .line 1229
    invoke-virtual {v9, v2, v10}, Lorg/inaturalist/android/INaturalistService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1230
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1232
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    const-string v4, "login"

    .line 1233
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    const-string/jumbo v4, "username"

    .line 1234
    iget-object v5, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "user_icon_url"

    .line 1235
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    const-string/jumbo v4, "user_icon_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    goto :goto_12

    :cond_58
    const-string/jumbo v4, "user_icon_url"

    const-string v5, "medium_user_icon_url"

    .line 1238
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-string v5, "medium_user_icon_url"

    :goto_10
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_59
    const-string/jumbo v5, "user_icon_url"

    goto :goto_10

    :goto_11
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_13

    :cond_5a
    :goto_12
    const-string/jumbo v4, "user_icon_url"

    .line 1236
    invoke-interface {v2, v4, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_13
    const-string/jumbo v4, "user_bio"

    const-string v5, "description"

    .line 1240
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "user_email"

    const-string v5, "email"

    .line 1241
    invoke-virtual {v1, v5, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "user_full_name"

    const-string v5, "name"

    .line 1242
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1243
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v3, :cond_5b

    .line 1246
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1248
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "user_login"

    .line 1249
    iget-object v5, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_synced_at"

    .line 1252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "user_login = ?"

    new-array v7, v14, [Ljava/lang/String;

    aput-object v3, v7, v10

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1254
    sget-object v4, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v5, "Updated %d observations with new user login %s from %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mLogin:Ljava/lang/String;

    aput-object v2, v6, v14

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_5b
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_UPDATE_USER_DETAILS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "user"

    if-eqz v1, :cond_5c

    .line 1259
    new-instance v11, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v11, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    :cond_5c
    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1260
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1262
    :cond_5d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_5e

    .line 1267
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getUserDetails()Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1
    :try_end_9
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v2, 0x0

    goto :goto_14

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1270
    :try_start_a
    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistService$AuthenticationException;->printStackTrace()V

    move-object v1, v11

    const/4 v2, 0x1

    .line 1274
    :goto_14
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS_RESULT:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "user"

    .line 1275
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "authentication_failed"

    .line 1276
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1277
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1279
    :cond_5e
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_TAXA_FOR_GUIDE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1280
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getTaxaForGuide(Ljava/lang/Integer;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1283
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_TAXA_FOR_GUIDES_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1284
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_TAXA_FOR_GUIDES_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_shared_on_app"

    .line 1285
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1286
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1288
    :cond_5f
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ALL_GUIDES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1289
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getAllGuides()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1291
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_ALL_GUIDES_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1292
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ALL_GUIDES_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is_shared_on_app"

    .line 1293
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1296
    :cond_60
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_MY_GUIDES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1298
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getMyGuides()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1300
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_MY_GUIDES_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->GUIDES_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1302
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1304
    :cond_61
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEAR_BY_GUIDES:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1305
    new-instance v1, Lorg/inaturalist/android/INaturalistService$6;

    invoke-direct {v1, v9}, Lorg/inaturalist/android/INaturalistService$6;-><init>(Lorg/inaturalist/android/INaturalistService;)V

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 1329
    :cond_62
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEARBY_PROJECTS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1330
    new-instance v1, Lorg/inaturalist/android/INaturalistService$7;

    invoke-direct {v1, v9}, Lorg/inaturalist/android/INaturalistService$7;-><init>(Lorg/inaturalist/android/INaturalistService;)V

    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getLocation(Lorg/inaturalist/android/INaturalistService$IOnLocation;)V

    goto/16 :goto_19

    .line 1356
    :cond_63
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_FEATURED_PROJECTS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1357
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getFeaturedProjects()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1359
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_FEATURED_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "projects_result"

    .line 1360
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1361
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1363
    :cond_64
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS_ONLINE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1365
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 1366
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getJoinedProjects()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v11

    .line 1369
    :cond_65
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1370
    iget-object v2, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "is_shared_on_app"

    .line 1371
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1374
    :cond_66
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 1376
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mCredentials:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 1377
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getJoinedProjectsOffline()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v11

    .line 1380
    :cond_67
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "projects_result"

    .line 1381
    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1382
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1384
    :cond_68
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_REMOVE_OBSERVATION_FROM_PROJECT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 1385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "observation_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1386
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "project_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1387
    invoke-direct {v9, v2, v1}, Lorg/inaturalist/android/INaturalistService;->removeObservationFromProject(II)Lorg/inaturalist/android/BetterJSONObject;

    goto/16 :goto_19

    .line 1389
    :cond_69
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_ADD_OBSERVATION_TO_PROJECT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1390
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "observation_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1391
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "project_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1392
    invoke-direct {v9, v2, v1}, Lorg/inaturalist/android/INaturalistService;->addObservationToProject(II)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    .line 1394
    new-instance v2, Landroid/content/Intent;

    const-string v3, "add_observation_to_project_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "add_observation_to_project_result"

    .line 1395
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1396
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1398
    :cond_6a
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_CHECK_LIST:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "check_list_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1400
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getCheckList(I)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1402
    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_check_list_result"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "check_list_result"

    .line 1403
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1404
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1406
    :cond_6b
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_FLAG_OBSERVATION_AS_CAPTIVE:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 1407
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "observation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1408
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->flagObservationAsCaptive(I)V

    goto/16 :goto_19

    .line 1410
    :cond_6c
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEWS:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1411
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getNews()Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v1

    .line 1413
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_NEWS_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "results"

    .line 1414
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1415
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1417
    :cond_6d
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1418
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "observation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1419
    invoke-direct {v9, v1}, Lorg/inaturalist/android/INaturalistService;->getAndDownloadObservation(I)Lorg/inaturalist/android/Observation;

    move-result-object v1

    .line 1421
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_AND_SAVE_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "observation_result"

    .line 1422
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1423
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 1425
    :cond_6e
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "observation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1427
    invoke-direct {v9, v1, v10}, Lorg/inaturalist/android/INaturalistService;->getObservationJson(IZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 1429
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1431
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mObservationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_6f

    .line 1432
    :try_start_b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_18

    :cond_6f
    move-object v4, v11

    :goto_15
    if-nez v1, :cond_70

    move-object v5, v11

    goto :goto_16

    .line 1433
    :cond_70
    new-instance v5, Lorg/inaturalist/android/Observation;

    new-instance v6, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v6, v4}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1435
    :goto_16
    iget-object v6, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    sget-object v7, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1436
    iget-object v5, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v6, "observation_json_result"

    if-eqz v1, :cond_71

    goto :goto_17

    :cond_71
    move-object v4, v11

    :goto_17
    invoke-virtual {v5, v6, v4}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1437
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v1, "is_shared_on_app"

    .line 1438
    invoke-virtual {v2, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1439
    invoke-virtual {v9, v2}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_19

    .line 1437
    :goto_18
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v1

    .line 1442
    :cond_72
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_JOIN_PROJECT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "project_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1444
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->joinProject(I)V

    goto/16 :goto_19

    .line 1446
    :cond_73
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_LEAVE_PROJECT:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "project_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1448
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->leaveProject(I)V

    goto/16 :goto_19

    .line 1450
    :cond_74
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 1452
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-nez v1, :cond_77

    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v1

    if-nez v1, :cond_77

    .line 1453
    iput-boolean v14, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1454
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1456
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->syncRemotelyDeletedObs()Z

    .line 1457
    invoke-direct {v9, v10}, Lorg/inaturalist/android/INaturalistService;->getUserObservations(I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 1461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1462
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_sync_time"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1463
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_user_details_refresh_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_19

    .line 1465
    :cond_75
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/inaturalist/android/INaturalistService$8;

    invoke-direct {v2, v9}, Lorg/inaturalist/android/INaturalistService$8;-><init>(Lorg/inaturalist/android/INaturalistService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 1475
    :cond_76
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1476
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-nez v1, :cond_78

    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v1

    if-nez v1, :cond_78

    .line 1477
    iput-boolean v14, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1478
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1479
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->syncObservations()V

    .line 1482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1483
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_sync_time"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/inaturalist/android/CancelSyncException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/inaturalist/android/SyncFailedException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/inaturalist/android/INaturalistService$AuthenticationException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_77
    :goto_19
    const/4 v14, 0x0

    .line 1510
    :cond_78
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_7f

    if-nez v14, :cond_7f

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1513
    :cond_79
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_1a
    const/4 v14, 0x0

    goto/16 :goto_1e

    .line 1505
    :catch_5
    :try_start_f
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mPassive:Z

    if-nez v1, :cond_7a

    .line 1506
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->requestCredentials()V

    .line 1508
    :cond_7a
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1510
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1513
    :cond_7b
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 1502
    :catch_6
    :try_start_10
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1510
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1513
    :cond_7c
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sync_canceled"

    .line 1520
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "sync_failed"

    .line 1521
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1d

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x1

    goto/16 :goto_1a

    .line 1497
    :catch_7
    :try_start_11
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v10}, Lorg/inaturalist/android/INaturalistApp;->setCancelSync(Z)V

    .line 1498
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1510
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1513
    :cond_7d
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "sync_canceled"

    .line 1520
    invoke-virtual {v1, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1c

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_1e

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 1493
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1494
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1510
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v1, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v1, :cond_7f

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 1513
    :cond_7e
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v1, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v2, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v2, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1b
    const-string v2, "sync_canceled"

    .line 1520
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1c
    const-string v2, "sync_failed"

    .line 1521
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1d
    const-string v2, "first_sync"

    .line 1522
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1523
    invoke-virtual {v9, v1}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7f
    return-void

    .line 1510
    :goto_1e
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3, v13}, Lorg/inaturalist/android/INaturalistApp;->setObservationIdBeingSynced(I)V

    .line 1512
    iget-boolean v3, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    if-eqz v3, :cond_81

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 1513
    :cond_80
    iput-boolean v10, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    .line 1514
    iget-object v3, v9, Lorg/inaturalist/android/INaturalistService;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-boolean v4, v9, Lorg/inaturalist/android/INaturalistService;->mIsSyncing:Z

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setIsSyncing(Z)V

    .line 1516
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v4, "Sending ACTION_SYNC_COMPLETE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "sync_canceled"

    .line 1520
    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "sync_failed"

    .line 1521
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1522
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_FIRST_SYNC:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "first_sync"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1523
    invoke-virtual {v9, v3}, Lorg/inaturalist/android/INaturalistService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1524
    :cond_81
    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 400
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v1, "Service onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Lorg/inaturalist/android/INaturalistService;->startIntentForeground()V

    .line 404
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public syncJson(Lorg/json/JSONArray;Z)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 4992
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4993
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4995
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5001
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncJson: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/inaturalist/android/LoggingUtils;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 5004
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 5006
    :try_start_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v8, p1

    :try_start_1
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v9, "id"

    .line 5007
    invoke-virtual {v0, v9}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5009
    new-instance v9, Lorg/inaturalist/android/Observation;

    invoke-direct {v9, v0}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    const-string v10, "id"

    .line 5010
    invoke-virtual {v0, v10}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 5014
    iget-object v9, v1, Lorg/inaturalist/android/INaturalistService;->mProjectObservations:Ljava/util/ArrayList;

    const-string v10, "project_observations"

    invoke-virtual {v0, v10}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5017
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    const-string v10, "ofvs"

    .line 5018
    invoke-virtual {v0, v10}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "ofvs"

    goto :goto_1

    :cond_0
    const-string v10, "observation_field_values"

    :goto_1
    invoke-virtual {v0, v10}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    .line 5020
    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 5021
    new-instance v12, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v13, "observation_field"

    .line 5023
    invoke-virtual {v12, v13}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "observation_field"

    .line 5024
    invoke-virtual {v12, v13}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    goto :goto_3

    :cond_1
    const-string v13, "field_id"

    .line 5026
    invoke-virtual {v12, v13}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 5028
    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {v14, v12}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    invoke-virtual {v9, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 5031
    :cond_2
    iget-object v10, v1, Lorg/inaturalist/android/INaturalistService;->mProjectFieldValues:Ljava/util/Hashtable;

    const-string v11, "id"

    invoke-virtual {v0, v11}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v8, p1

    .line 5034
    :goto_4
    sget-object v9, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "syncJson: JSONException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v0, ","

    .line 5038
    invoke-static {v3, v0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5040
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "id IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5045
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5047
    :goto_6
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5048
    new-instance v9, Lorg/inaturalist/android/Observation;

    invoke-direct {v9, v7}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 5049
    iget-object v0, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/inaturalist/android/Observation;

    .line 5050
    invoke-virtual {v9, v10}, Lorg/inaturalist/android/Observation;->merge(Lorg/inaturalist/android/Observation;)Z

    move-result v11

    .line 5052
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syncJson - updating existing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syncJson - remote obs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5055
    invoke-virtual {v9}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v12

    .line 5056
    iget-object v0, v9, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object v13, v10, Lorg/inaturalist/android/Observation;->updated_at:Ljava/sql/Timestamp;

    invoke-virtual {v0, v13}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_synced_at"

    .line 5060
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5064
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5065
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5066
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v17, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(observation_id = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5071
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5072
    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "id"

    .line 5073
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 5075
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5077
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    .line 5079
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5080
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syncJson: Adding photos for obs "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5081
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syncJson: JsonObservation: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    .line 5082
    :goto_8
    iget-object v0, v10, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_a

    .line 5083
    iget-object v0, v10, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationPhoto;

    .line 5084
    iget-object v15, v10, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    iput-object v15, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 5086
    iget-object v15, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    if-nez v15, :cond_8

    .line 5087
    sget-object v15, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncJson: Null photo ID! "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move-object/from16 v21, v10

    goto/16 :goto_a

    .line 5091
    :cond_8
    iget-object v1, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5092
    iget-object v1, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5093
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syncJson: photo "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has already been added, skipping..."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 5096
    :cond_9
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 5098
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    const-string v10, "syncJson: Setting _SYNCED_AT - "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "_synced_at"

    .line 5099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "_observation_id"

    .line 5100
    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "_photo_id"

    .line 5101
    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "id"

    .line 5102
    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5104
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 5107
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_a
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v21

    move-object/from16 v1, p0

    goto/16 :goto_8

    :cond_a
    const-string v0, ","

    .line 5113
    invoke-static {v13, v0}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observation_id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " AND id IS NOT NULL"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5115
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 5116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND id NOT in ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5118
    :cond_b
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncJson: Deleting local photos: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncJson: Deleting local photos, IDs: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v1, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 5124
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syncJson: Deleting local photos: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_c

    .line 5127
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    const-string v8, "Warning: Deleted %d photos locally after sever did not contain those IDs - observation id: %s, photo ids: %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 5128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v14, 0x0

    aput-object v1, v13, v14

    iget-object v1, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v1, 0x2

    aput-object v0, v13, v1

    .line 5127
    invoke-static {v8, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v6, v0}, Lcom/crashlytics/android/Crashlytics;->log(ILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v11, :cond_d

    .line 5133
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncJson: Updating observation: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5134
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5136
    :cond_d
    iget-object v0, v9, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5137
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v1, p0

    goto/16 :goto_6

    .line 5139
    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5143
    invoke-static {v3, v4}, Lorg/apache/commons/collections4/CollectionUtils;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5144
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5145
    sget-object v3, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncJson: Adding new observations: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 5146
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 5147
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/Observation;

    .line 5149
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v9, "id = ?"

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    iget-object v10, v4, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 5151
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const-string v12, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    move-object v10, v11

    move-object v11, v12

    .line 5149
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5152
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 5153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-lez v7, :cond_f

    .line 5156
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncJson: Observation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " already exists locally - not adding"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 5160
    :cond_f
    invoke-virtual {v4}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "_synced_at"

    .line 5161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "last_comments_count"

    .line 5162
    iget-object v8, v4, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "last_identifications_count"

    .line 5163
    iget-object v8, v4, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5164
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 5165
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 5166
    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 5167
    sget-object v6, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncJson: Adding new obs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b

    :cond_10
    if-eqz v2, :cond_14

    const/4 v3, 0x0

    .line 5172
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    .line 5173
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/inaturalist/android/Observation;

    .line 5176
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncJson: Saving new obs\' photos: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 5177
    :goto_e
    iget-object v0, v4, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_13

    .line 5178
    iget-object v0, v4, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationPhoto;

    .line 5180
    iget-object v6, v0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    if-nez v6, :cond_11

    .line 5181
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v10, "_id = ?"

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    iget-object v6, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    .line 5183
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const-string v12, "position ASC, id ASC, _id ASC"

    .line 5181
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v7, v6

    const/4 v6, 0x1

    const/4 v13, 0x0

    goto :goto_f

    .line 5185
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v10, "uuid = ?"

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    iget-object v12, v0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    .line 5187
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "position ASC, id ASC, _id ASC"

    .line 5185
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5190
    :goto_f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_12

    .line 5192
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncJson: Photo already exists - skipping: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    .line 5197
    :cond_12
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5199
    iget-object v7, v4, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    iput-object v7, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    .line 5201
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 5202
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncJson: Setting _SYNCED_AT - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lorg/inaturalist/android/ObservationPhoto;->observation_id:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5203
    sget-object v8, Lorg/inaturalist/android/INaturalistService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncJson: Setting _SYNCED_AT - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "_synced_at"

    .line 5204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "_observation_id"

    .line 5205
    iget-object v9, v0, Lorg/inaturalist/android/ObservationPhoto;->_observation_id:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_photo_id"

    .line 5206
    iget-object v9, v0, Lorg/inaturalist/android/ObservationPhoto;->_photo_id:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "_id"

    .line 5207
    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5209
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v8, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_10

    :catch_3
    move-exception v0

    .line 5212
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e

    :cond_13
    const/4 v6, 0x1

    const/4 v13, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_14
    if-eqz v2, :cond_15

    .line 5219
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/INaturalistService;->storeProjectObservations()V

    :cond_15
    return-void
.end method
