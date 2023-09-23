.class public Lorg/inaturalist/android/UserActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "UserActivity.java"

# interfaces
.implements Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/UserActivity$NewsReceiver;,
        Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "UserActivity"

.field private static final VIEW_TYPE_MY_CONTENT:Ljava/lang/String; = "my_content"

.field private static final VIEW_TYPE_MY_FOLLOWING:Ljava/lang/String; = "following"

.field private static final VIEW_TYPE_NEWS:Ljava/lang/String; = "news"


# instance fields
.field public mActivities:Ljava/util/ArrayList;
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

.field private mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

.field private mActivityEmpty:Landroid/widget/TextView;

.field private mActivityEmptySubTitle:Landroid/widget/TextView;

.field private mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mFollowingActivities:Ljava/util/ArrayList;
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

.field private mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

.field private mFollowingActivityEmpty:Landroid/widget/TextView;

.field private mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

.field private mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoadingActivities:Landroid/widget/ProgressBar;

.field private mLoadingFollowingActivities:Landroid/widget/ProgressBar;

.field private mLoadingNews:Landroid/widget/ProgressBar;

.field public mNews:Ljava/util/ArrayList;
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

.field private mNewsEmpty:Landroid/widget/TextView;

.field private mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

.field private mNewsReceiver:Lorg/inaturalist/android/UserActivity$NewsReceiver;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;

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
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mLoadingNews:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$100(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mNewsEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmptySubTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1002(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmptySubTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$102(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mNewsEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$1102(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/UserActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/inaturalist/android/UserActivity;->refreshViewState()V

    return-void
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/UserActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1402(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivitiesAdapter;)Lorg/inaturalist/android/UserActivitiesAdapter;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/ProjectNewsAdapter;)Lorg/inaturalist/android/ProjectNewsAdapter;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$300(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/UserActivity;->initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$402(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mLoadingFollowingActivities:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$500(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/UserActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/inaturalist/android/UserActivity;Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object p1
.end method

.method static synthetic access$802(Lorg/inaturalist/android/UserActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mLoadingActivities:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/UserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$902(Lorg/inaturalist/android/UserActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iput-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmpty:Landroid/widget/TextView;

    return-object p1
.end method

.method private addTab(ILjava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    .line 104
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method private initPullToRefreshList(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/view/ViewGroup;)V
    .locals 3

    .line 442
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setPullLabel(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setReleaseLabel(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getLoadingLayoutProxy()Lcom/handmark/pulltorefresh/library/ILoadingLayout;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1002f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/ILoadingLayout;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 445
    invoke-virtual {p1, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setReleaseRatio(F)V

    const v0, 0x7f0a011b

    .line 447
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V

    .line 449
    new-instance p2, Lorg/inaturalist/android/UserActivity$2;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/UserActivity$2;-><init>(Lorg/inaturalist/android/UserActivity;)V

    invoke-virtual {p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    return-void
.end method

.method private initializeTabs()V
    .locals 2

    const v0, 0x7f0a0377

    .line 121
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const v0, 0x7f0a03e0

    .line 122
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 125
    new-instance v0, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/UserActivity$ActivityPageAdapter;-><init>(Lorg/inaturalist/android/UserActivity;Landroid/content/Context;)V

    .line 126
    iget-object v1, p0, Lorg/inaturalist/android/UserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 127
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lorg/inaturalist/android/UserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f100238

    .line 129
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/UserActivity;->addTab(ILjava/lang/String;)V

    const v0, 0x7f10016b

    .line 130
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/UserActivity;->addTab(ILjava/lang/String;)V

    const v0, 0x7f10025d

    .line 131
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lorg/inaturalist/android/UserActivity;->addTab(ILjava/lang/String;)V

    .line 133
    new-instance v0, Lorg/inaturalist/android/UserActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/UserActivity$1;-><init>(Lorg/inaturalist/android/UserActivity;)V

    .line 158
    iget-object v1, p0, Lorg/inaturalist/android/UserActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private refreshTabs(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    const v3, 0x7f0a0375

    const v4, 0x7f0a0078

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "#84000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private refreshViewState()V
    .locals 7

    .line 267
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingNews:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingNews:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingNews:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Lorg/inaturalist/android/ProjectNewsAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4}, Lorg/inaturalist/android/ProjectNewsAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    .line 283
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mNewsListAdapter:Lorg/inaturalist/android/ProjectNewsAdapter;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 289
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingActivities:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 292
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    const v4, 0x7f100238

    if-nez v3, :cond_3

    .line 293
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mLoadingActivities:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v3, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 295
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_4

    .line 300
    :cond_3
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mLoadingActivities:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 303
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 306
    :cond_4
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :goto_2
    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "unread_activities"

    .line 311
    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_5

    .line 313
    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_3

    :cond_5
    const-string v5, "%s (%d)"

    const/4 v6, 0x2

    .line 315
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/inaturalist/android/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 318
    :goto_3
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-nez v0, :cond_6

    .line 319
    new-instance v0, Lorg/inaturalist/android/UserActivitiesAdapter;

    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, p0}, Lorg/inaturalist/android/UserActivitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    .line 320
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v3, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 326
    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingFollowingActivities:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 328
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingFollowingActivities:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 333
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mLoadingFollowingActivities:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 336
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 339
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityEmptySubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    :goto_5
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-nez v0, :cond_9

    .line 344
    new-instance v0, Lorg/inaturalist/android/UserActivitiesAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, p0}, Lorg/inaturalist/android/UserActivitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lorg/inaturalist/android/UserActivitiesAdapter$IOnUpdateViewed;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    .line 345
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v2, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivityList:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const v0, 0x7f0d00f0

    .line 79
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->setContentView(I)V

    const v0, 0x7f10002a

    .line 81
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->setTitle(I)V

    .line 83
    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    .line 85
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "User Activity"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 89
    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez p1, :cond_0

    const-string v0, "my_content"

    .line 92
    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mViewType:Ljava/lang/String;

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/UserActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0}, Lorg/inaturalist/android/UserActivity;->initializeTabs()V

    .line 98
    invoke-direct {p0}, Lorg/inaturalist/android/UserActivity;->refreshViewState()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 355
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onPause()V

    .line 357
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsReceiver:Lorg/inaturalist/android/UserActivity$NewsReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 358
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->unregisterReceivers()V

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->unregisterReceivers()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 472
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onResume()V

    .line 473
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/inaturalist/android/UserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 477
    :cond_0
    new-instance v0, Lorg/inaturalist/android/UserActivity$NewsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/UserActivity$NewsReceiver;-><init>(Lorg/inaturalist/android/UserActivity;Lorg/inaturalist/android/UserActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNewsReceiver:Lorg/inaturalist/android/UserActivity$NewsReceiver;

    .line 478
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEWS_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "updates_results"

    .line 480
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "updates_following_results"

    .line 481
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lorg/inaturalist/android/UserActivity;->mNewsReceiver:Lorg/inaturalist/android/UserActivity$NewsReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/inaturalist/android/UserActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 486
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mNews:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_NEWS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 494
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    const-class v5, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v4, v1, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "following"

    .line 495
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 498
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 500
    new-instance v0, Landroid/content/Intent;

    sget-object v4, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_UPDATES:Ljava/lang/String;

    const-class v5, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v4, v1, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "following"

    .line 501
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 506
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    .line 511
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lorg/inaturalist/android/UserActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "unread_activities"

    .line 513
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v4, 0x7f100238

    if-nez v1, :cond_5

    .line 515
    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_1

    :cond_5
    const-string v5, "%s (%d)"

    const/4 v6, 0x2

    .line 517
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lorg/inaturalist/android/UserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 520
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->registerReceivers()V

    .line 521
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserActivitiesAdapter;->registerReceivers()V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 527
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 528
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onUpdateViewed(Lorg/inaturalist/android/Observation;I)V
    .locals 8

    .line 535
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    return-void

    .line 538
    :cond_1
    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "resource_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivities:Ljava/util/ArrayList;

    .line 539
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 541
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/UserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "unread_activities"

    const/4 v3, 0x1

    .line 542
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "viewed"

    .line 544
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    const/4 v2, 0x0

    .line 547
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 548
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "resource_id"

    .line 550
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "resource_id"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_3

    const-string v6, "viewed"

    .line 551
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "viewed"

    .line 552
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v4, v4, -0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    .line 559
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "unread_activities"

    if-lez v2, :cond_6

    move v1, v2

    :cond_6
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    iget-object p2, p0, Lorg/inaturalist/android/UserActivity;->mActivities:Ljava/util/ArrayList;

    if-ne p1, p2, :cond_7

    .line 562
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity;->mActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 564
    :cond_7
    iget-object p1, p0, Lorg/inaturalist/android/UserActivity;->mFollowingActivitiesListAdapter:Lorg/inaturalist/android/UserActivitiesAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/UserActivitiesAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 569
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-void
.end method
