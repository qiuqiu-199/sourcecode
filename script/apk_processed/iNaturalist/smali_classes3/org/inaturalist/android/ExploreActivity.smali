.class public Lorg/inaturalist/android/ExploreActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;,
        Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;,
        Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;,
        Lorg/inaturalist/android/ExploreActivity$LocationReceiver;
    }
.end annotation


# static fields
.field public static final ACTIVE_TAB:Ljava/lang/String; = "active_tab"

.field private static final FILTERS_REQUEST_CODE:I = 0x102

.field private static final MY_LOCATION_ZOOM_LEVEL:F = 10.0f

.field private static final NOT_LOADED:I = -0x1

.field private static final OBSERVATIONS_VIEW_MODE_GRID:I = 0x0

.field private static final OBSERVATIONS_VIEW_MODE_MAP:I = 0x1

.field public static final SEARCH_FILTERS:Ljava/lang/String; = "search_filters"

.field private static final SEARCH_REQUEST_CODE:I = 0x101

.field private static final TAG:Ljava/lang/String; = "ExploreActivity"

.field private static final VIEW_OBSERVATION_REQUEST_CODE:I = 0x100

.field public static final VIEW_TYPE_IDENTIFIERS:I = 0x3

.field public static final VIEW_TYPE_OBSERVATIONS:I = 0x0

.field public static final VIEW_TYPE_OBSERVERS:I = 0x2

.field public static final VIEW_TYPE_SPECIES:I = 0x1


# instance fields
.field public mActiveViewType:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mAnnotationsReceiver:Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mCurrentResultsPage:[I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mExploreResultsReceiver:Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;

.field private mFilterBar:[Landroid/widget/TextView;

.field private mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIdentifiers:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialLocationBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private mLastTotalResults:[I

.field private mList:[Landroid/widget/ListView;

.field private mListAdapter:[Landroid/widget/ArrayAdapter;

.field private mListEmpty:[Landroid/widget/TextView;

.field private mListHeader:[Landroid/view/ViewGroup;

.field mListViewIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mListViewOffset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingList:[Landroid/widget/ProgressBar;

.field private mLoadingMoreResults:[Landroid/view/ViewGroup;

.field public mLoadingNextResults:[Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingObservationsGrid:Landroid/widget/ProgressBar;

.field public mLocationPermissionRequested:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLocationReceiver:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

.field private mMapHide:Landroid/view/View;

.field public mMapMoved:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mMapReady:Z

.field public mMapRegion:Lcom/google/android/gms/maps/model/VisibleRegion;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservations:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mObservationsChangeMapLayers:Landroid/widget/ImageView;

.field private mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

.field private mObservationsGridEmpty:Landroid/widget/TextView;

.field private mObservationsGridFilterBar:Landroid/widget/TextView;

.field private mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mObservationsMapContainer:Landroid/view/ViewGroup;

.field private mObservationsMapFilterBar:Landroid/widget/TextView;

.field private mObservationsMapMyLocation:Landroid/widget/ImageView;

.field public mObservationsMapType:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservationsViewMode:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mObservationsViewModeGrid:Landroid/widget/ImageView;

.field private mObservationsViewModeMap:Landroid/widget/ImageView;

.field public mObservers:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformingSearch:Landroid/widget/ProgressBar;

.field private mRedoObservationSearchIcon:Landroid/widget/ImageView;

.field private mRedoObservationsSearch:Landroid/view/ViewGroup;

.field private mRedoObservationsSearchText:Landroid/widget/TextView;

.field private mResults:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mShouldMoveMapAccordingToSearchFilters:Z

.field public mSpecies:Ljava/util/List;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field public mTotalResults:[I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x4

    .line 120
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    .line 127
    new-array v1, v0, [Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    check-cast v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    .line 151
    new-array v1, v0, [Landroid/widget/ListView;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    .line 152
    new-array v1, v0, [Landroid/widget/ArrayAdapter;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mListAdapter:[Landroid/widget/ArrayAdapter;

    .line 153
    new-array v1, v0, [Landroid/widget/ProgressBar;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingList:[Landroid/widget/ProgressBar;

    .line 154
    new-array v1, v0, [Landroid/widget/TextView;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mListEmpty:[Landroid/widget/TextView;

    .line 155
    new-array v1, v0, [Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    .line 156
    new-array v1, v0, [Landroid/widget/TextView;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mFilterBar:[Landroid/widget/TextView;

    .line 157
    new-array v1, v0, [Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    aput-object v3, v1, v5

    aput-object v3, v1, v6

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingMoreResults:[Landroid/view/ViewGroup;

    .line 167
    iput v2, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    .line 170
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    .line 171
    new-array v1, v0, [Z

    fill-array-data v1, :array_2

    iput-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    .line 172
    iput v6, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    .line 173
    iput-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 174
    iput-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    .line 176
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLastTotalResults:[I

    .line 177
    iput-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mMapReady:Z

    .line 178
    iput-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mShouldMoveMapAccordingToSearchFilters:Z

    .line 179
    iput-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationPermissionRequested:Z

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewIndex:Ljava/util/Map;

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewOffset:Ljava/util/Map;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ExploreActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapMyLocation:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearch:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/inaturalist/android/ExploreActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearch:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$102(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapMyLocation:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingMoreResults:[Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshViewState()V

    return-void
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ExploreActivity;)[Ljava/util/List;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/GridViewExtended;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/inaturalist/android/ExploreActivity;->saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ArrayAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mListAdapter:[Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/ExploreActivity;IZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    return-void
.end method

.method static synthetic access$202(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/ObservationGridAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ObservationGridAdapter;)Lorg/inaturalist/android/ObservationGridAdapter;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshObservations()V

    return-void
.end method

.method static synthetic access$2300(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshMapType()V

    return-void
.end method

.method static synthetic access$2400(Lorg/inaturalist/android/ExploreActivity;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity;->resetResults(Z)V

    return-void
.end method

.method static synthetic access$2500(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->loadAllResults()V

    return-void
.end method

.method static synthetic access$2600(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mPerformingSearch:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$2602(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mPerformingSearch:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2702(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationSearchIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearchText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearchText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2902(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$3002(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity;->onObservationsMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$3200(Lorg/inaturalist/android/ExploreActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapReady:Z

    return p0
.end method

.method static synthetic access$3202(Lorg/inaturalist/android/ExploreActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/inaturalist/android/ExploreActivity;->mMapReady:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/inaturalist/android/ExploreActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/inaturalist/android/ExploreActivity;->mShouldMoveMapAccordingToSearchFilters:Z

    return p0
.end method

.method static synthetic access$3302(Lorg/inaturalist/android/ExploreActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/inaturalist/android/ExploreActivity;->mShouldMoveMapAccordingToSearchFilters:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/inaturalist/android/ExploreActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->moveMapAccordingToSearchFilters()V

    return-void
.end method

.method static synthetic access$3502(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridFilterBar:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapFilterBar:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3702(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3802(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3902(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsChangeMapLayers:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$4000(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ProgressBar;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingList:[Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mListEmpty:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mFilterBar:[Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$702(Lorg/inaturalist/android/ExploreActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapContainer:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ExploreActivity;)Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ExploreActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/inaturalist/android/ExploreActivity;->mInitialLocationBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method static synthetic access$902(Lorg/inaturalist/android/ExploreActivity;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mInitialLocationBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p1
.end method

.method private addPlaceLayerToMap(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1639
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "geometry_geojson"

    .line 1641
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreActivity;->getGeoJsonLayer(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1646
    invoke-virtual {p1, v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->setPolygonsClickable(Z)V

    .line 1647
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->addLayerToMap()V

    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    .line 473
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method private createTabContent(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 564
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00dd

    .line 565
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0374

    .line 566
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 568
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, p2

    .line 569
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 572
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 576
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 577
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 578
    iget p1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    :goto_0
    int-to-double p1, p1

    const-wide v1, 0x3fd147ae147ae148L    # 0.27

    .line 582
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    double-to-int p1, p1

    .line 583
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 584
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getGeoJsonLayer(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1655
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "FeatureCollection"

    .line 1656
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1658
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "Feature"

    .line 1659
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "geometry"

    .line 1660
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "properties"

    .line 1661
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1662
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "features"

    .line 1663
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1665
    new-instance p1, Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p1, v2, v1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lorg/json/JSONObject;)V

    .line 1666
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getDefaultLineStringStyle()Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;

    move-result-object v1

    const-string v2, "#ccf16f3a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/maps/android/data/geojson/GeoJsonLineStringStyle;->setColor(I)V

    .line 1667
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getDefaultPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object v1

    const-string v2, "#ccf16f3a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->setStrokeColor(I)V

    .line 1668
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    .line 1669
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 1670
    invoke-virtual {p1}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getDefaultPolygonStyle()Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygonStyle;->setStrokeWidth(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1673
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private initializeTabs()V
    .locals 7

    const v0, 0x7f0a0377

    .line 479
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0a03e0

    .line 480
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 482
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 483
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;-><init>(Lorg/inaturalist/android/ExploreActivity;Landroid/content/Context;)V

    .line 484
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 485
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 487
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v2, "observations_all_caps"

    const-string v3, "project_observations"

    invoke-virtual {v0, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/ExploreActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lorg/inaturalist/android/ExploreActivity;->addTab(ILandroid/view/View;)V

    .line 488
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "species_all_caps"

    const-string v4, "project_species"

    invoke-virtual {v0, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d0

    invoke-direct {p0, v0, v3}, Lorg/inaturalist/android/ExploreActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lorg/inaturalist/android/ExploreActivity;->addTab(ILandroid/view/View;)V

    .line 489
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "observers_all_caps"

    const-string v5, "observers"

    invoke-virtual {v0, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xbb8

    invoke-direct {p0, v0, v4}, Lorg/inaturalist/android/ExploreActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0}, Lorg/inaturalist/android/ExploreActivity;->addTab(ILandroid/view/View;)V

    .line 490
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "identifiers_all_caps"

    const-string v6, "project_identifiers"

    invoke-virtual {v0, v5, v6}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xfa0

    invoke-direct {p0, v0, v5}, Lorg/inaturalist/android/ExploreActivity;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->addTab(ILandroid/view/View;)V

    .line 492
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$5;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    .line 517
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 519
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$6;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$6;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    .line 533
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 537
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 538
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    const/4 v0, -0x1

    goto :goto_1

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 546
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 547
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 548
    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    const-wide v3, 0x3fd147ae147ae148L    # 0.27

    .line 552
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v3

    double-to-int v0, v0

    .line 555
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 556
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 557
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 558
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private loadAllResults()V
    .locals 2

    .line 1231
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshViewState()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1233
    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    .line 1234
    invoke-direct {p0, v0, v0}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    const/4 v1, 0x3

    .line 1235
    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    const/4 v1, 0x2

    .line 1236
    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    return-void
.end method

.method private loadListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    .line 371
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewIndex:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewOffset:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    if-nez p3, :cond_3

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Offset"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object p2, v0

    .line 381
    :cond_3
    :goto_0
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/inaturalist/android/ExploreActivity$4;-><init>(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/AbsListView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private loadNextResultsPage(IZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1241
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aput v0, v1, p1

    .line 1244
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object p2, p2, p1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object p2, p2, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v1, v1, p1

    if-ge p2, v1, :cond_2

    .line 1245
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    const/4 v1, 0x1

    aput-boolean v1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v2, p2

    goto :goto_0

    .line 1256
    :pswitch_0
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_IDENTIFIERS:Ljava/lang/String;

    goto :goto_0

    .line 1259
    :pswitch_1
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVERS:Ljava/lang/String;

    goto :goto_0

    .line 1253
    :pswitch_2
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_SPECIES:Ljava/lang/String;

    goto :goto_0

    .line 1250
    :pswitch_3
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_EXPLORE_GET_OBSERVATIONS:Ljava/lang/String;

    .line 1263
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v3, v2, p2, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "filters"

    .line 1264
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "page_number"

    .line 1265
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aget v2, v2, p1

    add-int/2addr v2, v1

    invoke-virtual {v3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1266
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1268
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mCurrentResultsPage:[I

    aget p2, p2, p1

    if-lez p2, :cond_2

    .line 1269
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingMoreResults:[Landroid/view/ViewGroup;

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1270
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private moveMapAccordingToSearchFilters()V
    .locals 7

    .line 1585
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-nez v0, :cond_0

    return-void

    .line 1587
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 1589
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->zoomMapToPlace(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1591
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1593
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->resetResults(Z)V

    const/4 v0, 0x0

    .line 1594
    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1595
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapMyLocation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 1597
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v0, :cond_3

    .line 1600
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    const-wide/high16 v2, -0x3fb2000000000000L    # -60.0

    const-wide v4, -0x3fa5800000000000L    # -106.0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v3, 0x4052800000000000L    # 74.0

    const-wide/high16 v5, 0x4043000000000000L    # 38.0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 v1, 0x0

    .line 1601
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 1602
    iput-boolean v1, p0, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    .line 1603
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onObservationsMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8

    .line 1533
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1535
    new-instance v7, Lorg/inaturalist/android/UTFPosition;

    int-to-float v2, v0

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/UTFPosition;-><init>(FDD)V

    .line 1537
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->API_HOST:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/points/%d/%d/%d.grid.json?%s"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {v7}, Lorg/inaturalist/android/UTFPosition;->getTilePositionX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {v7}, Lorg/inaturalist/android/UTFPosition;->getTilePositionY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreSearchFilters;->toUrlQueryString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1540
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ExploreActivity$18;

    invoke-direct {v1, p0, p1, v7}, Lorg/inaturalist/android/ExploreActivity$18;-><init>(Lorg/inaturalist/android/ExploreActivity;Ljava/lang/String;Lorg/inaturalist/android/UTFPosition;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1581
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshActionBar()V
    .locals 3

    .line 854
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 855
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 856
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0360

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 858
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-nez v2, :cond_0

    return-void

    .line 860
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 862
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    invoke-static {p0, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f100158

    .line 864
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 868
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    if-eqz v1, :cond_2

    const v1, 0x7f10023b

    .line 870
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 871
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v1, :cond_3

    const v1, 0x7f100213

    .line 873
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 874
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 876
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    const-string v2, "display_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const v1, 0x7f100172

    .line 879
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method private refreshFilterBar(Landroid/widget/TextView;)V
    .locals 8

    .line 761
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreSearchFilters;->isDirty()Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 766
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 770
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 775
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 776
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    const-string v4, ", "

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 777
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_3
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    .line 781
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 782
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_4
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 786
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v4, "login"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 787
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_5
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v4, "research"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f1002fd

    .line 791
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_6
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v4, "needs_id"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f100247

    .line 795
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 796
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_7
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v4, "casual"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const v3, 0x7f10009c

    .line 799
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ExploreActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_8
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    const/4 v4, 0x2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 819
    :pswitch_0
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 820
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 821
    new-instance v5, Ljava/util/TreeSet;

    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v6, v6, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 822
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 823
    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 824
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "MMMM"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 825
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 811
    :pswitch_1
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    if-eqz v3, :cond_9

    .line 812
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    .line 813
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 815
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 805
    :pswitch_2
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    if-eqz v3, :cond_9

    .line 806
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    invoke-virtual {v3, v5}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 807
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_9
    :goto_1
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 832
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    if-eqz v3, :cond_a

    const-string v3, " = "

    .line 835
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v3, ", "

    .line 839
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_c

    const-string v0, ""

    .line 844
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 847
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_d
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshMapType()V
    .locals 2

    .line 1205
    iget v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1206
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsChangeMapLayers:Landroid/widget/ImageView;

    const v1, 0x7f080262

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1208
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsChangeMapLayers:Landroid/widget/ImageView;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1211
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v0

    iget v1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    if-eq v0, v1, :cond_1

    .line 1212
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    iget v1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapType:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    :cond_1
    return-void
.end method

.method private refreshObservations()V
    .locals 5

    .line 994
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridFilterBar:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshFilterBar(Landroid/widget/TextView;)V

    .line 1000
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapFilterBar:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshFilterBar(Landroid/widget/TextView;)V

    .line 1002
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    new-instance v1, Lorg/inaturalist/android/ExploreActivity$10;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ExploreActivity$10;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1040
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    const/16 v3, 0x8

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    .line 1051
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1054
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1056
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1059
    :goto_0
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$11;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$11;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    .line 1073
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v2, v0}, Lorg/inaturalist/android/GridViewExtended;->post(Ljava/lang/Runnable;)Z

    .line 1075
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    goto :goto_3

    .line 1041
    :cond_3
    :goto_1
    iget v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    if-nez v0, :cond_4

    .line 1042
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 1044
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1047
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1078
    :goto_3
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "mList0"

    invoke-direct {p0, v0, v2, v4}, Lorg/inaturalist/android/ExploreActivity;->loadListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$12;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$12;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/GridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1097
    iget v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewMode:I

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 1098
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1099
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1100
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1101
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    const-string v2, "#676767"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1103
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 1105
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1106
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    const-string v4, "#676767"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1107
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1108
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1109
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapHide:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    :goto_4
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeGrid:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$13;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$13;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsViewModeMap:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$14;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$14;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsChangeMapLayers:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$15;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$15;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshMapType()V

    .line 1147
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearch:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1148
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mPerformingSearch:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationSearchIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearchText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_9

    const-string v1, "#8A000000"

    :goto_8
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    :cond_9
    const-string v1, "#000000"

    goto :goto_8

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1152
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mRedoObservationsSearch:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ExploreActivity$16;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ExploreActivity$16;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 1179
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->addPlaceLayerToMap(Lorg/json/JSONObject;)V

    .line 1184
    :cond_a
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$17;

    const/16 v1, 0x100

    invoke-direct {v0, p0, v1, v1}, Lorg/inaturalist/android/ExploreActivity$17;-><init>(Lorg/inaturalist/android/ExploreActivity;II)V

    .line 1199
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_b

    .line 1200
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    :cond_b
    return-void
.end method

.method private refreshResultsView(ILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/widget/ArrayAdapter;",
            ">;)V"
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingList:[Landroid/widget/ProgressBar;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mFilterBar:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mFilterBar:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshFilterBar(Landroid/widget/TextView;)V

    .line 936
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    .line 942
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingList:[Landroid/widget/ProgressBar;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 945
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListEmpty:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 947
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListEmpty:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 950
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 951
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 953
    :cond_4
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/inaturalist/android/ExploreActivity$8;-><init>(Lorg/inaturalist/android/ExploreActivity;ILjava/lang/Class;)V

    .line 970
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 972
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 974
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object p2, p2, p1

    new-instance v0, Lorg/inaturalist/android/ExploreActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/ExploreActivity$9;-><init>(Lorg/inaturalist/android/ExploreActivity;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 989
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object p2, p2, p1

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lorg/inaturalist/android/ExploreActivity;->loadListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_2

    .line 937
    :cond_5
    :goto_1
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingList:[Landroid/widget/ProgressBar;

    aget-object p2, p2, p1

    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 938
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 939
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mListEmpty:[Landroid/widget/TextView;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    aget-object p2, p2, p1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity;->mListHeader:[Landroid/view/ViewGroup;

    aget-object p1, p2, p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private refreshTabTitles()V
    .locals 7

    .line 884
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 886
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 887
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 888
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a01b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 890
    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mLastTotalResults:[I

    aget v4, v4, v1

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v5, v5, v1

    const/4 v6, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mLastTotalResults:[I

    aget v4, v4, v1

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 895
    :cond_0
    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mLastTotalResults:[I

    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v5, v5, v1

    aput v5, v4, v1

    const/16 v4, 0x8

    .line 897
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 899
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v3, v3, v1

    if-ne v3, v6, :cond_1

    const/4 v3, 0x4

    .line 901
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 904
    :cond_1
    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f010012

    .line 906
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 907
    new-instance v4, Lorg/inaturalist/android/ExploreActivity$7;

    invoke-direct {v4, p0, v2}, Lorg/inaturalist/android/ExploreActivity$7;-><init>(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 921
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private refreshViewState()V
    .locals 2

    .line 1276
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshActionBar()V

    .line 1277
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshTabTitles()V

    .line 1278
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshObservations()V

    .line 1279
    const-class v0, Lorg/inaturalist/android/UserSpeciesAdapter;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshResultsView(ILjava/lang/Class;)V

    .line 1280
    const-class v0, Lorg/inaturalist/android/ProjectUserAdapter;

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshResultsView(ILjava/lang/Class;)V

    .line 1281
    const-class v0, Lorg/inaturalist/android/ProjectUserAdapter;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ExploreActivity;->refreshResultsView(ILjava/lang/Class;)V

    return-void
.end method

.method private resetResults(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1217
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1218
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1219
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    .line 1225
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewIndex:Ljava/util/Map;

    .line 1226
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewOffset:Ljava/util/Map;

    :cond_2
    return-void
.end method

.method private saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 406
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 408
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewIndex:Ljava/util/Map;

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewOffset:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Offset"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private zoomMapToPlace(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "bounding_box_geojson"

    .line 1681
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->getGeoJsonLayer(Lorg/json/JSONObject;)Lcom/google/maps/android/data/geojson/GeoJsonLayer;

    move-result-object v0

    const-string v1, "location"

    .line 1682
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1686
    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getBoundingBox()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1688
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    .line 1689
    invoke-virtual {v0}, Lcom/google/maps/android/data/geojson/GeoJsonLayer;->getFeatures()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonFeature;

    .line 1690
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v3

    instance-of v3, v3, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    if-eqz v3, :cond_1

    .line 1691
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonFeature;->getGeometry()Lcom/google/maps/android/data/Geometry;

    move-result-object v1

    check-cast v1, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;

    .line 1692
    invoke-virtual {v1}, Lcom/google/maps/android/data/geojson/GeoJsonPolygon;->getCoordinates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1693
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    .line 1694
    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    .line 1700
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    .line 1703
    :cond_4
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1704
    invoke-static {p1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, ","

    .line 1708
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1709
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 1710
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 1714
    iput-boolean v2, p0, Lorg/inaturalist/android/ExploreActivity;->mMapMoved:Z

    .line 1715
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1610
    invoke-super {p0, p1, p2, p3}, Lorg/inaturalist/android/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/16 p1, 0x300

    if-ne p2, p1, :cond_4

    return-void

    :cond_0
    const/16 v0, 0x101

    if-eq p1, v0, :cond_1

    const/16 v0, 0x102

    if-ne p1, v0, :cond_4

    :cond_1
    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    const-string p1, "search_filters"

    .line 1618
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    .line 1620
    iget-boolean p1, p0, Lorg/inaturalist/android/ExploreActivity;->mMapReady:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 1621
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->moveMapAccordingToSearchFilters()V

    goto :goto_0

    .line 1624
    :cond_2
    iput-boolean p2, p0, Lorg/inaturalist/android/ExploreActivity;->mShouldMoveMapAccordingToSearchFilters:Z

    .line 1627
    :goto_0
    invoke-direct {p0, p2}, Lorg/inaturalist/android/ExploreActivity;->resetResults(Z)V

    .line 1629
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    .line 1630
    :cond_3
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->loadAllResults()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 231
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    const v1, 0x7f0d005b

    .line 237
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    const/4 v1, 0x1

    .line 238
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 239
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$1;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 249
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v0, 0x7f0d0059

    .line 251
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ExploreActivity;->setContentView(I)V

    .line 253
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    .line 256
    iput v5, p0, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    .line 258
    new-array v7, v4, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lorg/inaturalist/android/ExploreActivity;->mTotalResults:[I

    .line 259
    new-array v4, v4, [Ljava/util/List;

    aput-object v6, v4, v5

    aput-object v6, v4, v1

    aput-object v6, v4, v3

    aput-object v6, v4, v2

    check-cast v4, [Ljava/util/List;

    iput-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    .line 261
    iput-object v6, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const-string v2, "search_filters"

    .line 263
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "search_filters"

    .line 264
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    goto :goto_0

    .line 266
    :cond_0
    new-instance v2, Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-direct {v2}, Lorg/inaturalist/android/ExploreSearchFilters;-><init>()V

    iput-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    .line 267
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v1, v2, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    :goto_0
    const-string v2, "active_tab"

    .line 271
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "active_tab"

    .line 272
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/inaturalist/android/ExploreActivity$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreActivity$2;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 283
    :cond_1
    new-array v0, v4, [Ljava/util/List;

    aput-object v6, v0, v5

    aput-object v6, v0, v1

    aput-object v6, v0, v3

    aput-object v6, v0, v2

    check-cast v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    .line 284
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mObservations:Ljava/util/List;

    aput-object v4, v0, v5

    .line 285
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mSpecies:Ljava/util/List;

    aput-object v4, v0, v1

    .line 286
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity;->mObservers:Ljava/util/List;

    aput-object v4, v0, v3

    .line 287
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity;->mIdentifiers:Ljava/util/List;

    aput-object v3, v0, v2

    .line 289
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 290
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewIndex:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mListViewOffset:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Offset"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 294
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapRegion:Lcom/google/android/gms/maps/model/VisibleRegion;

    if-eqz v0, :cond_3

    .line 296
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->nearLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->farLeft:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v5, v5, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->farRight:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v7, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    iput-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    goto :goto_2

    .line 298
    :cond_3
    iput-object v6, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 302
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 305
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->initializeTabs()V

    .line 308
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 309
    iget-boolean p1, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationPermissionRequested:Z

    if-nez p1, :cond_5

    .line 310
    iput-boolean v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationPermissionRequested:Z

    .line 312
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v0, Lorg/inaturalist/android/ExploreActivity$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreActivity$3;-><init>(Lorg/inaturalist/android/ExploreActivity;)V

    invoke-virtual {p1, p0, v0}, Lorg/inaturalist/android/INaturalistApp;->requestLocationPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 199
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0004

    .line 201
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a013a

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0307

    if-eq v0, v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 211
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "search_filters"

    .line 212
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x101

    .line 213
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/ExploreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    .line 218
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "search_filters"

    .line 219
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "all_annotations"

    .line 220
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x102

    .line 221
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/ExploreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method public onPause()V
    .locals 1

    .line 421
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onPause()V

    .line 422
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mExploreResultsReceiver:Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 423
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationReceiver:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 424
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mAnnotationsReceiver:Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 426
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1721
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 431
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onResume()V

    .line 433
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mExploreResultsReceiver:Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;

    .line 434
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "explore_get_observations_result"

    .line 435
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "explore_get_species_result"

    .line 436
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "explore_get_identifiers_result"

    .line 437
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "explore_get_observers_result"

    .line 438
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mExploreResultsReceiver:Lorg/inaturalist/android/ExploreActivity$ExploreResultsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 441
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ExploreActivity$LocationReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationReceiver:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    .line 442
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "get_current_location_result"

    .line 443
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mLocationReceiver:Lorg/inaturalist/android/ExploreActivity$LocationReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 446
    new-instance v0, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;-><init>(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/ExploreActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mAnnotationsReceiver:Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;

    .line 447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "get_all_attributes_result"

    .line 448
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mAnnotationsReceiver:Lorg/inaturalist/android/ExploreActivity$AnnotationsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 451
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ALL_ATTRIBUTES:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 457
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreActivity;->refreshViewState()V

    .line 459
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mLastMapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    .line 462
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 463
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mLoadingNextResults:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 464
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ExploreActivity;->loadNextResultsPage(IZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 338
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 339
    iget v2, p0, Lorg/inaturalist/android/ExploreActivity;->mActiveViewType:I

    if-eq v2, v1, :cond_0

    .line 340
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    aget-object v0, v1, v0

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservations:Ljava/util/List;

    .line 345
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mSpecies:Ljava/util/List;

    .line 346
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservers:Ljava/util/List;

    .line 347
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mResults:[Ljava/util/List;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mIdentifiers:Ljava/util/List;

    .line 349
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    const-string v4, "mList0"

    invoke-direct {p0, v0, p1, v4}, Lorg/inaturalist/android/ExploreActivity;->saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object v0, v0, v1

    const-string v1, "mList1"

    invoke-direct {p0, v0, p1, v1}, Lorg/inaturalist/android/ExploreActivity;->saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object v0, v0, v2

    const-string v1, "mList2"

    invoke-direct {p0, v0, p1, v1}, Lorg/inaturalist/android/ExploreActivity;->saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mList:[Landroid/widget/ListView;

    aget-object v0, v0, v3

    const-string v1, "mList3"

    invoke-direct {p0, v0, p1, v1}, Lorg/inaturalist/android/ExploreActivity;->saveListViewOffset(Landroid/widget/AbsListView;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mObservationsMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ExploreActivity;->mMapRegion:Lcom/google/android/gms/maps/model/VisibleRegion;

    .line 358
    :cond_2
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 359
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 185
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 186
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 192
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 193
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
