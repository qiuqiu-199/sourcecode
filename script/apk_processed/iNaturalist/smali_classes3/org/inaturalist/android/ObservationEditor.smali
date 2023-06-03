.class public Lorg/inaturalist/android/ObservationEditor;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ObservationEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;,
        Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;
    }
.end annotation


# static fields
.field private static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x64

.field private static final CHOOSE_IMAGES_REQUEST_CODE:I = 0x69

.field public static final CHOOSE_PHOTO:Ljava/lang/String; = "choose_photo"

.field private static final COMMENTS_IDS_REQUEST_CODE:I = 0x65

.field private static final DATE_DIALOG_ID:I = 0x0

.field private static final LOCATION_CHOOSER_REQUEST_CODE:I = 0x67

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final OBSERVATION_JSON:Ljava/lang/String; = "observation_json"

.field private static final OBSERVATION_PHOTOS_REQUEST_CODE:I = 0x68

.field public static final OBSERVATION_PROJECT:Ljava/lang/String; = "observation_project"

.field private static final ONE_MINUTE:I = 0xea60

.field private static final PROJECT_SELECTOR_REQUEST_CODE:I = 0x66

.field public static final RESULT_DELETED:I = 0x1000

.field public static final RESULT_REFRESH_OBS:I = 0x1002

.field public static final RESULT_RETURN_TO_OBSERVATION_LIST:I = 0x1001

.field public static final RETURN_TO_OBSERVATION_LIST:Ljava/lang/String; = "return_to_observation_list"

.field public static final SPECIES_GUESS:Ljava/lang/String; = "species_guess"

.field private static final TAG:Ljava/lang/String; = "INAT: ObservationEditor"

.field public static final TAKE_PHOTO:Ljava/lang/String; = "take_photo"

.field public static final TAXON:Ljava/lang/String; = "taxon"

.field private static final TAXON_SEARCH_REQUEST_CODE:I = 0x12e

.field private static final TIME_DIALOG_ID:I = 0x1


# instance fields
.field public big:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mAccuracyView:Landroid/widget/TextView;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mAskedForLocationPermission:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mCameraPhotos:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCanceled:Z

.field public mChoseNewPhoto:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mClearSpeciesGuess:Landroid/widget/ImageView;

.field private mCloseSpeciesNameOnboarding:Landroid/view/View;

.field private mCurrentLocation:Landroid/location/Location;

.field private mCursor:Landroid/database/Cursor;

.field private mDateSetByUser:Ljava/sql/Timestamp;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeleted:Z

.field private mDescriptionTextView:Landroid/widget/TextView;

.field public mFileUri:Landroid/net/Uri;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;
    .end annotation
.end field

.field private mFindingCurrentLocation:Landroid/widget/TextView;

.field public mFirstPositionPhotoId:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mFromSuggestion:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mGallery:Lorg/lucasr/twowayview/TwoWayView;

.field private mGeoprivacy:Landroid/widget/Spinner;

.field public mGettingLocation:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mImageCursor:Landroid/database/Cursor;

.field public mIsCaptive:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mIsConfirmation:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mIsCustomTaxon:Z

.field private mIsTaxonUnknown:Z

.field private mLatitudeView:Landroid/widget/TextView;

.field private mLocationGuess:Landroid/widget/TextView;

.field private mLocationIcon:Landroid/widget/ImageView;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field public mLocationManuallySet:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLocationProgressView:Landroid/widget/ProgressBar;

.field private mLocationRefreshButton:Landroid/view/View;

.field private mLocationRequestedAt:Ljava/lang/Long;

.field private mLongitudeView:Landroid/widget/TextView;

.field public mObsJson:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservation:Lorg/inaturalist/android/Observation;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mObservedOnButton:Landroid/widget/TextView;

.field private mObservedOnStringTextView:Landroid/widget/TextView;

.field public mPhotosAdded:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotosChanged:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mPhotosRemoved:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/ObservationPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public mPictureTaken:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mPreviousTaxonSearch:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mProjectCount:Landroid/widget/TextView;

.field public mProjectFieldValues:Ljava/util/HashMap;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/inaturalist/android/ProjectFieldValue;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectFieldViewers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/ProjectFieldViewer;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/ProjectField;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectFieldsTable:Landroid/widget/TableLayout;

.field public mProjectFieldsUpdated:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mProjectIds:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectSelector:Landroid/widget/TextView;

.field public mReturnToObservationList:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mSaveButton:Landroid/widget/TextView;

.field private mScientificName:Ljava/lang/String;

.field private mSharePhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeciesGuess:Ljava/lang/String;

.field private mSpeciesGuessIcon:Landroid/widget/ImageView;

.field private mSpeciesGuessSub:Landroid/widget/TextView;

.field private mSpeciesGuessTextView:Landroid/widget/EditText;

.field private mSpeciesNameOnboarding:Landroid/view/ViewGroup;

.field public mTaxonPicUrl:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTaxonRank:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTaxonRankLevel:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonReceiver:Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

.field private mTaxonSearchStarted:Z

.field private mTaxonTextChanged:Z

.field private mTimeObservedAtButton:Landroid/widget/TextView;

.field private mTimeSetByUser:Ljava/sql/Timestamp;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mTopActionBar:Landroid/support/v7/app/ActionBar;

.field public mUri:Landroid/net/Uri;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$UriBundler;
    .end annotation
.end field

.field private mViewOnInat:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCanceled:Z

    .line 150
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    .line 151
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mChoseNewPhoto:Z

    const/4 v1, 0x0

    .line 152
    iput-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    .line 185
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsUpdated:Z

    .line 186
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDeleted:Z

    const-string v2, ""

    .line 190
    iput-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mPreviousTaxonSearch:Ljava/lang/String;

    .line 202
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 203
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonSearchStarted:Z

    .line 204
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    .line 212
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAskedForLocationPermission:Z

    .line 213
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    .line 1183
    new-instance v0, Ljava/lang/String;

    const v2, 0xf4240

    new-array v2, v2, [C

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->big:Ljava/lang/String;

    .line 1595
    new-instance v0, Lorg/inaturalist/android/ObservationEditor$20;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationEditor$20;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1628
    new-instance v0, Lorg/inaturalist/android/ObservationEditor$21;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationEditor$21;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 1664
    iput-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/Spinner;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->updateObservationVisibilityDescription()V

    return-void
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ObservationEditor;)Landroid/database/Cursor;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ObservationEditor;Landroid/app/Activity;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->openImageIntent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->getLocation()V

    return-void
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->setPlaceGuess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ObservationEditor;I)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->editNextObservation(I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/ObservationEditor;)Ljava/util/List;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/ObservationEditor;Ljava/util/List;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ObservationEditor;->importPhotos(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1802(Lorg/inaturalist/android/ObservationEditor;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationEditor;->mCanceled:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/ObservationEditor;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/inaturalist/android/ObservationEditor;->mDeleted:Z

    return p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/ObservationEditor;)Ljava/lang/Boolean;
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->isDeleteable()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/ObservationEditor;Z)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->delete(Z)V

    return-void
.end method

.method static synthetic access$2200(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->takePhoto()V

    return-void
.end method

.method static synthetic access$2300(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->choosePhoto()V

    return-void
.end method

.method static synthetic access$2400(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->returnToObsList()V

    return-void
.end method

.method static synthetic access$2500(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->revertPhotos()V

    return-void
.end method

.method static synthetic access$2600(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToProjectFieldValues()V

    return-void
.end method

.method static synthetic access$2700(Lorg/inaturalist/android/ObservationEditor;)Z
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->save()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->clearSpeciesGuess()V

    return-void
.end method

.method static synthetic access$3002(Lorg/inaturalist/android/ObservationEditor;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetByUser:Ljava/sql/Timestamp;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/inaturalist/android/ObservationEditor;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetByUser:Ljava/sql/Timestamp;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/inaturalist/android/ObservationEditor;Landroid/location/Location;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->handleNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->prepareCapturedPhoto(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ObservationEditor;->createObservationPhotoForPhoto(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    return-void
.end method

.method static synthetic access$3800(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->importPhotoMetadata(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ObservationEditor;)Landroid/view/ViewGroup;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesNameOnboarding:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/inaturalist/android/ObservationEditor;)Landroid/view/View;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ProgressBar;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$4302(Lorg/inaturalist/android/ObservationEditor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFields:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->addProjectFieldViewers()V

    return-void
.end method

.method static synthetic access$4500(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonReceiver:Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    return-object p0
.end method

.method static synthetic access$4600(Lorg/inaturalist/android/ObservationEditor;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p9}, Lorg/inaturalist/android/ObservationEditor;->setTaxon(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ImageView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/ObservationEditor;Z)Z
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonSearchStarted:Z

    return p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ObservationEditor;)Lorg/lucasr/twowayview/TwoWayView;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/EditText;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    return-object p0
.end method

.method private addPhotoToGallery(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 3080
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3081
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, ".jpeg"

    .line 3086
    invoke-static {v0, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3091
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3093
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3094
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 3096
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v5, 0x0

    .line 3097
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 3098
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 3099
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 3101
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v2

    :goto_0
    const-string v1, "INAT: ObservationEditor"

    const-string v3, "Failed to write gallery photo"

    .line 3107
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 3110
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3112
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catch_2
    move-exception p1

    const-string v0, "INAT: ObservationEditor"

    const-string v1, "Failed to create gallery photo"

    .line 3103
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v2
.end method

.method private addProjectFieldViewers()V
    .locals 2

    .line 3033
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFields:Ljava/util/ArrayList;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$33;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$33;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private choosePhoto()V
    .locals 5

    .line 949
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isExternalStoragePermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$16;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$16;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestExternalStoragePermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 964
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->getOutputMediaFileUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 965
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-direct {p0, p0, v1}, Lorg/inaturalist/android/ObservationEditor;->getPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 967
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    .line 968
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    .line 969
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_1

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 973
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "iNaturalistPreferences"

    const/4 v3, 0x0

    .line 975
    invoke-virtual {p0, v2, v3}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "shown_multi_select_toast"

    .line 976
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const v3, 0x7f100232

    .line 978
    invoke-static {p0, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 979
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shown_multi_select_toast"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const/16 v2, 0x69

    .line 983
    invoke-virtual {p0, v1, v2}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 986
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPictureTaken:Z

    return-void
.end method

.method private clearSpeciesGuess()V
    .locals 6

    const/4 v0, 0x0

    .line 3250
    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    .line 3251
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, v1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 3252
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 3253
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 3254
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3255
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3256
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3257
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 3258
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    const v5, 0x7f1003a2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 3260
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3262
    :goto_0
    iput-boolean v3, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    const-string v2, "Unknown"

    .line 3263
    iput-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mPreviousTaxonSearch:Ljava/lang/String;

    .line 3264
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, v2, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    .line 3265
    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    .line 3266
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    .line 3267
    iput-boolean v3, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCustomTaxon:Z

    .line 3269
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    const v1, 0x7f08024c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 3271
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3274
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private createObservationPhotoForPhoto(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 2445
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/ObservationEditor;->createObservationPhotoForPhoto(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private createObservationPhotoForPhoto(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x1

    .line 2467
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    .line 2469
    invoke-static {p0, p1}, Lorg/inaturalist/android/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2470
    invoke-static {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->getExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v3, 0x2e

    .line 2473
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/2addr v3, v0

    .line 2475
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 2480
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2481
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2482
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    .line 2488
    invoke-static {p0, v1, p1, v2}, Lorg/inaturalist/android/ImageUtils;->resizeImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 2495
    :cond_2
    new-instance v0, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>()V

    .line 2497
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/ObservationPhoto;->uuid:Ljava/lang/String;

    .line 2499
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "_observation_id"

    .line 2500
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "observation_id"

    .line 2501
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "photo_filename"

    .line 2502
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "original_photo_filename"

    .line 2503
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "position"

    .line 2504
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2506
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private final delete(Z)V
    .locals 6

    .line 1556
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1560
    :try_start_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1562
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1564
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_observation_id=?"

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "INAT: ObservationEditor"

    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete observation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1571
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    const-string v2, "is_deleted"

    .line 1572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1573
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1576
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDeleted:Z

    return-void
.end method

.method private deletePhoto(I)V
    .locals 3

    .line 2581
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    .line 2582
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2586
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    .line 2588
    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2589
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2591
    new-instance p1, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {p1, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    .line 2592
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_deleted"

    .line 2596
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2597
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2599
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    .line 2602
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    .line 2603
    invoke-virtual {p1, v2}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->refreshPhotoPositions(Ljava/lang/Integer;)V

    return-void
.end method

.method private editNextObservation(I)V
    .locals 8

    const-string v0, "ObservationEditor"

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editNextObservation: Direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 860
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const/4 v2, 0x0

    .line 861
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(_synced_at IS NULL"

    if-eqz v0, :cond_0

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR user_login = \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND (is_deleted = 0 OR is_deleted is NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 868
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 873
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "ObservationEditor"

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current obs id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "_id"

    .line 876
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "id"

    .line 877
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 878
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    .line 879
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "ObservationEditor"

    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found current obs with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 883
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 886
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, -0x1

    if-ne p1, v2, :cond_a

    .line 887
    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    if-ne p1, v1, :cond_7

    const-string p1, "ObservationEditor"

    const-string v2, "Moving to previous observation"

    .line 892
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_7
    const-string p1, "ObservationEditor"

    const-string v2, "Moving to next observation"

    .line 895
    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_1
    const-string p1, "_id"

    .line 898
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "id"

    .line 899
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ObservationEditor"

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Next obs ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 902
    sget-object v0, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    const-class v3, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {v0, v2, p1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "return_to_observation_list"

    .line 904
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 905
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->startActivity(Landroid/content/Intent;)V

    .line 907
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToProjectFieldValues()V

    .line 908
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->save()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 909
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    if-eqz p1, :cond_9

    .line 910
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->returnToObsList()V

    :cond_9
    const/16 p1, 0x1001

    .line 913
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 914
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    :cond_a
    return-void
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    .line 2645
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const/4 v0, 0x0

    .line 2650
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 2652
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_data"

    .line 2653
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 2654
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 2658
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public static getExtension(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 2452
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2454
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 2455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2459
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getLocation()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1710
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1711
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAskedForLocationPermission:Z

    if-nez v0, :cond_0

    .line 1712
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mAskedForLocationPermission:Z

    .line 1714
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$22;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$22;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestLocationPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    :cond_0
    return-void

    .line 1729
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_2

    return-void

    .line 1733
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1734
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1735
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1738
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    .line 1740
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    const-string v0, "location"

    .line 1741
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    .line 1744
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_4

    .line 1746
    new-instance v0, Lorg/inaturalist/android/ObservationEditor$23;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationEditor$23;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    .line 1760
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1763
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1764
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1767
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRequestedAt:Ljava/lang/Long;

    return-void
.end method

.method private getOutputMediaFileUri(I)Landroid/net/Uri;
    .locals 4

    .line 1585
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1586
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observation_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_created_at:Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 1588
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 2675
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 2678
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2680
    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2681
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 2682
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2683
    aget-object v0, p1, v1

    const-string v1, "primary"

    .line 2685
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 2691
    :cond_1
    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2693
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://downloads/public_downloads"

    .line 2695
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2694
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 2700
    :cond_2
    invoke-static {p2}, Lorg/inaturalist/android/ObservationEditor;->isMediaDocument(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2701
    invoke-static {p2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    .line 2702
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2703
    aget-object p2, p1, v1

    const-string v0, "image"

    .line 2706
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2707
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    const-string v0, "video"

    .line 2708
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2709
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_4
    const-string v0, "audio"

    .line 2710
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2711
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2715
    :cond_5
    :goto_1
    new-array p2, v2, [Ljava/lang/String;

    aget-object v0, p1, v2

    aput-object v0, p2, v1

    .line 2720
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, "content"

    .line 2725
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p2

    :cond_7
    const-string p1, "file"

    .line 2729
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-object p2

    :cond_8
    return-object v3
.end method

.method private getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    const-string v0, "notification"

    .line 3190
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3191
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3192
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "taxon_names"

    .line 3195
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 3196
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3197
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "lexicon"

    .line 3198
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3199
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "name"

    .line 3201
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    if-nez v1, :cond_5

    :try_start_1
    const-string v0, "unique_name"

    .line 3212
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "default_name"

    .line 3217
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 3218
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    const-string v0, "common_name"

    .line 3221
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "name"

    .line 3223
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v0, "preferred_common_name"

    .line 3225
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string v0, "english_common_name"

    .line 3227
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3228
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "name"

    .line 3229
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method private guessLocation()V
    .locals 2

    .line 1809
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1813
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$24;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$24;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1840
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private handleNewLocation(Landroid/location/Location;)V
    .locals 3

    .line 1773
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCurrentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/ObservationEditor;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->setCurrentLocation(Landroid/location/Location;)V

    .line 1777
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mCurrentLocation:Landroid/location/Location;

    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->locationIsGood(Landroid/location/Location;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1779
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1783
    :goto_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->locationRequestIsOld()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mCurrentLocation:Landroid/location/Location;

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ObservationEditor;->locationIsGoodEnough(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1785
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    const/4 p1, 0x1

    .line 1789
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1790
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 1793
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1794
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private hasNoCoords()Z
    .locals 2

    .line 1072
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private importPhotoMetadata(Landroid/net/Uri;)V
    .locals 7

    .line 2512
    :try_start_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2513
    new-instance v1, Landroid/support/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/support/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x2

    .line 2514
    new-array v2, v2, [F

    .line 2515
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToObservation()V

    .line 2516
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface;->getLatLong([F)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2517
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    .line 2518
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    const/4 v5, 0x0

    aget v5, v2, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v3, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 2519
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    const/4 v5, 0x1

    aget v2, v2, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v3, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 2520
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v4, v2, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 2522
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v3, "private"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v3, "obscured"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2523
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 2524
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 2527
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->latitude_changed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2528
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2529
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->guessLocation()V

    goto :goto_0

    .line 2531
    :cond_2
    invoke-direct {p0, v4}, Lorg/inaturalist/android/ObservationEditor;->setPlaceGuess(Ljava/lang/String;)V

    .line 2541
    :cond_3
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_4

    const-string v2, "DateTime"

    .line 2543
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "DateTimeOriginal"

    .line 2545
    invoke-virtual {v1, v2}, Landroid/support/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_5

    .line 2549
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2551
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 2552
    new-instance v3, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    .line 2553
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 2554
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 2555
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4, v3}, Lorg/inaturalist/android/INaturalistApp;->formatDatetime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 2557
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4, v3}, Lorg/inaturalist/android/INaturalistApp;->formatDatetime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2558
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2559
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4, v3}, Lorg/inaturalist/android/INaturalistApp;->shortFormatTime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2560
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2561
    iput-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetByUser:Ljava/sql/Timestamp;

    .line 2562
    iput-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetByUser:Ljava/sql/Timestamp;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "INAT: ObservationEditor"

    .line 2564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2568
    :cond_5
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v4, v1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 2569
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v4, v1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 2570
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v4, v1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 2573
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2574
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->observationToUi()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const-string v0, "INAT: ObservationEditor"

    .line 2576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private importPhotos(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .line 2386
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v1, 0x7f100191

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;)V

    .line 2388
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$29;

    invoke-direct {v1, p0, p1, p2}, Lorg/inaturalist/android/ObservationEditor$29;-><init>(Lorg/inaturalist/android/ObservationEditor;Ljava/util/List;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2440
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initObservation()V
    .locals 7

    .line 1245
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1246
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/inaturalist/android/ObservationEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 1248
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 1251
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    if-nez v0, :cond_2

    .line 1252
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1253
    new-instance v0, Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    goto :goto_1

    .line 1255
    :cond_1
    new-instance v0, Lorg/inaturalist/android/Observation;

    invoke-direct {v0}, Lorg/inaturalist/android/Observation;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    return-void

    .line 1260
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1261
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private initUi()V
    .locals 7

    .line 1266
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->initObservation()V

    .line 1268
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1269
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1270
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1273
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mChoseNewPhoto:Z

    if-nez v0, :cond_2

    .line 1274
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1278
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1280
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->getLocation()V

    :cond_0
    const-string v0, "android.intent.action.INSERT"

    .line 1283
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1284
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-nez v0, :cond_1

    .line 1285
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    new-instance v4, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    iput-object v4, v3, Lorg/inaturalist/android/Observation;->observed_on_was:Ljava/sql/Timestamp;

    iput-object v4, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 1286
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object v4, v3, Lorg/inaturalist/android/Observation;->time_observed_at_was:Ljava/sql/Timestamp;

    iput-object v4, v0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    .line 1287
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-virtual {v4, v5}, Lorg/inaturalist/android/INaturalistApp;->formatDatetime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/inaturalist/android/Observation;->observed_on_string_was:Ljava/lang/String;

    iput-object v4, v0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 1290
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCurrentLocation:Landroid/location/Location;

    if-nez v0, :cond_2

    .line 1291
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1292
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->getLocation()V

    .line 1298
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1300
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/INaturalistApp;->getErrorsForObservation(I)Lorg/json/JSONArray;

    move-result-object v0

    const v3, 0x7f0a0124

    .line 1301
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1303
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1304
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1306
    :cond_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1309
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    const-string v4, "&#8226; "

    .line 1310
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4

    const-string v4, "<br/>"

    .line 1313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1318
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    :cond_6
    :goto_1
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->updateUi()V

    return-void
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1931
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1934
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 1937
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isDeleteable()Ljava/lang/Boolean;
    .locals 9

    .line 1517
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1518
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    new-array v4, v1, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1519
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "android.intent.action.INSERT"

    .line 1522
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCanceled:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1523
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.downloads.documents"

    .line 2619
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.externalstorage.documents"

    .line 2611
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "com.android.providers.media.documents"

    .line 2627
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 3054
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3055
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3056
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

.method private locationIsGood(Landroid/location/Location;)Z
    .locals 2

    .line 1941
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->locationIsGoodEnough(Landroid/location/Location;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1942
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private locationIsGoodEnough(Landroid/location/Location;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1949
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1950
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private locationRequestIsOld()Z
    .locals 5

    .line 1923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationRequestedAt:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private observationToUi()V
    .locals 6

    .line 1391
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1393
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1394
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1395
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 1397
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1399
    :goto_1
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->updateObservationVisibilityDescription()V

    .line 1401
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1404
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const/4 v0, 0x1

    .line 1406
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 1407
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget-boolean v3, p0, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-eqz v3, :cond_2

    const-string v3, "Unknown"

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1408
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    const v3, 0x7f1003a2

    const/16 v4, 0x8

    if-eqz v0, :cond_4

    .line 1409
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1410
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1411
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_3

    .line 1413
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1415
    :goto_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1417
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1418
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1420
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1422
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    iget v3, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v1, v3, v5}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1425
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    iget v3, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v1, v3, v5}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1428
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1429
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1430
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 1432
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1436
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const v5, 0x7f1003a9

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setHint(I)V

    .line 1438
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1439
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1440
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 1442
    :cond_9
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    :goto_4
    iput-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 1448
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-nez v0, :cond_a

    .line 1450
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    const v1, 0x7f100324

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 1453
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/INaturalistApp;->shortFormatDate(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1454
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1456
    :goto_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1457
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1459
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetByUser:Ljava/sql/Timestamp;

    .line 1461
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-nez v0, :cond_c

    .line 1462
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    const v1, 0x7f100326

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 1465
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/INaturalistApp;->shortFormatTime(Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1466
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetByUser:Ljava/sql/Timestamp;

    .line 1467
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1470
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-eqz v0, :cond_d

    goto :goto_7

    .line 1474
    :cond_d
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1471
    :cond_e
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_f
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    goto :goto_8

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00db

    .line 1472
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1476
    :goto_a
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-eqz v0, :cond_10

    goto :goto_b

    .line 1479
    :cond_10
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1477
    :cond_11
    :goto_b
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    :goto_c
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_12
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    goto :goto_c

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    :goto_e
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    const v1, 0x7f0a0017

    const v3, 0x7f0a0018

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    if-nez v0, :cond_13

    .line 1482
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    .line 1487
    :cond_13
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    :goto_f
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_14
    iget-object v5, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->private_positional_accuracy:Ljava/lang/Integer;

    goto :goto_f

    :goto_10
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1488
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1489
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    :goto_11
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    .line 1493
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    const v1, 0x7f0a019a

    const v3, 0x7f0a019b

    if-eqz v0, :cond_15

    .line 1494
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1495
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 1497
    :cond_15
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1498
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    :goto_12
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1503
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v0, :cond_16

    goto :goto_13

    .line 1507
    :cond_16
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const v1, 0x7f100325

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    .line 1504
    :cond_17
    :goto_13
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_14

    :cond_18
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_15
    return-void
.end method

.method private onBack()Z
    .locals 12

    const-string v0, "INAT: ObservationEditor"

    const-string v1, "onBack 1"

    .line 996
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1002
    :cond_0
    new-instance v0, Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v2}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 1003
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToObservation()V

    .line 1004
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->isDirty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    if-nez v2, :cond_4

    const-string v0, "android.intent.action.INSERT"

    .line 1007
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v2, "New Obs - Cancel"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 1010
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1011
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->returnToObsList()V

    .line 1014
    :cond_2
    iput-boolean v3, p0, Lorg/inaturalist/android/ObservationEditor;->mCanceled:Z

    const-string v0, "INAT: ObservationEditor"

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBack 2 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1001

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 1017
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return v1

    .line 1022
    :cond_4
    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    const v6, 0x7f100148

    const v7, 0x7f100134

    const v8, 0x7f1003b1

    const v9, 0x7f100260

    .line 1025
    new-instance v10, Lorg/inaturalist/android/ObservationEditor$17;

    invoke-direct {v10, p0}, Lorg/inaturalist/android/ObservationEditor$17;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    const/4 v11, 0x0

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v4 .. v11}, Lorg/inaturalist/android/ObservationEditor;->confirm(Landroid/app/Activity;IIIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    const-string v0, "INAT: ObservationEditor"

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBack 3 - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 998
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return v1
.end method

.method private openImageIntent(Landroid/app/Activity;)V
    .locals 1

    .line 3061
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-direct {v0, p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    const p1, 0x7f0e000d

    invoke-virtual {v0, p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ObservationEditor$34;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationEditor$34;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {p1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 3074
    invoke-virtual {p1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    return-void
.end method

.method private prepareCapturedPhoto(Landroid/net/Uri;)V
    .locals 5

    .line 2314
    invoke-static {p0, p1}, Lorg/inaturalist/android/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 2317
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isExternalStoragePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2318
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->addPhotoToGallery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2327
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ObservationEditor;->createObservationPhotoForPhoto(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2328
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mCameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2333
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2334
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    if-nez v2, :cond_2

    .line 2337
    new-instance p1, Lorg/inaturalist/android/ObservationEditor$27;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationEditor$27;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2343
    iput-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    return-void

    .line 2348
    :cond_2
    new-instance p1, Lorg/inaturalist/android/ObservationEditor$28;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationEditor$28;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshProjectFields()V
    .locals 3

    .line 3017
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lorg/inaturalist/android/ObservationEditor$32;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationEditor$32;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-static {p0, v0, v1, v2}, Lorg/inaturalist/android/ProjectFieldViewer;->getProjectFields(Landroid/content/Context;Ljava/util/List;ILorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;)V

    return-void
.end method

.method private refreshProjectList()V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectCount:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    const v1, 0x7f1002dc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    const-string v1, "#8A000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    const v1, 0x7f100031

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private returnToObsList()V
    .locals 3

    .line 3243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from_obs_editor"

    const/4 v2, 0x1

    .line 3244
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3245
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private revertPhotos()V
    .locals 6

    .line 1052
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ObservationPhoto;

    .line 1053
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_deleted"

    const/4 v5, 0x0

    .line 1054
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1, v3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1060
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1061
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1065
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    .line 1066
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    .line 1067
    invoke-virtual {v0, v2}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->refreshPhotoPositions(Ljava/lang/Integer;)V

    return-void
.end method

.method private final save()Z
    .locals 5

    .line 1527
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1529
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToObservation()V

    .line 1531
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->saveProjects()Z

    move-result v0

    .line 1532
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->saveProjectFields()V

    const-string v2, "android.intent.action.INSERT"

    .line 1534
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->isDirty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsUpdated:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 1537
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->owners_identification_from_vision:Ljava/lang/Boolean;

    .line 1538
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 1539
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->latitude_changed()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "positioning_method"

    const-string v3, "gps"

    .line 1540
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "positioning_device"

    const-string v3, "gps"

    .line 1541
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "INAT: ObservationEditor"

    .line 1545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to save observation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setErrorsForObservation(IILorg/json/JSONArray;)V

    :cond_4
    return v1
.end method

.method private saveProjectFields()V
    .locals 9

    .line 1959
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ProjectFieldValue;

    .line 1960
    iget-object v2, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 1964
    :cond_0
    iget-object v2, v1, Lorg/inaturalist/android/ProjectFieldValue;->_id:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1966
    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v4, "_synced_at"

    .line 1967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1968
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1969
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1972
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldValue;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v2, v4, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private saveProjects()Z
    .locals 15

    const/4 v0, 0x0

    .line 1979
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1980
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    const-string v3, ","

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1982
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1985
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(observation_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") AND (project_id NOT IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1989
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1991
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 1992
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1993
    new-instance v5, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v5, v4}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 1994
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    .line 1995
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v7, v8, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1996
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1998
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2002
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(observation_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") AND (project_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-string v14, "_id DESC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2006
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2008
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2010
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2011
    new-instance v5, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v5, v2}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 2012
    iget-object v8, v5, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v7, :cond_2

    .line 2013
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 2015
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    .line 2016
    iget-object v8, v5, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v8, v9, v5, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2018
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 2020
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2023
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lorg/apache/commons/collections4/CollectionUtils;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v4, v1

    const/4 v1, 0x0

    .line 2025
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 2026
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2027
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2028
    new-instance v6, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v6}, Lorg/inaturalist/android/ProjectObservation;-><init>()V

    .line 2029
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    .line 2030
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v6, Lorg/inaturalist/android/ProjectObservation;->observation_id:Ljava/lang/Integer;

    .line 2031
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v6, Lorg/inaturalist/android/ProjectObservation;->is_new:Ljava/lang/Boolean;

    .line 2032
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v6, Lorg/inaturalist/android/ProjectObservation;->is_deleted:Ljava/lang/Boolean;

    .line 2034
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Lorg/inaturalist/android/ProjectObservation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2037
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setCurrentLocation(Landroid/location/Location;)V
    .locals 8

    .line 1865
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mCurrentLocation:Landroid/location/Location;

    .line 1868
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCameraPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1871
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 1872
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1874
    new-instance v6, Landroid/support/media/ExifInterface;

    invoke-direct {v6, v1}, Landroid/support/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "GPSLatitude"

    .line 1875
    invoke-static {v2, v3}, Lorg/inaturalist/android/GPSEncoder;->convert(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GPSLatitudeRef"

    .line 1876
    invoke-static {v2, v3}, Lorg/inaturalist/android/GPSEncoder;->latitudeRef(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GPSLongitude"

    .line 1877
    invoke-static {v4, v5}, Lorg/inaturalist/android/GPSEncoder;->convert(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GPSLongitudeRef"

    .line 1878
    invoke-static {v4, v5}, Lorg/inaturalist/android/GPSEncoder;->longitudeRef(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/support/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v6}, Landroid/support/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1881
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1886
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 1887
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 1889
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v1, "private"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v1, "obscured"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1890
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 1891
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 1894
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1895
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00db

    .line 1897
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    const v2, 0x7f0a0017

    const v3, 0x7f0a0018

    if-eqz v0, :cond_3

    .line 1900
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1901
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 1902
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1903
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1905
    :cond_3
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1906
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const-string p1, "android.intent.action.INSERT"

    .line 1909
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1910
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->latitude_was:Ljava/lang/Double;

    .line 1911
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->longitude_was:Ljava/lang/Double;

    .line 1912
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->positional_accuracy_was:Ljava/lang/Integer;

    .line 1915
    :cond_4
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1916
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->guessLocation()V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 1918
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->setPlaceGuess(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private setPlaceGuess(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1845
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1847
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1848
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1849
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1850
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v2, "private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v2, "obscured"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1851
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object p1, v1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    .line 1852
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    goto :goto_0

    .line 1854
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object p1, v1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    .line 1855
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_0

    .line 1858
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const v1, 0x7f100325

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1859
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const-string v1, "#757575"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1860
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, p1, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setTaxon(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 3121
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    iput-object v2, v0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    if-eqz p9, :cond_1

    .line 3123
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    .line 3124
    iget-object p9, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object p1, p9, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 3126
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    if-eqz p5, :cond_2

    move-object p6, v1

    goto :goto_1

    :cond_2
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    :goto_1
    iput-object p6, p1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    .line 3127
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object p2, p1, Lorg/inaturalist/android/Observation;->scientific_name:Ljava/lang/String;

    .line 3128
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object p4, p1, Lorg/inaturalist/android/Observation;->rank:Ljava/lang/String;

    .line 3129
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    iput-object p6, p1, Lorg/inaturalist/android/Observation;->rank_level:Ljava/lang/Integer;

    const/4 p1, 0x1

    .line 3130
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 3132
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const/4 p6, 0x0

    invoke-virtual {p1, v1, p6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3133
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {p1, v1, p6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3135
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3137
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3139
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget-object p9, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    invoke-virtual {p1, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3140
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget p9, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {p1, p2, p9, v0}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 3142
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget-object p9, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    invoke-virtual {p1, p9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3143
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget p9, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {p1, p2, p9, v0}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    .line 3146
    :goto_2
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {p1, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3147
    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    .line 3148
    iput p3, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    .line 3149
    iput-object p4, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    .line 3150
    iput-boolean p6, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 3151
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mPreviousTaxonSearch:Ljava/lang/String;

    if-eqz p5, :cond_4

    move-object p7, v1

    .line 3152
    :cond_4
    iput-object p7, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    .line 3153
    iput-boolean p6, p0, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    .line 3154
    iput-boolean p5, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCustomTaxon:Z

    .line 3155
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    if-eqz p5, :cond_5

    move-object p8, v1

    :cond_5
    iput-object p8, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    .line 3157
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 3158
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 3160
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3161
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCustomTaxon:Z

    if-nez p1, :cond_6

    .line 3162
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    const p3, 0x7f08024c

    new-instance p4, Lorg/inaturalist/android/ObservationEditor$35;

    invoke-direct {p4, p0}, Lorg/inaturalist/android/ObservationEditor$35;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-static {p1, p2, p3, p4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_3

    .line 3177
    :cond_6
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    const p2, 0x7f08027d

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3178
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-le p1, p2, :cond_7

    .line 3179
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    :goto_3
    return-void
.end method

.method private stopGetLocation()V
    .locals 2

    .line 1799
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 1800
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 1803
    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationListener:Landroid/location/LocationListener;

    const/4 v0, 0x0

    .line 1804
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    return-void
.end method

.method private takePhoto()V
    .locals 4

    .line 921
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isCameraPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$15;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$15;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestCameraPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void

    .line 936
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 938
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 940
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "output"

    .line 941
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 942
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ObservationEditor;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    .line 945
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mPictureTaken:Z

    return-void
.end method

.method private uiToObservation()V
    .locals 5

    .line 1333
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonSearchStarted:Z

    if-nez v0, :cond_2

    .line 1334
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    .line 1336
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 1338
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    .line 1341
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    .line 1342
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 1345
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 1346
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetByUser:Ljava/sql/Timestamp;

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    .line 1347
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetByUser:Ljava/sql/Timestamp;

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    goto :goto_1

    .line 1343
    :cond_7
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->observed_on_string:Ljava/lang/String;

    .line 1350
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    .line 1353
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 1354
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    goto :goto_3

    .line 1351
    :cond_9
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 1356
    :goto_3
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    .line 1359
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 1360
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    goto :goto_5

    .line 1357
    :cond_b
    :goto_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 1362
    :goto_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    .line 1365
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    goto :goto_7

    .line 1363
    :cond_d
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v2, v0, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 1368
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 1369
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    .line 1372
    :cond_e
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1374
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_10

    .line 1375
    :cond_f
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iput-object v0, v1, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    .line 1378
    :cond_10
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    if-eqz v0, :cond_12

    .line 1379
    :cond_11
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mIsCaptive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    :cond_12
    return-void
.end method

.method private uiToProjectFieldValues()V
    .locals 4

    .line 1224
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1226
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1227
    iget-object v3, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/ProjectFieldValue;

    .line 1228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lorg/inaturalist/android/ProjectFieldValue;->observation_id:Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 1229
    iput-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsUpdated:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateImageOrientation(Landroid/net/Uri;)V
    .locals 3

    .line 2738
    invoke-static {p0, p1}, Lorg/inaturalist/android/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2742
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2745
    :try_start_0
    invoke-static {v0}, Lorg/inaturalist/android/ImageUtils;->getImageOrientation(Ljava/lang/String;)I

    move-result v0

    const-string v2, "orientation"

    .line 2746
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2747
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "INAT: ObservationEditor"

    .line 2749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t update image orientation for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateObservationVisibilityDescription()V
    .locals 4

    .line 1384
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1386
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0a01e0

    .line 1387
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f100207

    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateUi()V
    .locals 0

    .line 1327
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->observationToUi()V

    .line 1329
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    return-void
.end method


# virtual methods
.method public final confirm(Landroid/app/Activity;IIIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    .line 2999
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {p0, p2}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ObservationEditor$30;

    invoke-direct {v3, p0, p6}, Lorg/inaturalist/android/ObservationEditor$30;-><init>(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/Runnable;)V

    new-instance v4, Lorg/inaturalist/android/ObservationEditor$31;

    invoke-direct {v4, p0, p7}, Lorg/inaturalist/android/ObservationEditor$31;-><init>(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/Runnable;)V

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14

    move-object v11, p0

    move v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 2042
    invoke-super/range {p0 .. p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2043
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lorg/inaturalist/android/ObservationEditor$25;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ObservationEditor$25;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    const-wide/16 v5, 0xa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, -0x1

    const/16 v4, 0x68

    if-ne v0, v4, :cond_2

    if-ne v1, v3, :cond_20

    const-string v0, "set_default_photo_index"

    .line 2059
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "delete_photo_index"

    .line 2060
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2061
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_1

    .line 2062
    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    .line 2063
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2064
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;->setAsFirstPhoto(I)V

    .line 2067
    :cond_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - New Default Photo"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 2068
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_20

    .line 2069
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->deletePhoto(I)V

    .line 2071
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Delete Photo"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_2
    const/16 v4, 0x67

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v4, :cond_6

    if-ne v1, v3, :cond_20

    .line 2076
    iput-boolean v6, v11, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    .line 2077
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    .line 2079
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Location Changed"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    const-string v0, "longitude"

    const-wide/16 v3, 0x0

    .line 2081
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v6, "latitude"

    .line 2082
    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v6, "accuracy"

    .line 2083
    invoke-virtual {v2, v6, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 2084
    iget-object v4, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v4, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    .line 2085
    iget-object v4, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, v4, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    .line 2086
    iget-object v4, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 2088
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v3, "private"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v3, "obscured"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2089
    :cond_3
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 2090
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    iput-object v3, v2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 2094
    :cond_4
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00db

    .line 2097
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0018

    .line 2098
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0017

    .line 2099
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2101
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2102
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->guessLocation()V

    goto/16 :goto_d

    .line 2104
    :cond_5
    invoke-direct {p0, v5}, Lorg/inaturalist/android/ObservationEditor;->setPlaceGuess(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_6
    const/16 v4, 0x12e

    if-ne v0, v4, :cond_12

    .line 2109
    iput-boolean v7, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonSearchStarted:Z

    if-ne v1, v3, :cond_a

    const-string v0, "iconic_taxon_name"

    .line 2111
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "taxon_name"

    .line 2112
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id_name"

    .line 2113
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "id_url"

    .line 2114
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "taxon_id"

    .line 2115
    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "rank_level"

    .line 2116
    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "rank"

    .line 2117
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "is_custom"

    .line 2118
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string v6, "from_suggestion"

    .line 2119
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v11, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    .line 2121
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 2122
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->clearSpeciesGuess()V

    goto :goto_0

    .line 2124
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x1

    move-object v1, p0

    move-object v2, v12

    move-object v3, v0

    move v6, v13

    invoke-direct/range {v1 .. v10}, Lorg/inaturalist/android/ObservationEditor;->setTaxon(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    .line 2128
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "New Value"

    .line 2129
    iget-boolean v2, v11, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-eqz v2, :cond_8

    const-string v12, "Unknown"

    :cond_8
    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Is Taxon"

    if-eqz v13, :cond_9

    const-string v2, "No"

    goto :goto_1

    :cond_9
    const-string v2, "Yes"

    .line 2130
    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Obs - Taxon Changed"

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    .line 2134
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d

    .line 2139
    :cond_a
    iput-boolean v6, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 2140
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget-boolean v1, v11, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-eqz v1, :cond_b

    const-string v1, "Unknown"

    goto :goto_2

    :cond_b
    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2141
    iput-boolean v7, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonTextChanged:Z

    .line 2143
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    invoke-virtual {v0, v5, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2144
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2146
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    iget-boolean v1, v11, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2148
    iget-boolean v0, v11, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-nez v0, :cond_10

    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_5

    .line 2156
    :cond_d
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2158
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget-boolean v1, v11, Lorg/inaturalist/android/ObservationEditor;->mIsTaxonUnknown:Z

    if-eqz v1, :cond_e

    const-string v1, "Unknown"

    goto :goto_4

    :cond_e
    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    iget v2, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v3, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    .line 2161
    :cond_f
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mScientificName:Ljava/lang/String;

    iget v2, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonRankLevel:I

    iget-object v3, v11, Lorg/inaturalist/android/ObservationEditor;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_d

    .line 2149
    :cond_10
    :goto_5
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getSuggestSpecies()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2150
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    const v1, 0x7f1003a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2151
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_d

    .line 2153
    :cond_11
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_12
    const/16 v4, 0x12d

    if-ne v0, v4, :cond_13

    if-ne v1, v3, :cond_20

    .line 2170
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldViewers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 2171
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ProjectFieldViewer;->onTaxonSearchResult(Landroid/content/Intent;)V

    goto :goto_6

    :cond_13
    const/16 v4, 0x66

    if-ne v0, v4, :cond_15

    if-ne v1, v3, :cond_20

    const-string v0, "project_ids"

    .line 2176
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "project_fields"

    .line 2177
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2179
    iget-object v2, v11, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2181
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "Obs - Projects Changed"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 2184
    :cond_14
    iput-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    .line 2185
    iput-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldValues:Ljava/util/HashMap;

    .line 2187
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->refreshProjectFields()V

    .line 2188
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->refreshProjectList()V

    goto/16 :goto_d

    :cond_15
    const/16 v4, 0x69

    if-ne v0, v4, :cond_1c

    if-ne v1, v3, :cond_1b

    .line 2193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_16

    .line 2196
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    .line 2200
    :goto_7
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_19

    .line 2201
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 2202
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 2203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    if-nez v2, :cond_17

    goto :goto_8

    .line 2207
    :cond_17
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    :goto_8
    if-nez v5, :cond_18

    .line 2209
    iget-object v5, v11, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 2211
    :cond_18
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2215
    :cond_19
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "android.intent.action.INSERT"

    .line 2217
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "numPics"

    .line 2219
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2220
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "New Obs - Library Picked"

    invoke-virtual {v2, v3, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_9

    :cond_1a
    const-string v2, "Source"

    const-string v3, "Gallery"

    .line 2223
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "Count"

    .line 2224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2225
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "Obs - Add Photo"

    invoke-virtual {v2, v3, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 2228
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2232
    :goto_9
    invoke-direct {p0, v1, v7}, Lorg/inaturalist/android/ObservationEditor;->importPhotos(Ljava/util/List;Z)V

    goto/16 :goto_d

    .line 2234
    :cond_1b
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-boolean v0, v11, Lorg/inaturalist/android/ObservationEditor;->mPhotosChanged:Z

    if-nez v0, :cond_20

    .line 2235
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "choose_photo"

    .line 2236
    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2238
    invoke-direct {p0, v6}, Lorg/inaturalist/android/ObservationEditor;->delete(Z)V

    .line 2239
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    :cond_1c
    const/16 v4, 0x64

    if-ne v0, v4, :cond_20

    if-ne v1, v3, :cond_1d

    .line 2249
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Source"

    const-string v2, "Camera"

    .line 2250
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Count"

    .line 2251
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2253
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Obs - Add Photo"

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 2255
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2258
    :goto_a
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    const-string v1, "INAT: ObservationEditor"

    const-string v2, "%s"

    .line 2260
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    iget-object v1, v11, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v2, 0x7f1002d1

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;)V

    .line 2265
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/inaturalist/android/ObservationEditor$26;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationEditor$26;-><init>(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2289
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_c

    :cond_1d
    if-nez v1, :cond_1e

    goto :goto_c

    :cond_1e
    const v3, 0x7f100339

    .line 2296
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v8, v11, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "INAT: ObservationEditor"

    .line 2297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera bailed, requestCode: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1f

    const-string v0, "null"

    goto :goto_b

    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    :goto_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :goto_c
    iput-object v5, v11, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    :cond_20
    :goto_d
    const-string v0, "android.intent.action.INSERT"

    .line 2303
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2305
    iget-object v0, v11, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_21

    iget-boolean v0, v11, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    if-eqz v0, :cond_21

    .line 2307
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->getLocation()V

    :cond_21
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "INAT: ObservationEditor"

    const-string v1, "onBackPressed"

    .line 991
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->onBack()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v10, p0

    .line 263
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-static/range {p0 .. p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    .line 267
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v12

    :goto_0
    if-eqz v11, :cond_1

    .line 268
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 270
    :cond_1
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 271
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    const/16 v2, 0x709

    const/16 v3, 0x4ff

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez p1, :cond_4

    if-eqz v11, :cond_4

    .line 273
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 274
    sget-object v1, Lorg/inaturalist/android/ObservationProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 279
    :cond_2
    iput-boolean v14, v10, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    goto :goto_2

    .line 277
    :cond_3
    :goto_1
    iput-boolean v13, v10, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    if-eqz v1, :cond_5

    const-string v4, "android.intent.action.SEND"

    .line 281
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 283
    iput-boolean v13, v10, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    const-string v1, "android.intent.extra.STREAM"

    .line 284
    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    .line 286
    iget-object v4, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_6

    if-eqz v1, :cond_6

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 287
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "android.intent.extra.STREAM"

    .line 289
    invoke-virtual {v11, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    .line 292
    :cond_6
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mCameraPhotos:Ljava/util/ArrayList;

    const v1, 0x7f0d009f

    .line 294
    invoke-virtual {v10, v1}, Lorg/inaturalist/android/ObservationEditor;->setContentView(I)V

    .line 296
    iget-boolean v1, v10, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    const v6, 0x7f100132

    if-eqz v1, :cond_7

    .line 297
    invoke-virtual {v10, v6}, Lorg/inaturalist/android/ObservationEditor;->setTitle(I)V

    goto :goto_3

    :cond_7
    const v1, 0x7f100148

    .line 299
    invoke-virtual {v10, v1}, Lorg/inaturalist/android/ObservationEditor;->setTitle(I)V

    .line 302
    :goto_3
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_8

    .line 303
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 305
    :cond_8
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    if-nez v1, :cond_9

    .line 306
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 309
    :cond_9
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "got_it_all_caps"

    const-string v5, "got_it"

    const v7, 0x7f0a027d

    invoke-virtual {v1, v10, v7, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    const/4 v8, -0x1

    if-eqz v1, :cond_b

    .line 313
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    .line 314
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_a

    const-string v0, "INAT: ObservationEditor"

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert new observation into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 319
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/inaturalist/android/ObservationEditor;->setResult(ILandroid/content/Intent;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    goto/16 :goto_5

    :cond_b
    if-nez p1, :cond_13

    .line 327
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "INAT: ObservationEditor"

    const-string v1, "Null URI from intent.getData"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 333
    :cond_c
    sget-object v1, Lorg/inaturalist/android/ObservationProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v4, 0x48c

    if-eq v1, v4, :cond_12

    if-eq v1, v3, :cond_10

    if-eq v1, v2, :cond_d

    const-string v0, "INAT: ObservationEditor"

    const-string v1, "Unknown action, exiting"

    .line 371
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 349
    :cond_d
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "photoUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 350
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    if-nez v1, :cond_e

    .line 351
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002b5

    invoke-virtual {v10, v1}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 355
    :cond_e
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-direct {v10, v10, v1}, Lorg/inaturalist/android/ObservationEditor;->getPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    .line 356
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    .line 357
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_f

    const-string v1, "INAT: ObservationEditor"

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to insert new observation into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 362
    :cond_f
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/inaturalist/android/ObservationEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    .line 363
    new-instance v0, Lorg/inaturalist/android/Observation;

    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    .line 364
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-direct {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->updateImageOrientation(Landroid/net/Uri;)V

    .line 365
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    invoke-direct {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->createObservationPhotoForPhoto(Landroid/net/Uri;)Landroid/net/Uri;

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/inaturalist/android/ObservationEditor;->setResult(ILandroid/content/Intent;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iput-object v12, v10, Lorg/inaturalist/android/ObservationEditor;->mFileUri:Landroid/net/Uri;

    goto :goto_4

    .line 339
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    .line 340
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_11

    const-string v1, "INAT: ObservationEditor"

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to insert new observation into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void

    .line 345
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lorg/inaturalist/android/ObservationEditor;->setResult(ILandroid/content/Intent;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 335
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    .line 376
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mPhotosAdded:Ljava/util/ArrayList;

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mPhotosRemoved:Ljava/util/ArrayList;

    goto :goto_5

    .line 379
    :cond_13
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_14

    .line 380
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mUri:Landroid/net/Uri;

    :cond_14
    :goto_5
    const v0, 0x7f0a01d4

    .line 385
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$1;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$1;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0198

    .line 423
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$2;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$2;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0146

    .line 446
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mGeoprivacy:Landroid/widget/Spinner;

    const v0, 0x7f0a0346

    .line 447
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    const v0, 0x7f0a0347

    .line 448
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessSub:Landroid/widget/TextView;

    const v0, 0x7f0a00b2

    .line 449
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    const v0, 0x7f0a034c

    .line 450
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00f7

    .line 451
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    .line 453
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 454
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mClearSpeciesGuess:Landroid/widget/ImageView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$3;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$3;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mDescriptionTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$4;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$4;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a02fb

    .line 482
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSaveButton:Landroid/widget/TextView;

    const v0, 0x7f0a0275

    .line 483
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    const v0, 0x7f0a0277

    .line 484
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservedOnStringTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03a8

    .line 485
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    const v0, 0x7f0a0145

    .line 486
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 487
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v13, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 488
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setItemMargin(I)V

    const v0, 0x7f0a01a7

    .line 489
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLatitudeView:Landroid/widget/TextView;

    const v0, 0x7f0a01eb

    .line 490
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLongitudeView:Landroid/widget/TextView;

    const v0, 0x7f0a0017

    .line 491
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mAccuracyView:Landroid/widget/TextView;

    const v0, 0x7f0a01d2

    .line 492
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLocationProgressView:Landroid/widget/ProgressBar;

    const v0, 0x7f0a01d3

    .line 493
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    .line 494
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const v0, 0x7f0a00f3

    .line 495
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mDeleteButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a03de

    .line 496
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mViewOnInat:Landroid/widget/ImageButton;

    const v0, 0x7f0a0321

    .line 497
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    const v0, 0x7f0a02b5

    .line 498
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectCount:Landroid/widget/TextView;

    const v0, 0x7f0a02b7

    .line 499
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldsTable:Landroid/widget/TableLayout;

    const v0, 0x7f0a01d8

    .line 500
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLocationIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01d7

    .line 501
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLocationGuess:Landroid/widget/TextView;

    const v0, 0x7f0a013c

    .line 502
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mFindingCurrentLocation:Landroid/widget/TextView;

    .line 504
    invoke-virtual {v10, v7}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mCloseSpeciesNameOnboarding:Landroid/view/View;

    const v0, 0x7f0a027c

    .line 505
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesNameOnboarding:Landroid/view/ViewGroup;

    .line 507
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesNameOnboarding:Landroid/view/ViewGroup;

    const-string v0, "iNaturalistPreferences"

    .line 509
    invoke-virtual {v10, v0, v14}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mCloseSpeciesNameOnboarding:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/ObservationEditor$5;

    invoke-direct {v2, v10, v0}, Lorg/inaturalist/android/ObservationEditor$5;-><init>(Lorg/inaturalist/android/ObservationEditor;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "onboarded_species_guess"

    .line 519
    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 521
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesNameOnboarding:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 523
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectSelector:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$6;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$6;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00db

    .line 556
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 558
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessIcon:Landroid/widget/ImageView;

    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mTaxonPicUrl:Ljava/lang/String;

    const v2, 0x7f08024c

    new-instance v3, Lorg/inaturalist/android/ObservationEditor$7;

    invoke-direct {v3, v10}, Lorg/inaturalist/android/ObservationEditor$7;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-static {v0, v1, v2, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 572
    :cond_16
    new-instance v0, Lorg/inaturalist/android/ObservationEditor$8;

    invoke-direct {v0, v10}, Lorg/inaturalist/android/ObservationEditor$8;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    const v1, 0x7f0a034b

    .line 605
    invoke-virtual {v10, v1}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuessTextView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v13}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 609
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v13}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 612
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    const v1, 0x7f08014e

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 613
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTopActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v10, v6}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a037e

    .line 614
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 617
    new-instance v1, Lorg/inaturalist/android/ObservationEditor$9;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$9;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "species_guess"

    .line 624
    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSpeciesGuess:Ljava/lang/String;

    .line 626
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->initObservation()V

    if-eqz v11, :cond_18

    .line 628
    iget-boolean v0, v10, Lorg/inaturalist/android/ObservationEditor;->mPictureTaken:Z

    if-nez v0, :cond_18

    const-string v0, "take_photo"

    .line 629
    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 631
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->takePhoto()V

    goto :goto_7

    :cond_17
    const-string v0, "choose_photo"

    .line 633
    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 635
    iput-boolean v13, v10, Lorg/inaturalist/android/ObservationEditor;->mChoseNewPhoto:Z

    .line 636
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->choosePhoto()V

    .line 640
    :cond_18
    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->initUi()V

    if-eqz v11, :cond_1d

    const-string v0, "observation_json"

    .line 643
    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObsJson:Ljava/lang/String;

    .line 645
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 647
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "default_photo"

    .line 648
    invoke-virtual {v1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "rank_level"

    .line 650
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "rank_level"

    .line 651
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_19

    .line 653
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_8
    move v3, v2

    goto :goto_9

    .line 654
    :cond_19
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_1a

    .line 655
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    goto :goto_8

    :cond_1a
    const/4 v3, 0x0

    .line 658
    :goto_9
    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v10, v2}, Lorg/inaturalist/android/ObservationEditor;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rank"

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "id"

    invoke-virtual {v1, v7}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v0, :cond_1b

    const-string v8, "square_url"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_a

    :cond_1b
    move-object v8, v12

    :goto_a
    const-string v0, "iconic_taxon_name"

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v15

    invoke-direct/range {v0 .. v9}, Lorg/inaturalist/android/ObservationEditor;->setTaxon(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/String;Ljava/lang/String;Z)V

    .line 659
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "taxon"

    invoke-virtual {v0, v1, v12}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_b

    .line 660
    :cond_1c
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 662
    new-instance v0, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    invoke-direct {v0, v10, v12}, Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;-><init>(Lorg/inaturalist/android/ObservationEditor;Lorg/inaturalist/android/ObservationEditor$1;)V

    iput-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTaxonReceiver:Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    .line 663
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_get_taxon_new_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "INAT: ObservationEditor"

    const-string v2, "Registering ACTION_GET_TAXON_NEW_RESULT"

    .line 664
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mTaxonReceiver:Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    invoke-static {v1, v0, v10}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 667
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_NEW:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v12, v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon_id"

    .line 668
    iget-object v2, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 669
    invoke-static {v10, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 673
    :cond_1d
    :goto_b
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservedOnButton:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$10;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$10;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 680
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mTimeObservedAtButton:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$11;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$11;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mLocationRefreshButton:Landroid/view/View;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$12;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$12;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 776
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "input_method"

    .line 777
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 778
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 780
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 783
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    if-eqz v11, :cond_1f

    const-string v0, "observation_project"

    .line 784
    invoke-virtual {v11, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "observation_project"

    .line 785
    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 786
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    .line 787
    iget-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 791
    :cond_1f
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_20

    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_c

    :cond_20
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 792
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(observation_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") AND ((is_deleted = 0) OR (is_deleted is NULL))"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 795
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 796
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    .line 797
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_21

    .line 798
    new-instance v1, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 799
    iget-object v2, v10, Lorg/inaturalist/android/ObservationEditor;->mProjectIds:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_d

    .line 802
    :cond_21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_22
    :goto_e
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->refreshProjectFields()V

    if-eqz v11, :cond_23

    const-string v0, "return_to_observation_list"

    .line 809
    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    .line 812
    :cond_23
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->updateObservationVisibilityDescription()V

    const v0, 0x7f0a036b

    .line 814
    invoke-virtual {v10, v0}, Lorg/inaturalist/android/ObservationEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/SwipeableLinearLayout;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$13;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$13;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/SwipeableLinearLayout;->setOnSwipeListener(Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;)V

    .line 827
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    if-eqz v0, :cond_25

    .line 828
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    .line 831
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isExternalStoragePermissionGranted()Z

    move-result v0

    if-nez v0, :cond_24

    .line 832
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$14;

    invoke-direct {v1, v10}, Lorg/inaturalist/android/ObservationEditor$14;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    invoke-virtual {v0, v10, v1}, Lorg/inaturalist/android/INaturalistApp;->requestExternalStoragePermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void

    .line 852
    :cond_24
    iget-object v0, v10, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    invoke-direct {v10, v0, v13}, Lorg/inaturalist/android/ObservationEditor;->importPhotos(Ljava/util/List;Z)V

    :cond_25
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1689
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    if-eqz p1, :cond_0

    .line 1690
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    goto :goto_0

    .line 1692
    :cond_0
    new-instance p1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1694
    :goto_0
    new-instance v6, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 1695
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getHours()I

    move-result v3

    .line 1696
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getMinutes()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v6

    .line 1671
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-eqz p1, :cond_1

    .line 1672
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    goto :goto_1

    .line 1674
    :cond_1
    new-instance p1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1677
    :goto_1
    :try_start_0
    new-instance v6, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1678
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getYear()I

    move-result v0

    add-int/lit16 v3, v0, 0x76c

    .line 1679
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getMonth()I

    move-result v4

    .line 1680
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getDate()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 1682
    :catch_0
    new-instance p1, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 1683
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationEditor;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1684
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getYear()I

    move-result v1

    add-int/lit16 v5, v1, 0x76c

    .line 1685
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getMonth()I

    move-result v6

    .line 1686
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getDate()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 247
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 249
    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationEditor;->mIsConfirmation:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e000c

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0e000e

    .line 252
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    .line 1084
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_8

    const v0, 0x7f0a00f3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const v0, 0x7f0a02fb

    if-eq p1, v0, :cond_0

    return v1

    .line 1088
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->hasNoCoords()Z

    move-result p1

    if-eqz p1, :cond_1

    const v4, 0x7f100308

    const v5, 0x7f100061

    const v6, 0x7f1003b1

    const v7, 0x7f100260

    .line 1090
    new-instance v8, Lorg/inaturalist/android/ObservationEditor$18;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ObservationEditor$18;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lorg/inaturalist/android/ObservationEditor;->confirm(Landroid/app/Activity;IIIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1

    .line 1126
    :cond_1
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToProjectFieldValues()V

    .line 1127
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->save()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "android.intent.action.INSERT"

    .line 1128
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1130
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "Online Reachability"

    .line 1132
    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Yes"

    goto :goto_0

    :cond_2
    const-string v2, "No"

    :goto_0
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "owners_identification_from_vision"

    .line 1133
    iget-boolean v2, p0, Lorg/inaturalist/android/ObservationEditor;->mFromSuggestion:Z

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1137
    :goto_1
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v2, "New Obs - Save New Observation"

    invoke-virtual {v0, v2, p1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "iNaturalistPreferences"

    const/4 v0, 0x0

    .line 1139
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1140
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "observation_count"

    const-string v4, "observation_count"

    .line 1141
    invoke-interface {p1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v1

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1142
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1146
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor;->mSharePhotos:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 1147
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->returnToObsList()V

    .line 1150
    :cond_4
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x1001

    goto :goto_2

    :cond_5
    const/16 p1, 0x1002

    :goto_2
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 1151
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    :cond_6
    return v1

    :cond_7
    const v4, 0x7f10012b

    const v5, 0x7f100127

    const v6, 0x7f1003b1

    const v7, 0x7f100260

    .line 1156
    new-instance v8, Lorg/inaturalist/android/ObservationEditor$19;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ObservationEditor$19;-><init>(Lorg/inaturalist/android/ObservationEditor;)V

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v9}, Lorg/inaturalist/android/ObservationEditor;->confirm(Landroid/app/Activity;IIIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return v1

    .line 1086
    :cond_8
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->onBack()Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 1199
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1201
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mTaxonReceiver:Lorg/inaturalist/android/ObservationEditor$TaxonReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 1203
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldViewers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mProjectFieldViewers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 1205
    invoke-virtual {v1}, Lorg/inaturalist/android/ProjectFieldViewer;->unregisterReceivers()V

    goto :goto_0

    .line 1209
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->stopGetLocation()V

    .line 1210
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToProjectFieldValues()V

    .line 1211
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1213
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mDeleted:Z

    if-nez v0, :cond_2

    .line 1214
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->isDeleteable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1215
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationEditor;->delete(Z)V

    goto :goto_1

    .line 1216
    :cond_1
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor;->mCanceled:Z

    if-nez v0, :cond_2

    .line 1217
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->save()Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 3305
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1235
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1236
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->initUi()V

    .line 1237
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 1238
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 1241
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->refreshProjectList()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1189
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToObservation()V

    .line 1190
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationEditor;->uiToProjectFieldValues()V

    .line 1193
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1194
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 219
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 220
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 227
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 228
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method protected updateImages()V
    .locals 9

    .line 2754
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2755
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v6, "(_observation_id=? or observation_id=?) and ((is_deleted = 0) OR (is_deleted IS NULL))"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 2758
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    const-string v8, "position ASC, id ASC, _id ASC"

    .line 2755
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 2761
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v5, "_observation_id=? and ((is_deleted = 0) OR (is_deleted IS NULL))"

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 2764
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    const-string v7, "position ASC, id ASC, _id ASC"

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 2761
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    .line 2767
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2768
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor;->mGallery:Lorg/lucasr/twowayview/TwoWayView;

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationEditor;->mImageCursor:Landroid/database/Cursor;

    invoke-direct {v1, p0, p0, v2}, Lorg/inaturalist/android/ObservationEditor$GalleryCursorAdapter;-><init>(Lorg/inaturalist/android/ObservationEditor;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
