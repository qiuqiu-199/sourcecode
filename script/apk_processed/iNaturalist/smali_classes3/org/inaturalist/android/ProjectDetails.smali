.class public Lorg/inaturalist/android/ProjectDetails;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProjectDetails.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;,
        Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;
    }
.end annotation


# static fields
.field public static final RESULT_REFRESH_RESULTS:I = 0x1000

.field private static final VIEW_TYPE_IDENTIFIERS:Ljava/lang/String; = "identifiers"

.field private static final VIEW_TYPE_OBSERVATIONS:Ljava/lang/String; = "observations"

.field private static final VIEW_TYPE_OBSERVERS:Ljava/lang/String; = "observers"

.field private static final VIEW_TYPE_SPECIES:Ljava/lang/String; = "species"


# instance fields
.field private mAboutProject:Landroid/widget/Button;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIdentifiers:Ljava/util/ArrayList;
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

.field private mIdentifiersList:Landroid/widget/ListView;

.field private mIdentifiersListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

.field private mIdentifiersListEmpty:Landroid/widget/TextView;

.field private mIdentifiersListHeader:Landroid/view/ViewGroup;

.field private mJoinLeaveProject:Landroid/widget/Button;

.field public mJoinedOrLeftProject:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingIdentifiersList:Landroid/widget/ProgressBar;

.field private mLoadingObservationsGrid:Landroid/widget/ProgressBar;

.field private mLoadingPeopleList:Landroid/widget/ProgressBar;

.field private mLoadingSpeciesList:Landroid/widget/ProgressBar;

.field public mObservations:Ljava/util/ArrayList;
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

.field private mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

.field private mObservationsGridEmpty:Landroid/widget/TextView;

.field public mObservers:Ljava/util/ArrayList;
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

.field private mPeopleList:Landroid/widget/ListView;

.field private mPeopleListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

.field private mPeopleListEmpty:Landroid/widget/TextView;

.field private mPeopleListHeader:Landroid/view/ViewGroup;

.field public mProject:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mProjectDetailsReceiver:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;

.field private mProjectNews:Landroid/widget/Button;

.field private mProjectPicContainer:Landroid/view/ViewGroup;

.field private mProjectPicHidden:Z

.field private mShowMoreObs:Landroid/widget/Button;

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

.field private mSpeciesList:Landroid/widget/ListView;

.field private mSpeciesListAdapter:Lorg/inaturalist/android/TaxonAdapter;

.field private mSpeciesListEmpty:Landroid/widget/TextView;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

.field public mTotalIdentifiers:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalObervers:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalObservations:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalSpecies:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field public mViewType:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinedOrLeftProject:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/inaturalist/android/ProjectDetails;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListHeader:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingPeopleList:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/inaturalist/android/ProjectDetails;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListHeader:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectDetails;->joinProject()V

    return-void
.end method

.method static synthetic access$2002(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGridEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/inaturalist/android/ProjectDetails;)Landroid/widget/Button;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mShowMoreObs:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mShowMoreObs:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ProjectDetails;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ProjectDetails;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectDetails;->refreshViewState()V

    return-void
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    return-object p0
.end method

.method static synthetic access$702(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/GridViewExtended;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    return-object p1
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ProjectDetails;)Lorg/inaturalist/android/ObservationGridAdapter;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/inaturalist/android/ProjectDetails;->mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

    return-object p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/ObservationGridAdapter;)Lorg/inaturalist/android/ObservationGridAdapter;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mGridAdapter:Lorg/inaturalist/android/ObservationGridAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lorg/inaturalist/android/ProjectDetails;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingIdentifiersList:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    .line 356
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method private createTabContent(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 450
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a00dd

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0374

    .line 452
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 454
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, p2

    .line 455
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 460
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 461
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 462
    iget p1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 464
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    :goto_0
    int-to-double p1, p1

    const-wide v1, 0x3fd21cac083126e9L    # 0.283

    .line 466
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v1

    double-to-int p1, p1

    .line 467
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 468
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private getProjectDetails(Ljava/lang/String;)V
    .locals 3

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "project_id"

    .line 481
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 482
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private initializeTabs()V
    .locals 7

    const v0, 0x7f0a0377

    .line 362
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0a03e0

    .line 363
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 365
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 366
    new-instance v0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsPageAdapter;-><init>(Lorg/inaturalist/android/ProjectDetails;Landroid/content/Context;)V

    .line 367
    iget-object v2, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 370
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v2, "observations_all_caps"

    const-string v3, "project_observations"

    invoke-virtual {v0, v2, v3}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/ProjectDetails;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lorg/inaturalist/android/ProjectDetails;->addTab(ILandroid/view/View;)V

    .line 371
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "species_all_caps"

    const-string v4, "project_species"

    invoke-virtual {v0, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d0

    invoke-direct {p0, v0, v3}, Lorg/inaturalist/android/ProjectDetails;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lorg/inaturalist/android/ProjectDetails;->addTab(ILandroid/view/View;)V

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v4, "people_all_caps"

    const-string v5, "project_people"

    invoke-virtual {v0, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xbb8

    invoke-direct {p0, v0, v4}, Lorg/inaturalist/android/ProjectDetails;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0}, Lorg/inaturalist/android/ProjectDetails;->addTab(ILandroid/view/View;)V

    .line 373
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "identifiers_all_caps"

    const-string v6, "project_identifiers"

    invoke-virtual {v0, v5, v6}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xfa0

    invoke-direct {p0, v0, v5}, Lorg/inaturalist/android/ProjectDetails;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/ProjectDetails;->addTab(ILandroid/view/View;)V

    .line 375
    new-instance v0, Lorg/inaturalist/android/ProjectDetails$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectDetails$5;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    .line 400
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 402
    new-instance v5, Lorg/inaturalist/android/ProjectDetails$6;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/ProjectDetails$6;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    .line 430
    iget-object v6, p0, Lorg/inaturalist/android/ProjectDetails;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 432
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    const-string v6, "observations"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    const-string v6, "species"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 435
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    const-string v6, "observers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 437
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    const-string v6, "identifiers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    iget-object v5, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 442
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_4

    .line 443
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    goto :goto_1

    .line 445
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    :goto_1
    return-void
.end method

.method private isLoggedIn()Z
    .locals 4

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/ProjectDetails;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    .line 475
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private joinProject()V
    .locals 4

    .line 291
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectDetails;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/OnboardingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    const v1, 0x7f1001e4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 298
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "joined"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_JOIN_PROJECT:Ljava/lang/String;

    const/4 v2, 0x0

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "project_id"

    .line 301
    iget-object v2, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private refreshViewState()V
    .locals 8

    .line 554
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    const v2, 0x7f0a01b7

    const v3, 0x7f0a00dd

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 557
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 560
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 564
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v5}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v6, p0, Lorg/inaturalist/android/ProjectDetails;->mTotalObservations:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingObservationsGrid:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 570
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGridEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    new-instance v6, Lorg/inaturalist/android/ProjectDetails$7;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/ProjectDetails$7;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {v1, v6}, Lorg/inaturalist/android/GridViewExtended;->post(Ljava/lang/Runnable;)Z

    .line 585
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservationsGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v1, v5}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 589
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_5

    .line 590
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpecies:Ljava/util/ArrayList;

    const/4 v6, 0x1

    if-nez v1, :cond_3

    .line 591
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 593
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3

    .line 597
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 599
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v6, p0, Lorg/inaturalist/android/ProjectDetails;->mTotalSpecies:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 603
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 605
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    :goto_2
    new-instance v1, Lorg/inaturalist/android/TaxonAdapter;

    iget-object v6, p0, Lorg/inaturalist/android/ProjectDetails;->mSpecies:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6}, Lorg/inaturalist/android/TaxonAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListAdapter:Lorg/inaturalist/android/TaxonAdapter;

    .line 609
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesList:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesListAdapter:Lorg/inaturalist/android/TaxonAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 614
    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingPeopleList:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_8

    .line 615
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservers:Ljava/util/ArrayList;

    const/4 v6, 0x2

    if-nez v1, :cond_6

    .line 616
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 618
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingPeopleList:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 619
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 623
    :cond_6
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 625
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v6, p0, Lorg/inaturalist/android/ProjectDetails;->mTotalObervers:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingPeopleList:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 629
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 631
    :cond_7
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    :goto_4
    new-instance v1, Lorg/inaturalist/android/ProjectUserAdapter;

    iget-object v6, p0, Lorg/inaturalist/android/ProjectDetails;->mObservers:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v6}, Lorg/inaturalist/android/ProjectUserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

    .line 635
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    iget-object v6, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 637
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mPeopleList:Landroid/widget/ListView;

    new-instance v6, Lorg/inaturalist/android/ProjectDetails$8;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/ProjectDetails$8;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 651
    :cond_8
    :goto_5
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingIdentifiersList:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_b

    .line 652
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiers:Ljava/util/ArrayList;

    const/4 v6, 0x3

    if-nez v1, :cond_9

    .line 653
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingIdentifiersList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_7

    .line 660
    :cond_9
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 662
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lorg/inaturalist/android/ProjectDetails;->mTotalIdentifiers:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mLoadingIdentifiersList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 666
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 668
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    :goto_6
    new-instance v0, Lorg/inaturalist/android/ProjectUserAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ProjectUserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

    .line 672
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListAdapter:Lorg/inaturalist/android/ProjectUserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 673
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersListHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiersList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/ProjectDetails$9;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ProjectDetails$9;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public static startAlphaAnimation(Landroid/view/View;JI)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 709
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 713
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 714
    invoke-virtual {p3, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 715
    invoke-virtual {p0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "project"

    .line 343
    iget-object v3, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 346
    iget-boolean v1, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinedOrLeftProject:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/inaturalist/android/ProjectDetails;->setResult(ILandroid/content/Intent;)V

    .line 347
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 149
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 151
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d00bf

    .line 152
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectDetails;->setContentView(I)V

    const v1, 0x7f0a03b1

    .line 154
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 155
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectDetails;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 156
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0a00b9

    .line 158
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const v3, 0x7f0a02c7

    .line 160
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    iput-object v3, p0, Lorg/inaturalist/android/ProjectDetails;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 161
    iget-object v3, p0, Lorg/inaturalist/android/ProjectDetails;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v3, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 163
    iget-object v3, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/INaturalistApp;

    iput-object v3, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_1

    .line 169
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "project"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string p1, "observations"

    .line 170
    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mViewType:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectDetails;->initializeTabs()V

    const p1, 0x7f0a01a3

    .line 176
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "join_all_caps"

    const-string v4, "join"

    invoke-virtual {v0, p0, p1, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0a0014

    .line 178
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mAboutProject:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "about_project_all_caps"

    const-string v4, "about_project"

    invoke-virtual {v0, p0, p1, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f0a02bc

    .line 180
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectNews:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "news_all_caps"

    const-string v4, "news"

    invoke-virtual {v0, p0, p1, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_2

    .line 184
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->finish()V

    return-void

    .line 188
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectNews:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/ProjectDetails$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectDetails$1;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mAboutProject:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/ProjectDetails$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectDetails$2;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02be

    .line 206
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a02bd

    .line 207
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 208
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "icon_url"

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x7f0a02c0

    const/16 v5, 0x8

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 211
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-static {p1, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    const p1, 0x7f0a02b3

    .line 215
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?bg=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/inaturalist/android/ProjectDetails$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProjectDetails$3;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-static {p1, v0, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/ProjectDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProject:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "joined"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 236
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v2, :cond_4

    .line 237
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    const v0, 0x7f1001e4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 239
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    const v0, 0x7f1001d9

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 242
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mJoinLeaveProject:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/ProjectDetails$4;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectDetails$4;-><init>(Lorg/inaturalist/android/ProjectDetails;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .line 691
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    .line 692
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const-wide/16 v0, 0x64

    const p1, 0x3f666666    # 0.9f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 695
    iget-boolean p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicHidden:Z

    if-nez p1, :cond_1

    .line 696
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-static {p1, v0, v1, p2}, Lorg/inaturalist/android/ProjectDetails;->startAlphaAnimation(Landroid/view/View;JI)V

    const/4 p1, 0x1

    .line 697
    iput-boolean p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicHidden:Z

    goto :goto_0

    .line 700
    :cond_0
    iget-boolean p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicHidden:Z

    if-eqz p1, :cond_1

    .line 701
    iget-object p1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lorg/inaturalist/android/ProjectDetails;->startAlphaAnimation(Landroid/view/View;JI)V

    .line 702
    iput-boolean p2, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectPicHidden:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 313
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 315
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectDetailsReceiver:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 320
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 325
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;-><init>(Lorg/inaturalist/android/ProjectDetails;Lorg/inaturalist/android/ProjectDetails$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectDetailsReceiver:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;

    .line 326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_SPECIES_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_IDENTIFIERS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVATIONS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_PROJECT_OBSERVERS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lorg/inaturalist/android/ProjectDetails;->mProjectDetailsReceiver:Lorg/inaturalist/android/ProjectDetails$ProjectDetailsReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 333
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mObservations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->getProjectDetails(Ljava/lang/String;)V

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mSpecies:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_SPECIES:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->getProjectDetails(Ljava/lang/String;)V

    .line 335
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mObservers:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_OBSERVERS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->getProjectDetails(Ljava/lang/String;)V

    .line 336
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ProjectDetails;->mIdentifiers:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_PROJECT_IDENTIFIERS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/ProjectDetails;->getProjectDetails(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 307
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 120
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 121
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 129
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
