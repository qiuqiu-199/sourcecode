.class public Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MissionDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ObservationsPagerAdapter"
.end annotation


# instance fields
.field private mAdapter:Lorg/inaturalist/android/UserObservationAdapter;

.field private mContext:Landroid/content/Context;

.field private mObservations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/MissionDetails;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/MissionDetails;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->this$0:Lorg/inaturalist/android/MissionDetails;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 573
    iput-object p2, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->mContext:Landroid/content/Context;

    .line 574
    new-instance p1, Lorg/inaturalist/android/UserObservationAdapter;

    const/16 v0, 0x1000

    invoke-direct {p1, p2, p3, v0}, Lorg/inaturalist/android/UserObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserObservationAdapter;

    .line 575
    iput-object p3, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->mObservations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 618
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserObservationAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/UserObservationAdapter;->getCount()I

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

    .line 595
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;->mAdapter:Lorg/inaturalist/android/UserObservationAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lorg/inaturalist/android/UserObservationAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 596
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 598
    new-instance p1, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter$1;-><init>(Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 585
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
