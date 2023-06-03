.class public Lorg/inaturalist/android/ObservationViewerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ObservationViewerActivity.java"

# interfaces
.implements Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;,
        Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;,
        Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;,
        Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;,
        Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;
    }
.end annotation


# static fields
.field private static DATA_QUALITY_CASUAL_GRADE:I = 0x0

.field private static DATA_QUALITY_NEEDS_ID:I = 0x1

.field private static DATA_QUALITY_RESEARCH_GRADE:I = 0x2

.field private static final NEW_ID_REQUEST_CODE:I = 0x101

.field private static QUALITY_GRADE_CASUAL_GRADE:Ljava/lang/String; = "casual"

.field private static QUALITY_GRADE_NEEDS_ID:Ljava/lang/String; = "needs_id"

.field private static QUALITY_GRADE_RESEARCH:Ljava/lang/String; = "research"

.field private static final REQUEST_CODE_EDIT_OBSERVATION:I = 0x103

.field private static final REQUEST_CODE_LOGIN:I = 0x102

.field public static final RESULT_FLAGGED_AS_CAPTIVE:I = 0x300

.field public static final RESULT_OBSERVATION_CHANGED:I = 0x301

.field public static final SCROLL_TO_COMMENTS_BOTTOM:Ljava/lang/String; = "scroll_to_comments_bottom"

.field private static final SHARE_REQUEST_CODE:I = 0x104

.field public static final SHOW_COMMENTS:Ljava/lang/String; = "show_comments"

.field private static TAG:Ljava/lang/String; = "ObservationViewerActivity"

.field private static final VIEW_TYPE_COMMENTS_IDS:Ljava/lang/String; = "comments_ids"

.field private static final VIEW_TYPE_FAVS:Ljava/lang/String; = "favs"

.field private static final VIEW_TYPE_INFO:Ljava/lang/String; = "info"


# instance fields
.field public mActiveTab:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mActivityButtons:Landroid/view/ViewGroup;

.field private mActivityLogin:Landroid/widget/Button;

.field private mActivityLoginSignUpButtons:Landroid/view/ViewGroup;

.field private mActivitySignUp:Landroid/widget/Button;

.field private mActivityTabContainer:Landroid/view/ViewGroup;

.field private mAdapter:Lorg/inaturalist/android/CommentsIdsAdapter;

.field private mAddComment:Landroid/view/ViewGroup;

.field private mAddCommentBackground:Landroid/view/View;

.field private mAddCommentContainer:Landroid/view/ViewGroup;

.field private mAddCommentDone:Landroid/widget/ImageView;

.field private mAddCommentText:Landroid/widget/EditText;

.field private mAddFavorite:Landroid/view/ViewGroup;

.field private mAddId:Landroid/view/ViewGroup;

.field private mAnnotationSection:Landroid/view/ViewGroup;

.field private mAnnotationsContent:Landroid/view/ViewGroup;

.field private mAnnotationsList:Landroid/widget/ListView;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mAttributes:Lorg/inaturalist/android/SerializableJSONArray;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

.field private mCasualGradeIcon:Landroid/widget/ImageView;

.field private mCasualGradeText:Landroid/widget/TextView;

.field private mChangeAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;

.field public mCommentCount:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mCommentMentions:Lorg/inaturalist/android/MentionsAutoComplete;

.field public mCommentsIds:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentsIdsList:Landroid/widget/ListView;

.field private mCursor:Landroid/database/Cursor;

.field private mDataQualityGraph:Landroid/view/ViewGroup;

.field private mDataQualityReason:Landroid/view/ViewGroup;

.field private mFavIndex:I

.field private mFavesLogin:Landroid/widget/Button;

.field private mFavesLoginSignUpButtons:Landroid/view/ViewGroup;

.field private mFavesSignUp:Landroid/widget/Button;

.field public mFavorites:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesAdapter:Lorg/inaturalist/android/FavoritesAdapter;

.field private mFavoritesList:Landroid/widget/ListView;

.field private mFavoritesTabContainer:Landroid/view/ViewGroup;

.field public mFlagAsCaptive:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIdArrow:Landroid/widget/ImageView;

.field public mIdCount:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mIdName:Landroid/widget/TextView;

.field private mIdPic:Landroid/widget/ImageView;

.field private mIdPicBig:Landroid/widget/ImageView;

.field private mIdRow:Landroid/view/ViewGroup;

.field private mIncludedInProjects:Landroid/widget/TextView;

.field private mIncludedInProjectsContainer:Landroid/view/ViewGroup;

.field private mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mInfoTabContainer:Landroid/view/ViewGroup;

.field private mLoadObsJson:Z

.field private mLoadingActivity:Landroid/widget/ProgressBar;

.field private mLoadingAnnotations:Landroid/widget/ProgressBar;

.field private mLoadingFavs:Landroid/widget/ProgressBar;

.field private mLoadingMap:Landroid/widget/ProgressBar;

.field private mLoadingObservation:Z

.field private mLoadingPhotos:Landroid/widget/ProgressBar;

.field private mLocationLabelContainer:Landroid/view/ViewGroup;

.field private mLocationMapContainer:Landroid/view/ViewGroup;

.field private mLocationPrivate:Landroid/widget/ImageView;

.field private mLocationText:Landroid/widget/TextView;

.field private mLoginToAddCommentId:Landroid/widget/TextView;

.field private mLoginToAddFave:Landroid/widget/TextView;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mNeedsIdIcon:Landroid/widget/ImageView;

.field private mNeedsIdLine:Landroid/view/View;

.field private mNeedsIdText:Landroid/widget/TextView;

.field private mNoActivityMessage:Landroid/widget/TextView;

.field private mNoFavsMessage:Landroid/widget/TextView;

.field private mNoPhotosContainer:Landroid/view/ViewGroup;

.field private mNotes:Landroid/widget/TextView;

.field private mNotesContainer:Landroid/view/ViewGroup;

.field public mObsJson:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservation:Lorg/inaturalist/android/Observation;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$SerializableBundler;
    .end annotation
.end field

.field private mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

.field private mObservedOn:Landroid/widget/TextView;

.field private mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

.field private mPhotosContainer:Landroid/view/ViewGroup;

.field private mPhotosViewPager:Landroid/support/v4/view/ViewPager;

.field private mProjectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProjects:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public mReadOnly:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mReloadObs:Z

.field public mReloadTaxon:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mRemoveFavorite:Landroid/view/ViewGroup;

.field private mResearchGradeIcon:Landroid/widget/ImageView;

.field private mResearchGradeLine:Landroid/view/View;

.field private mResearchGradeText:Landroid/widget/TextView;

.field private mScrollToCommentsBottom:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSharePhoto:Landroid/widget/ImageView;

.field private mShowComments:Z

.field private mSyncToAddCommentsIds:Landroid/widget/TextView;

.field private mSyncToAddFave:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field public mTaxon:Lorg/json/JSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;
    .end annotation
.end field

.field public mTaxonIdName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTaxonImage:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonInactive:Landroid/view/ViewGroup;

.field public mTaxonJson:Ljava/lang/String;
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

.field public mTaxonScientificName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonicName:Landroid/widget/TextView;

.field private mTipText:Landroid/widget/TextView;

.field private mUnknownLocationContainer:Landroid/view/ViewGroup;

.field private mUnknownLocationIcon:Landroid/widget/ImageView;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Landroid/widget/TextView;

.field private mUserPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    .line 160
    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 161
    iput v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    .line 196
    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    .line 213
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadObsJson:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/FavoritesAdapter;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesAdapter:Lorg/inaturalist/android/FavoritesAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V

    return-void
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentDone:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->discardAddComment()V

    return-void
.end method

.method static synthetic access$2300(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/MentionsAutoComplete;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentMentions:Lorg/inaturalist/android/MentionsAutoComplete;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshTabs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/inaturalist/android/ObservationViewerActivity;)Z
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSharePhoto:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/inaturalist/android/ObservationViewerActivity;I)Lorg/json/JSONObject;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->downloadTaxon(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPic:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3100()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/inaturalist/android/ObservationViewerActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadObsJson:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/inaturalist/android/ObservationViewerActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadObsJson:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshAttributes()V

    return-void
.end method

.method static synthetic access$3502(Lorg/inaturalist/android/ObservationViewerActivity;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingObservation:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/os/Bundle;Z)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadObservation(Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$3700(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V

    return-void
.end method

.method static synthetic access$3800(Lorg/inaturalist/android/ObservationViewerActivity;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadObs:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->downloadCommunityTaxon()V

    return-void
.end method

.method static synthetic access$4000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/net/Uri;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$402(Lorg/inaturalist/android/ObservationViewerActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadPhotos()V

    return-void
.end method

.method static synthetic access$4200(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V

    return-void
.end method

.method static synthetic access$4300(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeActivityList()V

    return-void
.end method

.method static synthetic access$4400(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeFavList()V

    return-void
.end method

.method static synthetic access$4500(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshProjectList()V

    return-void
.end method

.method static synthetic access$4600(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V

    return-void
.end method

.method static synthetic access$4700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$4800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ListView;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->setupMap()V

    return-void
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 90
    iget-object p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ObservationViewerActivity;)I
    .locals 0

    .line 90
    iget p0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavIndex:I

    return p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ObservationViewerActivity;I)I
    .locals 0

    .line 90
    iput p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavIndex:I

    return p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)I
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getFavoritedByUsername(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private addTab(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 1

    .line 1337
    new-instance v0, Lorg/inaturalist/android/MyTabFactory;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 1338
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method private checkForTaxonDisagreement(ILjava/lang/String;Ljava/lang/String;Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    .line 2468
    iget-object v3, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 2474
    :cond_0
    new-instance v3, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v5, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "id"

    .line 2475
    invoke-virtual {v3, v5}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "ancestor_ids"

    .line 2476
    invoke-virtual {v3, v6}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    .line 2480
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v7, v8, :cond_2

    .line 2481
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    if-ne v8, v1, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    if-ne v5, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v1, "layout_inflater"

    .line 2496
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f0d0058

    const/4 v6, 0x0

    .line 2497
    invoke-virtual {v1, v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/ViewGroup;

    const v1, 0x7f0a02d4

    .line 2499
    invoke-virtual {v12, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f0a0104

    .line 2500
    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f0a024d

    .line 2501
    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const-string v7, "%s (%s)"

    const/4 v8, 0x2

    .line 2503
    new-array v10, v8, [Ljava/lang/Object;

    aput-object p2, v10, v4

    aput-object p3, v10, v9

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "%s (%s)"

    .line 2504
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v0, v11}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v4

    invoke-virtual {v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f10013a

    .line 2506
    invoke-virtual {v0, v8}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v3, v10, v4

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f100187

    .line 2507
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f100263

    .line 2508
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    iget-object v10, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v1, 0x7f1002cb

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lorg/inaturalist/android/ObservationViewerActivity$33;

    invoke-direct {v13, v0, v5, v2}, Lorg/inaturalist/android/ObservationViewerActivity$33;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Landroid/widget/RadioButton;Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;)V

    new-instance v14, Lorg/inaturalist/android/ObservationViewerActivity$34;

    invoke-direct {v14, v0}, Lorg/inaturalist/android/ObservationViewerActivity$34;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    const v15, 0x7f100349

    const v16, 0x7f100071

    invoke-virtual/range {v10 .. v16}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void

    .line 2491
    :cond_4
    :goto_2
    invoke-interface {v2, v4}, Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;->onDisagreement(Z)V

    return-void

    .line 2470
    :cond_5
    :goto_3
    invoke-interface {v2, v4}, Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;->onDisagreement(Z)V

    return-void
.end method

.method private createTabContent(I)Landroid/view/View;
    .locals 3

    .line 1255
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00dd

    .line 1256
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0a0373

    .line 1257
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1259
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private discardAddComment()V
    .locals 7

    .line 1153
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const/4 v1, 0x0

    check-cast v1, Landroid/view/View;

    const v2, 0x7f100135

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ObservationViewerActivity$12;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ObservationViewerActivity$12;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    new-instance v4, Lorg/inaturalist/android/ObservationViewerActivity$13;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ObservationViewerActivity$13;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    const v5, 0x7f1003b1

    const v6, 0x7f100260

    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method private downloadCommunityTaxon()V
    .locals 4

    .line 2203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "identifications"

    .line 2211
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "taxon"

    .line 2213
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "taxon"

    .line 2214
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "id"

    .line 2216
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const-string v1, "community_taxon_id"

    .line 2221
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ne v0, v3, :cond_2

    .line 2225
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    .line 2226
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$26;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$26;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 2235
    :cond_2
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->downloadTaxon(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2238
    new-instance v0, Lorg/inaturalist/android/SerializableJSONArray;

    invoke-direct {v0}, Lorg/inaturalist/android/SerializableJSONArray;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    .line 2239
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$27;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$27;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 2248
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    .line 2252
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ATTRIBUTES_FOR_TAXON:Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon"

    .line 2253
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2254
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    .line 2205
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method private downloadJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1850
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1852
    :try_start_1
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->getJWTToken()Ljava/lang/String;

    move-result-object v2

    .line 1853
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "Authorization"

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    .line 1859
    new-array v3, v3, [C

    .line 1860
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    .line 1861
    invoke-virtual {v0, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1870
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1875
    :cond_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :catch_2
    nop

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    .line 1870
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    :catch_3
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v1

    :catch_4
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v1
.end method

.method private downloadObsTaxonAndUpdate()V
    .locals 2

    .line 1802
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$23;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$23;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1843
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private downloadTaxon(I)Lorg/json/JSONObject;
    .locals 3

    .line 1789
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1790
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1791
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

    .line 1793
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->downloadJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "results"

    .line 1797
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private formatObservedOn(Ljava/sql/Timestamp;Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 5

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    .line 1888
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1889
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1890
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1891
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    .line 1894
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le v1, v2, :cond_0

    const-string v1, "MM/dd/yy"

    goto :goto_0

    :cond_0
    const-string v1, "MMM d"

    .line 1902
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    const-string p1, " \u2022 "

    .line 1908
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    :cond_2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mma"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCommentIdList()V
    .locals 4

    .line 1342
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1343
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 1344
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    .line 1345
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1346
    sget-object v2, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    const-string v3, "Registering ACTION_OBSERVATION_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1349
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "observation_id"

    .line 1350
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1351
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1353
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1355
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingObservation:Z

    .line 1356
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1361
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getFavoritedByUsername(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 680
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/BetterJSONObject;

    .line 682
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "user"

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "login"

    .line 684
    invoke-virtual {v2, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 2586
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2587
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2588
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

.method private loadObservationIntoUI()V
    .locals 11

    .line 1491
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 1492
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1493
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->finish()V

    return-void

    .line 1497
    :cond_0
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "user"

    .line 1498
    invoke-virtual {v0, v5}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v5, "user_icon_url"

    .line 1500
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "user_icon_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "user_icon_url"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "icon_url"

    .line 1502
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "icon_url"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "icon_url"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 1504
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserName:Landroid/widget/TextView;

    const-string v6, "login"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1505
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    const-string v0, "iNaturalistPreferences"

    .line 1509
    invoke-virtual {p0, v0, v4}, Lorg/inaturalist/android/ObservationViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v5, "username"

    .line 1510
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "user_icon_url"

    .line 1511
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0124

    .line 1515
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1516
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 1517
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v6, v6, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/INaturalistApp;->getErrorsForObservation(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 1519
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 1520
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1522
    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1523
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 1525
    :goto_2
    :try_start_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    const-string v8, "&#8226; "

    .line 1526
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v7, v8, :cond_6

    const-string v8, "<br/>"

    .line 1529
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 1532
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 1534
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1537
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    :goto_3
    if-eqz v2, :cond_a

    .line 1541
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "."

    .line 1542
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "medium."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const v0, 0x7f080131

    if-eqz v2, :cond_b

    .line 1546
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 1547
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserPic:Landroid/widget/ImageView;

    new-instance v6, Lorg/inaturalist/android/ObservationViewerActivity$17;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/ObservationViewerActivity$17;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-static {v5, v2, v0, v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_4

    .line 1559
    :cond_b
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1563
    :goto_4
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v0, :cond_d

    .line 1564
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-nez v0, :cond_c

    return-void

    .line 1566
    :cond_c
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "user"

    .line 1567
    invoke-virtual {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1569
    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$18;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity$18;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/json/JSONObject;)V

    .line 1579
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1580
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1583
    :cond_d
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservedOn:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->time_observed_at:Ljava/sql/Timestamp;

    invoke-direct {p0, v2, v5}, Lorg/inaturalist/android/ObservationViewerActivity;->formatObservedOn(Ljava/sql/Timestamp;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCount()I

    move-result v0

    if-gt v0, v1, :cond_e

    .line 1586
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 1587
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 1590
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPicBig:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1594
    :cond_e
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, v4}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 1595
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1598
    :cond_f
    :goto_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSharePhoto:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$19;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationViewerActivity$19;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1647
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$20;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$20;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 1661
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdRow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1662
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1663
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1665
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPic:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v2}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1666
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1667
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1670
    :cond_10
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_11

    .line 1676
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSharePhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1680
    :cond_11
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->species_guess:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 1681
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    const v2, 0x7f10037b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1682
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 1683
    :cond_12
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    .line 1684
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1686
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    if-nez v0, :cond_13

    goto/16 :goto_8

    .line 1689
    :cond_13
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPic:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    if-nez v0, :cond_17

    .line 1692
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_7

    .line 1696
    :cond_14
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1700
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    iget v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRankLevel:I

    iget-object v6, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v2, v5, v6}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    .line 1701
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1703
    :cond_15
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    iget v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRankLevel:I

    iget-object v6, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRank:Ljava/lang/String;

    invoke-static {v0, v2, v5, v6}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Ljava/lang/String;ILjava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1693
    :cond_16
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1709
    :cond_17
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1711
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 1712
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1714
    :cond_18
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-static {v0, v2}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 1715
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1687
    :cond_19
    :goto_8
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->downloadObsTaxonAndUpdate()V

    .line 1723
    :cond_1a
    :goto_9
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    const-string v5, "is_active"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v1, 0x0

    goto :goto_b

    :cond_1c
    :goto_a
    const/16 v1, 0x8

    :goto_b
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1725
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$21;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$21;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1740
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v0, :cond_20

    .line 1742
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1743
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/ProjectObservation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lorg/inaturalist/android/ProjectObservation;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(observation_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") AND ((is_deleted = 0) OR (is_deleted is NULL))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1746
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjectIds:Ljava/util/ArrayList;

    .line 1747
    :goto_d
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1748
    new-instance v1, Lorg/inaturalist/android/ProjectObservation;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ProjectObservation;-><init>(Landroid/database/Cursor;)V

    .line 1749
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjectIds:Ljava/util/ArrayList;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectObservation;->project_id:Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_d

    .line 1752
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    .line 1755
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjectIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1756
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/Project;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lorg/inaturalist/android/Project;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(id = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "_id DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1758
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 1759
    new-instance v2, Lorg/inaturalist/android/Project;

    invoke-direct {v2, v1}, Lorg/inaturalist/android/Project;-><init>(Landroid/database/Cursor;)V

    .line 1760
    new-instance v5, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v5}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v6, "project"

    .line 1761
    invoke-virtual {v2}, Lorg/inaturalist/android/Project;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1762
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1764
    :cond_1f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 1768
    :cond_20
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshProjectList()V

    .line 1770
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjectsContainer:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$22;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$22;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1779
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 1780
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNotesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1781
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNotes:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 1783
    :cond_21
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNotesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_f
    return-void
.end method

.method private prepareToExit()V
    .locals 8

    .line 1951
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1957
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/inaturalist/android/ObservationViewerActivity$24;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ObservationViewerActivity$24;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    new-instance v5, Lorg/inaturalist/android/ObservationViewerActivity$25;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/ObservationViewerActivity$25;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    const v6, 0x7f1003b1

    const v7, 0x7f100260

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void

    .line 1952
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->finish()V

    return-void
.end method

.method private refreshActivity()V
    .locals 10

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 830
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    .line 831
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 833
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddCommentId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingActivity:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoActivityMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddCommentsIds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddCommentsIds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddCommentId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lorg/inaturalist/android/Observation;->last_comments_count:Ljava/lang/Integer;

    iput-object v5, v0, Lorg/inaturalist/android/Observation;->comments_count:Ljava/lang/Integer;

    .line 857
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Lorg/inaturalist/android/Observation;->last_identifications_count:Ljava/lang/Integer;

    iput-object v5, v0, Lorg/inaturalist/android/Observation;->identifications_count:Ljava/lang/Integer;

    .line 858
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 859
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v0}, Lorg/inaturalist/android/Observation;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 860
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    invoke-virtual {v2, v5}, Ljava/sql/Timestamp;->after(Ljava/sql/Timestamp;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "_synced_at"

    .line 861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    :cond_3
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v5}, Lorg/inaturalist/android/Observation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 864
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObservationViewerActivity - refreshActivity - update obs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->preferred_common_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddCommentId:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddCommentsIds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 870
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 872
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingActivity:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 875
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoActivityMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 879
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingActivity:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 884
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoActivityMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 886
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoActivityMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    :goto_0
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mScrollToCommentsBottom:Z

    if-eqz v0, :cond_7

    .line 890
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$8;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationViewerActivity$8;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 898
    :cond_7
    new-instance v0, Lorg/inaturalist/android/CommentsIdsAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_8
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v3}, Lorg/inaturalist/android/Observation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    :goto_2
    iget-object v6, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    if-nez v2, :cond_9

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->taxon_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v7, v1

    :goto_3
    new-instance v8, Lorg/inaturalist/android/ObservationViewerActivity$9;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ObservationViewerActivity$9;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    iget-boolean v9, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lorg/inaturalist/android/CommentsIdsAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;Ljava/util/List;ILorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;Z)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAdapter:Lorg/inaturalist/android/CommentsIdsAdapter;

    .line 1057
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAdapter:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1059
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddId:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$10;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$10;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddComment:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$11;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$11;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshAttributes()V
    .locals 9

    .line 2265
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2266
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2267
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingAnnotations:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2268
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 2271
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_2

    .line 2276
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2277
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2278
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingAnnotations:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x0

    .line 2282
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2284
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "annotations"

    .line 2285
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2287
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move-object v8, v0

    .line 2292
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsList:Landroid/widget/ListView;

    new-instance v2, Lorg/inaturalist/android/AnnotationsAdapter;

    new-instance v6, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonJson:Ljava/lang/String;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributes:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v3}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v7

    move-object v3, v2

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lorg/inaturalist/android/AnnotationsAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2294
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 2297
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsList:Landroid/widget/ListView;

    invoke-static {v0}, Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V

    .line 2299
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 2301
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    return-void

    .line 2272
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationSection:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private refreshDataQuality()V
    .locals 10

    .line 1367
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    .line 1370
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshDataQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 1374
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    const v2, 0x7f10009e

    goto :goto_1

    .line 1376
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    if-nez v0, :cond_1

    .line 1378
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    const v2, 0x7f10009d

    goto :goto_1

    .line 1380
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1382
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    const v2, 0x7f10009f

    goto :goto_1

    .line 1384
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1388
    :cond_3
    iget v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_4

    .line 1389
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_NEEDS_ID:I

    const v2, 0x7f100248

    goto :goto_1

    .line 1392
    :cond_4
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_RESEARCH_GRADE:I

    const/4 v2, 0x0

    goto :goto_1

    .line 1386
    :cond_5
    :goto_0
    sget v0, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    const v2, 0x7f1000a0

    .line 1395
    :goto_1
    sget-object v3, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshDataQuality 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v5, "N/A"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 1399
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    sget-object v4, Lorg/inaturalist/android/ObservationViewerActivity;->QUALITY_GRADE_CASUAL_GRADE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_7

    .line 1400
    sget v3, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    goto :goto_3

    .line 1401
    :cond_7
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    sget-object v5, Lorg/inaturalist/android/ObservationViewerActivity;->QUALITY_GRADE_NEEDS_ID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1402
    sget v3, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_NEEDS_ID:I

    goto :goto_3

    .line 1403
    :cond_8
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    sget-object v5, Lorg/inaturalist/android/ObservationViewerActivity;->QUALITY_GRADE_RESEARCH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1404
    sget v3, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_RESEARCH_GRADE:I

    goto :goto_3

    :cond_9
    const/4 v3, -0x1

    :goto_3
    if-eq v3, v0, :cond_a

    if-eq v3, v4, :cond_a

    move v0, v3

    const/4 v2, 0x0

    .line 1415
    :cond_a
    sget-object v3, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshDataQuality 3: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_b
    sget-object v3, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshDataQuality 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->quality_grade:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->captive:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    .line 1419
    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    check-cast v5, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v5}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->observed_on:Ljava/sql/Timestamp;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1418
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "#CBCBCB"

    .line 1426
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#8DBA30"

    .line 1427
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 1428
    sget v5, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_CASUAL_GRADE:I

    const v6, 0x7f080381

    const v7, 0x7f0800cf

    if-ne v0, v5, :cond_c

    .line 1429
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1430
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1431
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1432
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1433
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1434
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1435
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1436
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 1437
    :cond_c
    sget v5, Lorg/inaturalist/android/ObservationViewerActivity;->DATA_QUALITY_NEEDS_ID:I

    const v8, 0x7f08017d

    const v9, 0x7f0800d0

    if-ne v0, v5, :cond_d

    .line 1438
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1439
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1440
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1441
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1442
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1443
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1444
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1445
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1446
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 1448
    :cond_d
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1449
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1450
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1451
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1452
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1453
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1454
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1455
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1456
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    if-eqz v2, :cond_e

    .line 1460
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez v0, :cond_e

    .line 1461
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTipText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityReason:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 1464
    :cond_e
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityReason:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1467
    :goto_5
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$16;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$16;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 1483
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityReason:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityGraph:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshFavorites()V
    .locals 7

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 694
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    .line 695
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    .line 699
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    const v4, 0x7f0a00dd

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 700
    :cond_1
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-nez v0, :cond_2

    .line 708
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddFave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingFavs:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddFave:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 718
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 720
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddFave:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddFave:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 723
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingFavs:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 731
    :cond_3
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddFave:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddFave:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLoginSignUpButtons:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 735
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 737
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingFavs:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 745
    :cond_4
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingFavs:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 746
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 748
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 749
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 751
    :cond_5
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 754
    :goto_2
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->getFavoritedByUsername(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavIndex:I

    .line 756
    iget v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavIndex:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_6

    .line 758
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 759
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 761
    :cond_6
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 762
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 765
    :goto_3
    new-instance v1, Lorg/inaturalist/android/FavoritesAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lorg/inaturalist/android/FavoritesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesAdapter:Lorg/inaturalist/android/FavoritesAdapter;

    .line 766
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesAdapter:Lorg/inaturalist/android/FavoritesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 768
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/ObservationViewerActivity$6;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity$6;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$7;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshProjectList()V
    .locals 5

    .line 2525
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2526
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjectsContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2527
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2528
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjects:Landroid/widget/TextView;

    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    const v4, 0x7f1001ce

    goto :goto_0

    :cond_0
    const v4, 0x7f1001cf

    :goto_0
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2530
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjectsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private refreshTabs(Ljava/lang/String;)V
    .locals 9

    .line 1304
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mInfoTabContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1306
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v2, 0x0

    .line 1310
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0078

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x1

    .line 1311
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x2

    .line 1312
    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f0a0373

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v7, "#757575"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1315
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v7, "#757575"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1316
    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v7, "#757575"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1317
    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0a00dd

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v8, "#757575"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "info"

    .line 1320
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v8, 0x7f060086

    if-eqz v1, :cond_1

    .line 1321
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mInfoTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "comments_ids"

    .line 1323
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1324
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v1, "favs"

    .line 1326
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1327
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1328
    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x2

    .line 1332
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    invoke-virtual {v0, v3}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private reloadObservation(Landroid/os/Bundle;Z)V
    .locals 6

    .line 621
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_2

    .line 625
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v1, "show_comments"

    const/4 v2, 0x0

    .line 626
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mShowComments:Z

    const-string v1, "scroll_to_comments_bottom"

    .line 627
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mScrollToCommentsBottom:Z

    if-nez p1, :cond_1

    const-string v1, "observation"

    .line 629
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "read_only"

    .line 630
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    const-string v3, "reload"

    .line 631
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReloadObs:Z

    .line 632
    iput-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 635
    sget-object p1, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    const-string p2, "Null URI from intent.getData"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->finish()V

    return-void

    .line 640
    :cond_0
    new-instance v0, Lorg/inaturalist/android/Observation;

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    .line 643
    :cond_1
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string v1, "mUri"

    .line 646
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 648
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 650
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    .line 654
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCursor:Landroid/database/Cursor;

    if-nez p1, :cond_4

    .line 655
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez p1, :cond_5

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/inaturalist/android/ObservationViewerActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 657
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    .line 660
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_7

    .line 661
    :cond_6
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-nez p1, :cond_7

    new-instance p1, Lorg/inaturalist/android/Observation;

    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    .line 664
    :cond_7
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 665
    new-instance p1, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    .line 666
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 667
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    const-string v1, "Registering ACTION_OBSERVATION_RESULT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-static {v0, p1, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 670
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadObsJson:Z

    .line 672
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, p2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "observation_id"

    .line 673
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 674
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method private reloadPhotos()V
    .locals 2

    .line 2258
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2259
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    .line 2260
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosAdapter:Lorg/inaturalist/android/ObservationViewerActivity$PhotosViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2261
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method private resizeActivityList()V
    .locals 4

    .line 2328
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2329
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 2331
    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$30;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$30;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2341
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$31;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$31;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private resizeFavList()V
    .locals 4

    .line 2306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2307
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const-wide/16 v2, 0x64

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 2309
    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$28;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$28;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 2319
    :cond_0
    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$29;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$29;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupMap()V
    .locals 13

    .line 1175
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 1178
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 1179
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    .line 1180
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 1183
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 1184
    :goto_0
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v3, v3, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    .line 1185
    :goto_1
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v4, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 1187
    iget-boolean v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingObservation:Z

    const/16 v6, 0x8

    if-nez v5, :cond_3

    .line 1188
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1189
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 1193
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v7, Lorg/inaturalist/android/ObservationViewerActivity$14;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/ObservationViewerActivity$14;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 1205
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 1207
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v7, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v8, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v9, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz v9, :cond_4

    new-instance v9, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v10, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5, v7, v8, v9}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1209
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1210
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1211
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    const/4 v7, 0x3

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v5, v5, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    .line 1212
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 1225
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->private_place_guess:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v2, v2, Lorg/inaturalist/android/Observation;->place_guess:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_8
    :goto_4
    const/4 v5, 0x2

    if-nez v4, :cond_9

    .line 1215
    iget-object v4, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    const v8, 0x7f100201

    invoke-virtual {p0, v8}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    const-string v9, "%.3f..."

    new-array v10, v2, [Ljava/lang/Object;

    aput-object v0, v10, v1

    .line 1216
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "%.3f..."

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v3, v9, v1

    .line 1217
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1215
    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1219
    :cond_9
    iget-object v8, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    const v9, 0x7f100200

    invoke-virtual {p0, v9}, Lorg/inaturalist/android/ObservationViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "%.3f..."

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v0, v12, v1

    .line 1220
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v1

    const-string v0, "%.3f..."

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v3, v11, v1

    .line 1221
    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v2

    .line 1222
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x3e7

    if-le v0, v3, :cond_a

    const-string v0, ">1 km"

    goto :goto_5

    :cond_a
    const-string v0, "%dm"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v10, v5

    .line 1219
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1231
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_7

    .line 1233
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v2, "private"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1234
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    const v1, 0x7f080269

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1236
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v2, "obscured"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1237
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1232
    :cond_d
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1241
    :cond_e
    :goto_8
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 1244
    :cond_f
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1246
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    const v2, 0x7f100378

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1247
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1248
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1250
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingObservation:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_10
    :goto_9
    return-void
.end method

.method private setupTabs()V
    .locals 3

    .line 1267
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 1269
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0801b2

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->createTabContent(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->addTab(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 1270
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "comments_ids"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f0801a9

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->createTabContent(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->addTab(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 1271
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "favs"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x7f08024e

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->createTabContent(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ObservationViewerActivity;->addTab(Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 1273
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1275
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mShowComments:Z

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    const-string v0, "comments_ids"

    .line 1277
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshTabs(Ljava/lang/String;)V

    goto :goto_0

    .line 1279
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1280
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    const-string v0, "info"

    .line 1281
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshTabs(Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1285
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    const-string v1, "comments_ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1286
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    const-string v2, "favs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 1288
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 1289
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActiveTab:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshTabs(Ljava/lang/String;)V

    .line 1293
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$15;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$15;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 2362
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2364
    sget-object v0, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/16 v2, 0x104

    if-ne p1, v2, :cond_1

    if-ne p2, v0, :cond_0

    .line 2368
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "Obs - Share Finished"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 2370
    :cond_0
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v2

    const-string v3, "Obs - Share Cancelled"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x103

    if-ne p1, v2, :cond_4

    .line 2373
    sget-object v2, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult - EDIT_OBS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x1000

    const/16 v3, 0x301

    if-eq p2, v2, :cond_3

    const/16 v2, 0x1001

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x1002

    if-ne p2, v2, :cond_4

    const/4 v2, 0x1

    .line 2383
    invoke-direct {p0, v1, v2}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadObservation(Landroid/os/Bundle;Z)V

    .line 2385
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadPhotos()V

    .line 2386
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V

    .line 2387
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getCommentIdList()V

    .line 2388
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->setupMap()V

    .line 2389
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V

    .line 2390
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V

    .line 2391
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeActivityList()V

    .line 2392
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeFavList()V

    .line 2393
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshProjectList()V

    .line 2394
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V

    .line 2395
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshAttributes()V

    .line 2397
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationViewerActivity;->setResult(I)V

    goto :goto_1

    .line 2376
    :cond_3
    :goto_0
    sget-object p1, Lorg/inaturalist/android/ObservationViewerActivity;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult - EDIT_OBS: Finish"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ObservationViewerActivity;->setResult(I)V

    .line 2378
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->finish()V

    return-void

    :cond_4
    :goto_1
    const/16 v2, 0x101

    if-ne p1, v2, :cond_5

    if-ne p2, v0, :cond_6

    const-string p1, "taxon_id"

    const/4 p2, 0x0

    .line 2404
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "taxon_name"

    .line 2405
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "species_guess"

    .line 2406
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id_remarks"

    .line 2407
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "from_suggestion"

    .line 2408
    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 2410
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance v3, Lorg/inaturalist/android/ObservationViewerActivity$32;

    invoke-direct {v3, p0, p1, v2, p2}, Lorg/inaturalist/android/ObservationViewerActivity$32;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-direct {p0, p3, v0, v1, v3}, Lorg/inaturalist/android/ObservationViewerActivity;->checkForTaxonDisagreement(ILjava/lang/String;Ljava/lang/String;Lorg/inaturalist/android/ObservationViewerActivity$onDisagreement;)V

    goto :goto_2

    :cond_5
    const/16 p3, 0x102

    if-ne p1, p3, :cond_6

    if-ne p2, v0, :cond_6

    .line 2448
    iput-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIds:Ljava/util/ArrayList;

    .line 2449
    iput-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavorites:Ljava/util/ArrayList;

    .line 2450
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V

    .line 2451
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V

    .line 2454
    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_OBSERVATION_RESULT:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2455
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-static {p2, p1, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 2456
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_OBSERVATION:Ljava/lang/String;

    const-class p3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, p2, v1, p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "observation_id"

    .line 2457
    iget-object p3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p3, p3, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2458
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onAnnotationAgree(Ljava/lang/String;)V
    .locals 4

    .line 268
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_AGREE_ANNOTATION:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    .line 269
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onAnnotationCollapsedExpanded()V
    .locals 4

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/ObservationViewerActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnnotationDisagree(Ljava/lang/String;)V
    .locals 4

    .line 275
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DISAGREE_ANNOTATION:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    .line 276
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onAnnotationVoteDelete(Ljava/lang/String;)V
    .locals 4

    .line 282
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION_VOTE:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    .line 283
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1942
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1944
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->discardAddComment()V

    goto :goto_0

    .line 1946
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->prepareToExit()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 469
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 470
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 472
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f08014e

    .line 473
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const/4 v1, 0x1

    .line 474
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 475
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f10028a

    .line 476
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 478
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v0, 0x7f0d00ab

    .line 479
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->setContentView(I)V

    .line 480
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const/4 v0, 0x0

    .line 482
    invoke-direct {p0, p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadObservation(Landroid/os/Bundle;Z)V

    const p1, 0x7f0a0058

    .line 484
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationSection:Landroid/view/ViewGroup;

    const p1, 0x7f0a0057

    .line 485
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsList:Landroid/widget/ListView;

    const p1, 0x7f0a01bb

    .line 486
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingAnnotations:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0055

    .line 487
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAnnotationsContent:Landroid/view/ViewGroup;

    const p1, 0x7f0a003b

    .line 489
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentBackground:Landroid/view/View;

    const p1, 0x7f0a003c

    .line 490
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a003d

    .line 491
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentDone:Landroid/widget/ImageView;

    const p1, 0x7f0a003e

    .line 492
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentText:Landroid/widget/EditText;

    .line 493
    new-instance p1, Lorg/inaturalist/android/MentionsAutoComplete;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddCommentText:Landroid/widget/EditText;

    invoke-direct {p1, p0, v0}, Lorg/inaturalist/android/MentionsAutoComplete;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentMentions:Lorg/inaturalist/android/MentionsAutoComplete;

    const p1, 0x7f0a0304

    .line 495
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mScrollView:Landroid/widget/ScrollView;

    const p1, 0x7f0a03d1

    .line 496
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserName:Landroid/widget/TextView;

    const p1, 0x7f0a0275

    .line 497
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservedOn:Landroid/widget/TextView;

    const p1, 0x7f0a03d2

    .line 498
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUserPic:Landroid/widget/ImageView;

    const p1, 0x7f0a0297

    .line 499
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosViewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0a0299

    .line 500
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const p1, 0x7f0a0329

    .line 501
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSharePhoto:Landroid/widget/ImageView;

    const p1, 0x7f0a0174

    .line 502
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPic:Landroid/widget/ImageView;

    const p1, 0x7f0a0177

    .line 503
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdName:Landroid/widget/TextView;

    const p1, 0x7f0a017d

    .line 504
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonicName:Landroid/widget/TextView;

    const p1, 0x7f0a017c

    .line 505
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdRow:Landroid/view/ViewGroup;

    const p1, 0x1020012

    .line 506
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTabHost:Landroid/widget/TabHost;

    .line 507
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a01dc

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    const p1, 0x7f0a01dd

    .line 515
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationMapContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a03c7

    .line 516
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a03c6

    .line 517
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUnknownLocationIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a01df

    .line 518
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationText:Landroid/widget/TextView;

    const p1, 0x7f0a01de

    .line 519
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    const p1, 0x7f0a00a3

    .line 520
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCasualGradeText:Landroid/widget/TextView;

    const p1, 0x7f0a00a2

    .line 521
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCasualGradeIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a023f

    .line 522
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdLine:Landroid/view/View;

    const p1, 0x7f0a02e6

    .line 523
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeLine:Landroid/view/View;

    const p1, 0x7f0a0240

    .line 524
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdText:Landroid/widget/TextView;

    const p1, 0x7f0a023e

    .line 525
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNeedsIdIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a02e7

    .line 526
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeText:Landroid/widget/TextView;

    const p1, 0x7f0a02e5

    .line 527
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mResearchGradeIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a03aa

    .line 528
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTipText:Landroid/widget/TextView;

    const p1, 0x7f0a00e6

    .line 529
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityReason:Landroid/view/ViewGroup;

    const p1, 0x7f0a00e4

    .line 530
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mDataQualityGraph:Landroid/view/ViewGroup;

    const p1, 0x7f0a018a

    .line 531
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjects:Landroid/widget/TextView;

    const p1, 0x7f0a018b

    .line 532
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIncludedInProjectsContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0034

    .line 533
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityTabContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a018f

    .line 534
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mInfoTabContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01ba

    .line 535
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingActivity:Landroid/widget/ProgressBar;

    const p1, 0x7f0a00c8

    .line 536
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mCommentsIdsList:Landroid/widget/ListView;

    const p1, 0x7f0a002e

    .line 537
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityButtons:Landroid/view/ViewGroup;

    const p1, 0x7f0a003a

    .line 538
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddComment:Landroid/view/ViewGroup;

    const p1, 0x7f0a0040

    .line 539
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddId:Landroid/view/ViewGroup;

    const p1, 0x7f0a0131

    .line 540
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesTabContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01bd

    .line 541
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingFavs:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0130

    .line 542
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavoritesList:Landroid/widget/ListView;

    const p1, 0x7f0a003f

    .line 543
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAddFavorite:Landroid/view/ViewGroup;

    const p1, 0x7f0a02e2

    .line 544
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mRemoveFavorite:Landroid/view/ViewGroup;

    const p1, 0x7f0a024e

    .line 545
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoFavsMessage:Landroid/widget/TextView;

    const p1, 0x7f0a024a

    .line 546
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoActivityMessage:Landroid/widget/TextView;

    const p1, 0x7f0a025a

    .line 547
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNotesContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0259

    .line 548
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNotes:Landroid/widget/TextView;

    const p1, 0x7f0a01e4

    .line 549
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddCommentId:Landroid/widget/TextView;

    const p1, 0x7f0a0033

    .line 550
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivitySignUp:Landroid/widget/Button;

    const p1, 0x7f0a0031

    .line 551
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLogin:Landroid/widget/Button;

    const p1, 0x7f0a0032

    .line 552
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLoginSignUpButtons:Landroid/view/ViewGroup;

    const p1, 0x7f0a01e5

    .line 553
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoginToAddFave:Landroid/widget/TextView;

    const p1, 0x7f0a012f

    .line 554
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesSignUp:Landroid/widget/Button;

    const p1, 0x7f0a012d

    .line 555
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLogin:Landroid/widget/Button;

    const p1, 0x7f0a012e

    .line 556
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLoginSignUpButtons:Landroid/view/ViewGroup;

    const p1, 0x7f0a036d

    .line 557
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddCommentsIds:Landroid/widget/TextView;

    const p1, 0x7f0a036e

    .line 558
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mSyncToAddFave:Landroid/widget/TextView;

    const p1, 0x7f0a0250

    .line 559
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01da

    .line 560
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationLabelContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0175

    .line 561
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdPicBig:Landroid/widget/ImageView;

    const p1, 0x7f0a0169

    .line 562
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mIdArrow:Landroid/widget/ImageView;

    const p1, 0x7f0a0298

    .line 563
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01cb

    .line 564
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    const p1, 0x7f0a01c2

    .line 565
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLoadingMap:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0388

    .line 566
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    const-string p1, "window"

    .line 568
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 569
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 570
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 571
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    int-to-double v1, p1

    const-wide v3, 0x3fd7ae147ae147aeL    # 0.37

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 572
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    new-instance p1, Lorg/inaturalist/android/ObservationViewerActivity$3;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ObservationViewerActivity$3;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 583
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$4;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$4;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    .line 590
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivityLogin:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mActivitySignUp:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesLogin:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFavesSignUp:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mLocationPrivate:Landroid/widget/ImageView;

    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$5;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->setupTabs()V

    .line 603
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V

    .line 604
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshFavorites()V

    .line 606
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->reloadPhotos()V

    .line 607
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getCommentIdList()V

    .line 608
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V

    .line 609
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshAttributes()V

    .line 612
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    if-eqz p1, :cond_0

    .line 613
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_VIEWED_UPDATE:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation_id"

    .line 614
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 615
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1982
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e0012

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0011

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDeleteAnnotationValue(Ljava/lang/String;)V
    .locals 4

    .line 261
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_DELETE_ANNOTATION:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uuid"

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1921
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a0114

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a013f

    if-eq v0, v1, :cond_0

    .line 1936
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1932
    :cond_0
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    .line 1933
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V

    return v2

    .line 1926
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mUri:Landroid/net/Uri;

    const-class v3, Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p1, v0, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1927
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "taxon"

    iget-object v3, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/inaturalist/android/INaturalistApp;->setServiceResult(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1928
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "observation_json"

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/16 v0, 0x103

    .line 1929
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 1923
    :cond_4
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->prepareToExit()V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 2578
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 2580
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservationReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 2581
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 2582
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mChangeAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 1988
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1989
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mReadOnly:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a013f

    .line 1990
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mFlagAsCaptive:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 3

    .line 445
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 446
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->loadObservationIntoUI()V

    .line 447
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V

    .line 448
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshProjectList()V

    .line 449
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->setupMap()V

    .line 450
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeActivityList()V

    .line 451
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->resizeFavList()V

    .line 452
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->refreshAttributes()V

    .line 454
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "get_attributes_for_taxon_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$AttributesReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 458
    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;-><init>(Lorg/inaturalist/android/ObservationViewerActivity;Lorg/inaturalist/android/ObservationViewerActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mChangeAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;

    .line 459
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "delete_annotation_result"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "agree_annotation_result"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "disagree_annotation_result"

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "delete_annotation_vote_result"

    .line 462
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "set_annotation_value_result"

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mChangeAttributesReceiver:Lorg/inaturalist/android/ObservationViewerActivity$ChangeAttributesReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1997
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1998
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSetAnnotationValue(II)V
    .locals 4

    .line 289
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SET_ANNOTATION_VALUE:Ljava/lang/String;

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "attribute_id"

    .line 290
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "value_id"

    .line 291
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "observation_id"

    .line 292
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 235
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 236
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 242
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 243
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public setListViewHeightBasedOnItems(Landroid/widget/ListView;)I
    .locals 8

    .line 2541
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2544
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/4 v5, 0x0

    .line 2549
    invoke-interface {v0, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2550
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 2551
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2555
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    mul-int v0, v0, v2

    .line 2559
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2560
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationViewerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    add-int/2addr v4, v0

    .line 2562
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_1

    .line 2563
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2564
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2565
    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    .line 2568
    :cond_1
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p1

    :cond_2
    return v1
.end method
