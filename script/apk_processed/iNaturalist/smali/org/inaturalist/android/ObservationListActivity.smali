.class public Lorg/inaturalist/android/ObservationListActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "ObservationListActivity.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$INotificationCallback;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;,
        Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;,
        Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;,
        Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;,
        Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;,
        Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;
    }
.end annotation


# static fields
.field public static final PARAM_FROM_OBS_EDITOR:Ljava/lang/String; = "from_obs_editor"

.field protected static final REQUEST_CODE_OBSERVATION_VIEWER:I = 0x1001

.field public static TAG:Ljava/lang/String; = "INAT:ObservationListActivity"

.field private static final VIEW_TYPE_IDENTIFICATIONS:Ljava/lang/String; = "identifications"

.field private static final VIEW_TYPE_OBSERVATIONS:Ljava/lang/String; = "observations"

.field private static final VIEW_TYPE_SPECIES:Ljava/lang/String; = "species"

.field public static sActivityCreated:Z


# instance fields
.field private mAddButtonText:Landroid/widget/TextView;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mCancelSync:Landroid/widget/TextView;

.field private mConnectivityListener:Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

.field public mFromObsEdit:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIdentifications:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentificationsEmpty:Landroid/widget/TextView;

.field private mIdentificationsEmptyIcon:Landroid/widget/ImageView;

.field private mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mIdentificationsGridAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

.field private mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

.field public mIsGrid:[Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLastIndex:I

.field public mLastMessage:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLastTop:I

.field private mLoadingIdentifications:Landroid/widget/ProgressBar;

.field private mLoadingMoreResults:Landroid/view/ViewGroup;

.field private mLoadingObservations:Landroid/widget/ProgressBar;

.field private mLoadingSpecies:Landroid/widget/ProgressBar;

.field private mMenu:Landroid/view/Menu;

.field private mNewsReceiver:Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;

.field private mObservationGridAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

.field private mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

.field private mObservationSyncProgressReceiver:Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;

.field private mObservationsEmpty:Landroid/widget/TextView;

.field private mObservationsEmptyIcon:Landroid/widget/ImageView;

.field private mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mOnboardingSyncing:Landroid/view/ViewGroup;

.field private mOnboardingSyncingClose:Landroid/view/View;

.field private mSelectedBottomGrid:Z

.field private mShowMoreIdentifications:Landroid/widget/Button;

.field private mShowMoreSpecies:Landroid/widget/Button;

.field public mSpecies:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeciesEmpty:Landroid/widget/TextView;

.field private mSpeciesEmptyIcon:Landroid/widget/ImageView;

.field private mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

.field private mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

.field private mSyncCompleteReceiver:Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;

.field private mSyncRequested:Z

.field private mSyncingStatus:Landroid/widget/TextView;

.field private mSyncingTopBar:Landroid/view/ViewGroup;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field public mTotalIdentifications:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalSpecies:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mUser:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field public mUserCanceledSync:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mUserDetailsReceiver:Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field public mViewType:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x3

    .line 74
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    .line 97
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncRequested:Z

    .line 130
    iput v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    .line 131
    iput v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalSpecies:I

    .line 145
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSelectedBottomGrid:Z

    .line 148
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mFromObsEdit:Z

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mConnectivityListener:Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$002(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ObservationListActivity;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->triggerSyncIfNeeded()V

    return-void
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mOnboardingSyncing:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mOnboardingSyncing:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mShowMoreSpecies:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mShowMoreSpecies:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$202(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/Button;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mShowMoreIdentifications:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mShowMoreIdentifications:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2202(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingIdentifications:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmptyIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmptyIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p1
.end method

.method static synthetic access$2702(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingSpecies:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmptyIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmptyIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ObservationCursorAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationGridAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/inaturalist/android/ObservationListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$302(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationGridAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/PullToRefreshGridViewExtended;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$3300(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3402(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingMoreResults:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/inaturalist/android/ObservationListActivity;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mOnboardingSyncingClose:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/inaturalist/android/ObservationListActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mOnboardingSyncingClose:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mCancelSync:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mCancelSync:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/inaturalist/android/ObservationListActivity;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lorg/inaturalist/android/ObservationListActivity;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isLoggedIn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationListActivity;->onRefreshView(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    return-void
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshSyncBar()V

    return-void
.end method

.method static synthetic access$4000(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4002(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/inaturalist/android/ObservationListActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshGridListMenuIcon()V

    return-void
.end method

.method static synthetic access$4300(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ObservationListActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ObservationListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/ObservationListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ObservationListActivity;)Landroid/support/design/widget/TabLayout;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    return-object p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ObservationListActivity;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncRequested:Z

    return p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ObservationListActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 1

    .line 1335
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    .line 1336
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/ObservationListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x4000000

    .line 270
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private createTabContent(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 1340
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d008b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00dd

    .line 1341
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0374

    .line 1342
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1344
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, p2

    .line 1345
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getUserDetails(Ljava/lang/String;)V
    .locals 3

    .line 1566
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p1, "username"

    .line 1567
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private hasOldObservations()Z
    .locals 6

    .line 645
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(photo_filename IS NULL) AND (photo_url IS NULL)"

    const-string v5, "position ASC, id ASC, _id ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 651
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeTabs()V
    .locals 6

    const v0, 0x7f0a0377

    .line 1353
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0a03e0

    .line 1354
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 1356
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1357
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/ObservationListActivity$ObservationsPageAdapter;-><init>(Lorg/inaturalist/android/ObservationListActivity;Landroid/content/Context;)V

    .line 1358
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1359
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1361
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "observations_all_caps"

    const-string v2, "project_observations"

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ObservationListActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ObservationListActivity;->addTab(ILandroid/view/View;)V

    .line 1362
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v2, "species_all_caps"

    const-string v3, "project_species"

    invoke-virtual {v0, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/ObservationListActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lorg/inaturalist/android/ObservationListActivity;->addTab(ILandroid/view/View;)V

    .line 1363
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "identifications_all_caps"

    const-string v4, "identifications"

    invoke-virtual {v0, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbb8

    invoke-direct {p0, v0, v3}, Lorg/inaturalist/android/ObservationListActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, v3, v0}, Lorg/inaturalist/android/ObservationListActivity;->addTab(ILandroid/view/View;)V

    .line 1365
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$6;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationListActivity$6;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 1389
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 1391
    new-instance v4, Lorg/inaturalist/android/ObservationListActivity$7;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ObservationListActivity$7;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 1418
    iget-object v5, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v4}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1420
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "observations"

    .line 1421
    iput-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    .line 1424
    :cond_0
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    const-string v5, "observations"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1425
    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 1426
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    const-string v4, "species"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1427
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 1428
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    const-string v2, "identifications"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1429
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isLoggedIn()Z
    .locals 4

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 831
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ObservationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    .line 832
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 174
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 175
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
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

.method private onRefreshView(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3

    .line 882
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_PULL_OBSERVATIONS:Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 910
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 883
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ObservationListActivity$5;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/ObservationListActivity$5;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 900
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isNetworkAvailable()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 901
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100285

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 902
    :cond_2
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_3

    .line 903
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1002be

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private refreshGridListMenuIcon()V
    .locals 4

    .line 925
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3

    .line 926
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 927
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 928
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f08012e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 930
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0802e6

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_0
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 941
    :pswitch_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 938
    :pswitch_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 935
    :pswitch_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshSyncBar()V
    .locals 11

    .line 276
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 278
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    .line 284
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v5, "((_updated_at > _synced_at AND _synced_at IS NOT NULL) OR (_synced_at IS NULL)) AND (_updated_at > _created_at)"

    const/4 v6, 0x0

    const-string v7, "_created_at ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 291
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-string v3, "_id"

    .line 293
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v7, v2, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v7, v3

    const-string v2, "_observation_id"

    aput-object v2, v7, v4

    const/4 v2, 0x2

    const-string v8, "_photo_id"

    aput-object v8, v7, v2

    const/4 v2, 0x3

    const-string v8, "photo_url"

    aput-object v8, v7, v2

    const/4 v2, 0x4

    const-string v8, "_updated_at"

    aput-object v8, v7, v2

    const/4 v2, 0x5

    const-string v8, "_synced_at"

    aput-object v8, v7, v2

    const-string v8, "((photo_url IS NULL) AND (_updated_at IS NOT NULL) AND (_synced_at IS NULL)) OR ((photo_url IS NULL) AND (_updated_at IS NOT NULL) AND (_synced_at IS NOT NULL) AND (_updated_at > _synced_at)) OR (is_deleted = 1)"

    const/4 v9, 0x0

    const-string v10, "_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 315
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x0

    .line 316
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v5, "_observation_id"

    .line 317
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v5, 0x1

    goto :goto_1

    .line 322
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 324
    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    .line 325
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 326
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 328
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    const v1, 0x7f100351

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 330
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f10035a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    iput-boolean v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    .line 334
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mCancelSync:Landroid/widget/TextView;

    const v1, 0x7f100385

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz v5, :cond_6

    .line 337
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshPhotoInfo()V

    goto :goto_3

    .line 340
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private refreshViewState()V
    .locals 13

    .line 430
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    const v2, 0x7f0a01b7

    const v3, 0x7f0a00dd

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v1, :cond_3

    .line 433
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    const v6, 0x7f100143

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 436
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 437
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 441
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto/16 :goto_2

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "observation_count"

    iget-object v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v8}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 458
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 459
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 463
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    const v6, 0x7f100272

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 473
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingSpecies:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_8

    .line 474
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    const/4 v6, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 475
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingSpecies:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 478
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    goto/16 :goto_6

    .line 483
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v7, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalSpecies:I

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingSpecies:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 488
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    const/16 v7, 0x1001

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 497
    :cond_5
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_6

    .line 501
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_3

    .line 504
    :cond_6
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 508
    :goto_3
    new-instance v1, Lorg/inaturalist/android/UserSpeciesAdapter;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 509
    new-instance v1, Lorg/inaturalist/android/UserSpeciesAdapter;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-direct {v1, p0, v6, v7, v8}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    goto :goto_5

    .line 489
    :cond_7
    :goto_4
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 494
    new-instance v1, Lorg/inaturalist/android/UserSpeciesAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v6}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 495
    new-instance v1, Lorg/inaturalist/android/UserSpeciesAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-direct {v1, p0, v6, v7, v8}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 512
    :goto_5
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v1, v6}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 515
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v1, v6}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 516
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v1, v6}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 518
    new-instance v1, Lorg/inaturalist/android/ObservationListActivity$2;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationListActivity$2;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    .line 535
    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesGridAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v6, v1}, Lorg/inaturalist/android/UserSpeciesAdapter;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 536
    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v6, v1}, Lorg/inaturalist/android/UserSpeciesAdapter;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 541
    :cond_8
    :goto_6
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingIdentifications:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_d

    .line 542
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    const/4 v6, 0x2

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 543
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingIdentifications:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    goto/16 :goto_9

    .line 551
    :cond_9
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingIdentifications:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_7

    .line 565
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    new-instance v0, Lorg/inaturalist/android/UserIdentificationsAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    .line 569
    new-instance v0, Lorg/inaturalist/android/UserIdentificationsAdapter;

    iget-object v9, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    iget-object v12, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGridAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    .line 571
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_b

    .line 572
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v4}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_8

    .line 575
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    goto :goto_8

    .line 557
    :cond_c
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0, v5}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setVisibility(I)V

    .line 562
    new-instance v0, Lorg/inaturalist/android/UserIdentificationsAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    .line 563
    new-instance v0, Lorg/inaturalist/android/UserIdentificationsAdapter;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGridAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    .line 580
    :goto_8
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 581
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGridAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 585
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentificationsGridAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 591
    :cond_d
    :goto_9
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshGridListMenuIcon()V

    return-void
.end method

.method private triggerSyncIfNeeded()V
    .locals 10

    .line 596
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->hasOldObservations()Z

    move-result v0

    .line 601
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncRequested:Z

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_6

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 606
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v5, "((_updated_at > _synced_at AND _synced_at IS NOT NULL) OR (_synced_at IS NULL) OR (is_deleted = 1))"

    const/4 v6, 0x0

    const-string v7, "_created_at ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 611
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 612
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 614
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    const-string v7, "((photo_url IS NULL) AND (_updated_at IS NOT NULL) AND (_synced_at IS NULL)) OR ((photo_url IS NULL) AND (_updated_at IS NOT NULL) AND (_synced_at IS NOT NULL) AND (_updated_at > _synced_at) AND (id IS NOT NULL)) OR (is_deleted = 1)"

    const/4 v8, 0x0

    const-string v9, "position ASC, id ASC, _id ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 620
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 621
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 624
    :goto_0
    sget-object v2, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "triggerSyncIfNeeded: hasOldOBs: %b; syncCount: %d; photoSyncCount: %d; mUserCanceledSync: %b"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 625
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    iget-boolean v9, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v6, v7

    .line 624
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    if-gtz v3, :cond_4

    if-lez v4, :cond_6

    .line 629
    :cond_4
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserCanceledSync:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 630
    :cond_5
    iput-boolean v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncRequested:Z

    .line 631
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 633
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 635
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 636
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    const v2, 0x7f10035b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 637
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingTopBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1623
    invoke-super {p0, p1, p2, p3}, Lorg/inaturalist/android/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    const/16 p1, 0x301

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x1002

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 1640
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->triggerSyncIfNeeded()V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 182
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->setCancelSync(Z)V

    .line 183
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshSyncBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 350
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 351
    sput-boolean v0, Lorg/inaturalist/android/ObservationListActivity;->sActivityCreated:Z

    .line 353
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const v1, 0x7f0d00a4

    .line 355
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationListActivity;->setContentView(I)V

    const v1, 0x7f100296

    .line 357
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationListActivity;->setTitle(I)V

    .line 359
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 361
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v1

    const-string v2, "Me"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 363
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 365
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 369
    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "me_screen_list_grid"

    .line 370
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ","

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v7, v3, v5

    .line 374
    iget-object v8, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v8, v6

    add-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "observations"

    .line 379
    iput-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewType:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_obs_editor"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mFromObsEdit:Z

    :cond_1
    const-string v3, "iNaturalistPreferences"

    .line 385
    invoke-virtual {p0, v3, v1}, Lorg/inaturalist/android/ObservationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "username"

    .line 386
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 388
    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->shownOnboarding()Z

    move-result v3

    if-nez v3, :cond_2

    .line 390
    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3, v0}, Lorg/inaturalist/android/INaturalistApp;->setShownOnboarding(Z)V

    .line 391
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "show_skip"

    .line 392
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x24000000

    .line 393
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    .line 399
    invoke-virtual {v0, p0}, Lorg/inaturalist/android/INaturalistApp;->setNotificationCallback(Lorg/inaturalist/android/INaturalistApp$INotificationCallback;)V

    .line 401
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3

    .line 403
    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    :cond_3
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationListActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 408
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->initializeTabs()V

    .line 410
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->triggerSyncIfNeeded()V

    .line 411
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V

    .line 414
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_CLEAR_OLD_PHOTOS_CACHE:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 418
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "following"

    .line 419
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 422
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 424
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_REFRESH_CURRENT_USER_SETTINGS:Ljava/lang/String;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p1, v0, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 915
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    .line 917
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 918
    iput-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mMenu:Landroid/view/Menu;

    .line 920
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshGridListMenuIcon()V

    const/4 p1, 0x1

    return p1
.end method

.method public onLoadingMoreResultsFailed()V
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingMoreResults:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/ObservationListActivity$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationListActivity$1;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onLoadingMoreResultsFinish()V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingMoreResults:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onLoadingMoreResultsStart()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingMoreResults:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 837
    iput-object p2, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastMessage:Ljava/lang/String;

    .line 839
    new-instance p1, Lorg/inaturalist/android/ObservationListActivity$4;

    invoke-direct {p1, p0, p2}, Lorg/inaturalist/android/ObservationListActivity$4;-><init>(Lorg/inaturalist/android/ObservationListActivity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 949
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0269

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0312

    if-eq v0, v1, :cond_0

    .line 962
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 959
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationListActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 951
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    iget-object v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    aget-boolean v1, v1, v3

    xor-int/2addr v1, v2

    aput-boolean v1, p1, v0

    const/4 p1, 0x0

    .line 953
    iput p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastIndex:I

    .line 954
    iput p1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastTop:I

    .line 955
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V

    return v2
.end method

.method public onPause()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 660
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onPause()V

    .line 662
    sget-object v0, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/AbsListView;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 668
    :goto_1
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastIndex:I

    .line 669
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 670
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_2
    iput v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastTop:I

    .line 675
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "me_screen_list_grid"

    const-string v3, "%s,%s,%s"

    const/4 v4, 0x3

    .line 677
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v5, v5, v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    const/4 v6, 0x1

    aget-boolean v5, v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 678
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 680
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationSyncProgressReceiver:Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 681
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mNewsReceiver:Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 682
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 683
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncCompleteReceiver:Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 684
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mConnectivityListener:Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    iput-boolean v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncRequested:Z

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 691
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onResume()V

    .line 693
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 697
    :cond_0
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mFromObsEdit:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_2

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 699
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 701
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->finish()V

    .line 706
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 707
    iget v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    if-gtz v0, :cond_3

    iget v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    if-lez v0, :cond_4

    .line 708
    :cond_3
    iput v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalSpecies:I

    .line 709
    iput v3, p0, Lorg/inaturalist/android/ObservationListActivity;->mTotalIdentifications:I

    .line 711
    iput-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    .line 712
    iput-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    .line 714
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V

    .line 718
    :cond_4
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;

    invoke-direct {v0, p0, v2}, Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;

    .line 719
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "user_details_result"

    .line 720
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "species_count_result"

    .line 721
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "user_observations_result"

    .line 722
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "identifications_result"

    .line 723
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 724
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/ObservationListActivity$UserDetailsReceiver;

    invoke-virtual {p0, v4, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 726
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;

    invoke-direct {v0, p0, v2}, Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationSyncProgressReceiver:Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;

    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "observation_sync_progress"

    .line 728
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationSyncProgressReceiver:Lorg/inaturalist/android/ObservationListActivity$ObservationSyncProgressReceiver;

    invoke-virtual {p0, v4, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 731
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;

    invoke-direct {v0, p0, v2}, Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncCompleteReceiver:Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;

    .line 732
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_SYNC_COMPLETE:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 733
    sget-object v4, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string v5, "Registering ACTION_SYNC_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncCompleteReceiver:Lorg/inaturalist/android/ObservationListActivity$SyncCompleteReceiver;

    invoke-virtual {p0, v4, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 736
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mConnectivityListener:Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

    .line 737
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 738
    sget-object v4, Lorg/inaturalist/android/ObservationListActivity;->TAG:Ljava/lang/String;

    const-string v5, "Registering CONNECTIVITY_ACTION"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mConnectivityListener:Lorg/inaturalist/android/ObservationListActivity$ConnectivityBroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 742
    new-instance v0, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;

    invoke-direct {v0, p0, v2}, Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;-><init>(Lorg/inaturalist/android/ObservationListActivity;Lorg/inaturalist/android/ObservationListActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mNewsReceiver:Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;

    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "updates_results"

    .line 744
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lorg/inaturalist/android/ObservationListActivity;->mNewsReceiver:Lorg/inaturalist/android/ObservationListActivity$NewsReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/ObservationListActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 747
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    const v2, 0x7f0a00dd

    if-eqz v0, :cond_8

    .line 748
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIsGrid:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_5

    .line 749
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    .line 750
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v0}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 751
    iget v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastIndex:I

    iget v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastTop:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/GridView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 754
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 755
    iget v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastIndex:I

    iget v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastTop:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 758
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 759
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshPhotoInfo()V

    .line 760
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationGridAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationGridAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor()V

    .line 762
    :cond_7
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 764
    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "observation_count"

    iget-object v6, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v6}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    :cond_8
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshSyncBar()V

    .line 769
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 770
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    .line 771
    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 773
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastMessage:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v1

    if-nez v1, :cond_9

    .line 774
    iget-object v1, p0, Lorg/inaturalist/android/ObservationListActivity;->mSyncingStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationListActivity;->mLastMessage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :cond_9
    invoke-virtual {v0, p0}, Lorg/inaturalist/android/INaturalistApp;->setNotificationCallback(Lorg/inaturalist/android/INaturalistApp$INotificationCallback;)V

    .line 776
    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mCancelSync:Landroid/widget/TextView;

    const v1, 0x7f100343

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 779
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/ObservationListActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationListActivity$3;-><init>(Lorg/inaturalist/android/ObservationListActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 789
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_b

    .line 791
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    const v4, 0x7f100143

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 792
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mLoadingObservations:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 794
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 796
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->refreshViewState()V

    .line 797
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    .line 798
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    .line 799
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    goto :goto_2

    .line 802
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 803
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 804
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 807
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmptyIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 814
    :cond_d
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getIsSyncing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mObservationListAdapter:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 815
    :cond_e
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    if-nez v0, :cond_f

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    .line 816
    :cond_f
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mIdentifications:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    .line 817
    :cond_10
    iget-object v0, p0, Lorg/inaturalist/android/ObservationListActivity;->mSpecies:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationListActivity;->getUserDetails(Ljava/lang/String;)V

    .line 820
    :cond_11
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationListActivity;->triggerSyncIfNeeded()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 825
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 826
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 160
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 161
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 168
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 169
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
