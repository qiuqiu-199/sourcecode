.class public Lorg/inaturalist/android/MissionsActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "MissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;,
        Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;
    }
.end annotation


# static fields
.field private static final CATEGORIES:[[I

.field private static final MISSION_ONBOARDING_REQUEST_CODE:I = 0x1000

.field public static final RECOMMENDED_MISSIONS_EXPANSION:[F


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mAskedForLocationPermissions:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mCategories:Lorg/inaturalist/android/GridViewExtended;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mLoadingDescription:Landroid/widget/TextView;

.field public mMissions:Ljava/util/ArrayList;
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

.field private mMissionsByCategoryContainer:Landroid/view/ViewGroup;

.field public mMissionsCurrentExpansionLevel:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mMissionsReceiver:Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;

.field private mMissionsViewPager:Landroid/support/v4/view/ViewPager;

.field private mNoConnectivityContainer:Landroid/view/ViewGroup;

.field private mNoMissionsContainer:Landroid/view/ViewGroup;

.field mPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

.field private mRecommendedForYouContainer:Landroid/view/ViewGroup;

.field private mViewAll:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xa

    .line 40
    new-array v0, v0, [[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f1002bb

    aput v4, v2, v3

    const/4 v4, 0x1

    const v5, 0x7f08025e

    aput v5, v2, v4

    const-string v5, "#F1F8EA"

    .line 41
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aput v5, v2, v6

    const/4 v5, 0x3

    const v7, 0xb816

    aput v7, v2, v5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const v7, 0x7f100211

    aput v7, v2, v3

    const v7, 0x7f08025c

    aput v7, v2, v4

    const-string v7, "#E9F0FB"

    .line 42
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const v7, 0x9cd7

    aput v7, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const v7, 0x7f1001d0

    aput v7, v2, v3

    const v7, 0x7f08025b

    aput v7, v2, v4

    const-string v7, "#FDEAE6"

    .line 43
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const v7, 0xb836

    aput v7, v2, v5

    aput-object v2, v0, v6

    new-array v2, v1, [I

    const v7, 0x7f1002fa

    aput v7, v2, v3

    const v7, 0x7f08025f

    aput v7, v2, v4

    const-string v7, "#E9F0FB"

    .line 44
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const/16 v7, 0x65b4

    aput v7, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v7, 0x7f100168

    aput v7, v2, v3

    const v7, 0x7f080259

    aput v7, v2, v4

    const-string v7, "#E9F0FB"

    .line 45
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const v7, 0xb84a

    aput v7, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const v7, 0x7f10021d

    aput v7, v2, v3

    const v7, 0x7f08025d

    aput v7, v2, v4

    const-string v7, "#FDEAE6"

    .line 46
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const v7, 0xb80b

    aput v7, v2, v5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const v7, 0x7f100044

    aput v7, v2, v3

    const v7, 0x7f080256

    aput v7, v2, v4

    const-string v7, "#E9F0FB"

    .line 47
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const/16 v7, 0x51f2

    aput v7, v2, v5

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const v7, 0x7f10016e

    aput v7, v2, v3

    const v7, 0x7f08025a

    aput v7, v2, v4

    const-string v7, "#FDEAE6"

    .line 48
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    const v7, 0xb842

    aput v7, v2, v5

    const/4 v7, 0x7

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const v7, 0x7f10006a

    aput v7, v2, v3

    const v7, 0x7f080258

    aput v7, v2, v4

    const-string v7, "#E9F0FB"

    .line 49
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6

    aput v5, v2, v5

    const/16 v7, 0x8

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const v7, 0x7f10005d

    aput v7, v2, v3

    const v3, 0x7f080257

    aput v3, v2, v4

    const-string v3, "#FDEAE6"

    .line 50
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    const v3, 0xb80f

    aput v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    sput-object v0, Lorg/inaturalist/android/MissionsActivity;->CATEGORIES:[[I

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/inaturalist/android/MissionsActivity;->RECOMMENDED_MISSIONS_EXPANSION:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    .line 75
    iput-boolean v0, p0, Lorg/inaturalist/android/MissionsActivity;->mAskedForLocationPermissions:Z

    return-void
.end method

.method static synthetic access$000()[[I
    .locals 1

    .line 38
    sget-object v0, Lorg/inaturalist/android/MissionsActivity;->CATEGORIES:[[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/MissionsActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->refreshViewState()V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/MissionsActivity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->resizeMissionCategories()V

    return-void
.end method

.method static synthetic access$600(Lorg/inaturalist/android/MissionsActivity;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    return-object p0
.end method

.method private askForLocationPermissions()V
    .locals 2

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lorg/inaturalist/android/MissionsActivity;->mAskedForLocationPermissions:Z

    .line 338
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v1, Lorg/inaturalist/android/MissionsActivity$3;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/MissionsActivity$3;-><init>(Lorg/inaturalist/android/MissionsActivity;)V

    invoke-virtual {v0, p0, v1}, Lorg/inaturalist/android/INaturalistApp;->requestLocationPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 428
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/MissionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 429
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
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

.method private refreshViewState()V
    .locals 4

    .line 263
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->isNetworkAvailable()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mNoConnectivityContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mRecommendedForYouContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsByCategoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mNoConnectivityContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mRecommendedForYouContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsByCategoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoadingDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoadingDescription:Landroid/widget/TextView;

    const v1, 0x7f100316

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoadingDescription:Landroid/widget/TextView;

    const v1, 0x7f100155

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mLoadingDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mRecommendedForYouContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsByCategoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsByCategoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 299
    new-instance v0, Lorg/inaturalist/android/MissionsPagerAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    iget v3, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsCurrentExpansionLevel:I

    int-to-float v3, v3

    invoke-direct {v0, p0, v1, v3, v2}, Lorg/inaturalist/android/MissionsPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FZ)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

    .line 300
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity;->mPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :goto_0
    return-void
.end method

.method private resizeMissionCategories()V
    .locals 4

    .line 362
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 363
    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v1}, Lorg/inaturalist/android/GridViewExtended;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v1}, Lorg/inaturalist/android/GridViewExtended;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 365
    new-instance v1, Lorg/inaturalist/android/MissionsActivity$4;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/MissionsActivity$4;-><init>(Lorg/inaturalist/android/MissionsActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    new-instance v2, Lorg/inaturalist/android/MissionsActivity$5;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/MissionsActivity$5;-><init>(Lorg/inaturalist/android/MissionsActivity;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/GridViewExtended;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 448
    invoke-super {p0, p1, p2, p3}, Lorg/inaturalist/android/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1000

    if-ne p1, p2, :cond_0

    .line 451
    iget-boolean p1, p0, Lorg/inaturalist/android/MissionsActivity;->mAskedForLocationPermissions:Z

    if-nez p1, :cond_0

    .line 452
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->askForLocationPermissions()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const v0, 0x7f0d0081

    .line 97
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/MissionsActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Missions"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    const p1, 0x7f0a021a

    .line 102
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsByCategoryContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a02d9

    .line 103
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mRecommendedForYouContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a024b

    .line 104
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mNoConnectivityContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0251

    .line 105
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mNoMissionsContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a02da

    .line 106
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsViewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0a01b7

    .line 107
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mLoading:Landroid/widget/ProgressBar;

    const p1, 0x7f0a01bc

    .line 108
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mLoadingDescription:Landroid/widget/TextView;

    const p1, 0x7f0a00a4

    .line 109
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GridViewExtended;

    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    .line 110
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    new-instance v0, Lorg/inaturalist/android/MissionsActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MissionsActivity$1;-><init>(Lorg/inaturalist/android/MissionsActivity;)V

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f0a03da

    .line 124
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mViewAll:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mViewAll:Landroid/widget/TextView;

    new-instance v1, Lorg/inaturalist/android/MissionsActivity$2;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/MissionsActivity$2;-><init>(Lorg/inaturalist/android/MissionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 138
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 140
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "view_all_all_caps"

    const-string v2, "view_all"

    invoke-virtual {v0, p0, p1, v1, v2}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    new-instance v0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;

    sget-object v1, Lorg/inaturalist/android/MissionsActivity;->CATEGORIES:[[I

    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity;->mCategories:Lorg/inaturalist/android/GridViewExtended;

    invoke-direct {v0, p0, p0, v1, v2}, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;-><init>(Lorg/inaturalist/android/MissionsActivity;Landroid/content/Context;[[ILorg/inaturalist/android/GridViewExtended;)V

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->resizeMissionCategories()V

    const-string p1, "iNaturalistPreferences"

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/MissionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "shown_missions_onboarding"

    .line 146
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/MissionsOnboardingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x1000

    .line 149
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/MissionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 436
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onPause()V

    .line 438
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 307
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onResume()V

    .line 309
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 313
    :cond_0
    new-instance v0, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;-><init>(Lorg/inaturalist/android/MissionsActivity;Lorg/inaturalist/android/MissionsActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "recommended_missions_result"

    .line 315
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity;->mMissionsReceiver:Lorg/inaturalist/android/MissionsActivity$MissionsReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/MissionsActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 318
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mMissions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_RECOMMENDED_MISSIONS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "username"

    .line 322
    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-boolean v0, p0, Lorg/inaturalist/android/MissionsActivity;->mAskedForLocationPermissions:Z

    if-nez v0, :cond_2

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/MissionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_missions_onboarding"

    .line 326
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->askForLocationPermissions()V

    .line 332
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/inaturalist/android/MissionsActivity;->refreshViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 80
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 81
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 88
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 89
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public setGridViewHeightBasedOnItems(Lorg/inaturalist/android/GridViewExtended;)I
    .locals 4

    .line 395
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 397
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 398
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getNumColumns()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 399
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 402
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 403
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getVerticalSpacing()I

    move-result v1

    .line 405
    :cond_0
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result v2

    mul-int v2, v2, v0

    add-int/lit8 v0, v0, -0x1

    mul-int v0, v0, v1

    add-int/2addr v2, v0

    .line 411
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 413
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_1

    .line 414
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 415
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/GridViewExtended;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->requestLayout()V

    :cond_1
    return v2

    :cond_2
    return v1
.end method
