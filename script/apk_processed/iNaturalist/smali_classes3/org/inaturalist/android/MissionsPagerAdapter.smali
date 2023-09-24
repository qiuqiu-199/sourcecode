.class public Lorg/inaturalist/android/MissionsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MissionsPagerAdapter.java"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

.field private mContext:Landroid/content/Context;

.field private mIsNearbyMissions:Z

.field private final mLocationExpansion:F

.field private mMissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;FZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;FZ)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lorg/inaturalist/android/UserSpeciesAdapter;

    const/16 v1, 0x1002

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 24
    iput-object p2, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mMissions:Ljava/util/ArrayList;

    .line 25
    iput p3, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mLocationExpansion:F

    .line 26
    iput-boolean p4, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mIsNearbyMissions:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/MissionsPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MissionsPagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 14
    iget-object p0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mMissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MissionsPagerAdapter;)F
    .locals 0

    .line 14
    iget p0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mLocationExpansion:F

    return p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/MissionsPagerAdapter;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mIsNearbyMissions:Z

    return p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 69
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserSpeciesAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 0

    const p1, 0x3ea3d70a    # 0.32f

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/inaturalist/android/MissionsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lorg/inaturalist/android/UserSpeciesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 49
    new-instance p1, Lorg/inaturalist/android/MissionsPagerAdapter$1;

    invoke-direct {p1, p0, p2}, Lorg/inaturalist/android/MissionsPagerAdapter$1;-><init>(Lorg/inaturalist/android/MissionsPagerAdapter;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 36
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
