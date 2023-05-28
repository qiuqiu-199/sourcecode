.class public Lorg/inaturalist/android/MissionDetails;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MissionDetails.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;,
        Lorg/inaturalist/android/MissionDetails$TaxonReceiver;,
        Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;
    }
.end annotation


# static fields
.field public static final LOCATION_EXPANSION:Ljava/lang/String; = "location_expansion"

.field private static final MAX_MAP_RESULTS:I = 0x14

.field public static final MISSION:Ljava/lang/String; = "mission"


# instance fields
.field private mAboutTaxonText:Landroid/widget/TextView;

.field public mAboutText:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoadingAbout:Landroid/widget/ProgressBar;

.field private mLoadingMap:Landroid/widget/ProgressBar;

.field private mLoadingNearbyObservations:Landroid/widget/ProgressBar;

.field private mLocationExpansion:F

.field private mMapContainer:Landroid/view/ViewGroup;

.field public mMission:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mMissionBackground:Landroid/widget/ImageView;

.field private mMissionLocation:Landroid/widget/TextView;

.field private mMissionLocationContainer:Landroid/view/ViewGroup;

.field private mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

.field public mNearByMissions:Ljava/util/ArrayList;
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

.field private mNearbyMissionsPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

.field private mNearbyMissionsViewPager:Landroid/support/v4/view/ViewPager;

.field private mNearbyObservationsPageAdapter:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

.field private mNearbyObservationsViewPager:Landroid/support/v4/view/ViewPager;

.field private mNearbyReceiver:Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;

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

.field private mObserve:Landroid/widget/Button;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTaxonName:Landroid/widget/TextView;

.field private mTaxonNameContainer:Landroid/view/ViewGroup;

.field private mTaxonNameHidden:Z

.field private mTaxonReceiver:Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

.field private mTaxonScientificName:Landroid/widget/TextView;

.field private mViewOnWikipedia:Landroid/view/ViewGroup;

.field public mWikiTitle:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MissionDetails;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$102(Lorg/inaturalist/android/MissionDetails;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MissionDetails;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetails;->refreshViewState()V

    return-void
.end method

.method static synthetic access$300(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/MissionDetails;)Lorg/inaturalist/android/MissionDetails$TaxonReceiver;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonReceiver:Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    return-object p0
.end method

.method private refreshViewState()V
    .locals 14

    .line 324
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "taxon"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "default_photo"

    .line 325
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "default_photo"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    .line 330
    iget-object v2, p0, Lorg/inaturalist/android/MissionDetails;->mMissionBackground:Landroid/widget/ImageView;

    const-string v3, "medium_url"

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/inaturalist/android/MissionDetails$4;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/MissionDetails$4;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    invoke-static {v2, v1, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 342
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setExpandedTitleColor(I)V

    .line 343
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 344
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setBackgroundColor(I)V

    .line 347
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 350
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonScientificName:Landroid/widget/TextView;

    const-string v2, "preferred_common_name"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonName:Landroid/widget/TextView;

    const-string v2, "preferred_common_name"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const-string v2, "preferred_common_name"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonScientificName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 360
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingNearbyObservations:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto/16 :goto_5

    .line 368
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mMapContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocationContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingNearbyObservations:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 375
    new-instance v0, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v4}, Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;-><init>(Lorg/inaturalist/android/MissionDetails;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsPageAdapter:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    .line 376
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsPageAdapter:Lorg/inaturalist/android/MissionDetails$ObservationsPagerAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 379
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 382
    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_8

    .line 383
    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lorg/inaturalist/android/MissionDetails$5;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/MissionDetails$5;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 394
    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 396
    :goto_1
    iget-object v6, p0, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 397
    new-instance v6, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v7, p0, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v7, "place_guess"

    .line 398
    invoke-virtual {v6, v7}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "latitude"

    .line 399
    invoke-virtual {v6, v8}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    const-string v9, "longitude"

    .line 400
    invoke-virtual {v6, v9}, Lorg/inaturalist/android/BetterJSONObject;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    const v9, 0x7f080302

    if-nez v4, :cond_6

    if-eqz v7, :cond_3

    .line 404
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 405
    iget-object v10, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocation:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    .line 408
    iget-object v7, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocation:Landroid/widget/TextView;

    const v10, 0x7f100201

    invoke-virtual {p0, v10}, Lorg/inaturalist/android/MissionDetails;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "%.3f..."

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v8, v13, v3

    .line 409
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v3

    const-string v12, "%.3f..."

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v6, v13, v3

    .line 410
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    .line 408
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 415
    :cond_4
    iget-object v7, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocation:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    if-eqz v8, :cond_7

    .line 419
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 424
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v6, v8, :cond_5

    .line 425
    invoke-virtual {p0, v9}, Lorg/inaturalist/android/MissionDetails;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_3

    .line 427
    :cond_5
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 429
    :goto_3
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 430
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-int v8, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v10

    double-to-int v9, v12

    invoke-static {v6, v8, v9, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 432
    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-static {v6}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    .line 433
    iget-object v8, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 434
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v8, :cond_7

    .line 440
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v7, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 441
    new-instance v6, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v6}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-static {v9}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    .line 442
    iget-object v8, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 443
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    .line 449
    :cond_9
    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_a

    .line 451
    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mMissionMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v6, Lorg/inaturalist/android/MissionDetails$6;

    invoke-direct {v6, p0, v5, v0}, Lorg/inaturalist/android/MissionDetails$6;-><init>(Lorg/inaturalist/android/MissionDetails;ILcom/google/android/gms/maps/model/LatLngBounds$Builder;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 467
    :cond_a
    :goto_5
    new-instance v0, Lorg/inaturalist/android/MissionsPagerAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/MissionDetails;->mNearByMissions:Ljava/util/ArrayList;

    iget v5, p0, Lorg/inaturalist/android/MissionDetails;->mLocationExpansion:F

    invoke-direct {v0, p0, v4, v5, v1}, Lorg/inaturalist/android/MissionsPagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;FZ)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyMissionsPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

    .line 468
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyMissionsViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyMissionsPageAdapter:Lorg/inaturalist/android/MissionsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 470
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 471
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingAbout:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mAboutTaxonText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mViewOnWikipedia:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 475
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingAbout:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mAboutTaxonText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mViewOnWikipedia:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mAboutTaxonText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mAboutText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method public static startAlphaAnimation(Landroid/view/View;JI)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 538
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 542
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 543
    invoke-virtual {p3, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 544
    invoke-virtual {p0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 130
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 133
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 135
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Missions - View Detail"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d007e

    .line 138
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionDetails;->setContentView(I)V

    const v1, 0x7f0a03b1

    .line 140
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 141
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionDetails;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 142
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0a0218

    .line 144
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 145
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 147
    iget-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_4

    const-string p1, "mission"

    .line 152
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string p1, "location_expansion"

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/MissionDetails;->mLocationExpansion:F

    .line 154
    new-instance p1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v0, "id"

    .line 155
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 157
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v1, "recommended_missions_result"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistApp;->getServiceResult(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v0, :cond_3

    const-string v1, "results"

    .line 160
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONArray(Ljava/lang/String;)Lorg/inaturalist/android/SerializableJSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 163
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 165
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "taxon"

    .line 166
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    .line 167
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, p1, :cond_1

    .line 169
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 172
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iput-object v1, p0, Lorg/inaturalist/android/MissionDetails;->mNearByMissions:Ljava/util/ArrayList;

    goto :goto_2

    .line 178
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearByMissions:Ljava/util/ArrayList;

    .line 182
    :goto_2
    new-instance v0, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/MissionDetails$TaxonReceiver;-><init>(Lorg/inaturalist/android/MissionDetails;Lorg/inaturalist/android/MissionDetails$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonReceiver:Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    .line 183
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_get_taxon_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonReceiver:Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon_id"

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    const p1, 0x7f0a00b9

    .line 192
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mCollapsingToolbar:Landroid/support/design/widget/CollapsingToolbarLayout;

    const p1, 0x7f0a0215

    .line 193
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMissionBackground:Landroid/widget/ImageView;

    const p1, 0x7f0a038a

    .line 194
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonName:Landroid/widget/TextView;

    const p1, 0x7f0a0392

    .line 195
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonScientificName:Landroid/widget/TextView;

    const p1, 0x7f0a0216

    .line 196
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocation:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a01dc

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v0, Lorg/inaturalist/android/MissionDetails$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MissionDetails$1;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    const p1, 0x7f0a01f1

    .line 210
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMapContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0217

    .line 211
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMissionLocationContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a01c2

    .line 212
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingMap:Landroid/widget/ProgressBar;

    const p1, 0x7f0a038b

    .line 213
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonNameContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0274

    .line 214
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mObserve:Landroid/widget/Button;

    const p1, 0x7f0a023b

    .line 215
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyMissionsViewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0a0015

    .line 216
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mAboutTaxonText:Landroid/widget/TextView;

    const p1, 0x7f0a03df

    .line 217
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mViewOnWikipedia:Landroid/view/ViewGroup;

    const p1, 0x7f0a01b9

    .line 218
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingAbout:Landroid/widget/ProgressBar;

    const p1, 0x7f0a01c4

    .line 219
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mLoadingNearbyObservations:Landroid/widget/ProgressBar;

    const p1, 0x7f0a023c

    .line 220
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/MissionDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyObservationsViewPager:Landroid/support/v4/view/ViewPager;

    .line 222
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mViewOnWikipedia:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/MissionDetails$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MissionDetails$2;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mObserve:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/MissionDetails$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MissionDetails$3;-><init>(Lorg/inaturalist/android/MissionDetails;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetails;->refreshViewState()V

    .line 275
    iget-object p1, p0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_5

    .line 276
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->finish()V

    return-void

    :cond_5
    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 3

    .line 515
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    .line 516
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const p1, 0x7f08014e

    const-wide/16 v0, 0x64

    const v2, 0x3f666666    # 0.9f

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_0

    .line 519
    iget-boolean p2, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonNameHidden:Z

    if-nez p2, :cond_1

    .line 520
    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails;->mMissionBackground:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2}, Lorg/inaturalist/android/MissionDetails;->startAlphaAnimation(Landroid/view/View;JI)V

    .line 521
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "#7A7A7A"

    .line 522
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 523
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonNameHidden:Z

    goto :goto_0

    .line 527
    :cond_0
    iget-boolean p2, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonNameHidden:Z

    if-eqz p2, :cond_1

    .line 528
    iget-object p2, p0, Lorg/inaturalist/android/MissionDetails;->mMissionBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lorg/inaturalist/android/MissionDetails;->startAlphaAnimation(Landroid/view/View;JI)V

    .line 529
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "#FFFFFF"

    .line 530
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 531
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 532
    iput-boolean v2, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonNameHidden:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 124
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 289
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 291
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyReceiver:Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mTaxonReceiver:Lorg/inaturalist/android/MissionDetails$TaxonReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 297
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 298
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/inaturalist/android/MissionDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 302
    :cond_0
    new-instance v0, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;-><init>(Lorg/inaturalist/android/MissionDetails;Lorg/inaturalist/android/MissionDetails$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyReceiver:Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lorg/inaturalist/android/MissionDetails;->mNearbyReceiver:Lorg/inaturalist/android/MissionDetails$NearbyObservationsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 307
    iget-object v0, p0, Lorg/inaturalist/android/MissionDetails;->mObservations:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_NEARBY:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/MissionDetails;->mMission:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "taxon"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "id"

    .line 311
    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "get_location"

    const/4 v3, 0x1

    .line 313
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "location_expansion"

    .line 314
    iget v3, p0, Lorg/inaturalist/android/MissionDetails;->mLocationExpansion:F

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string v2, "taxon_id"

    .line 315
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "per_page"

    const/16 v2, 0x14

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 320
    :cond_1
    invoke-direct {p0}, Lorg/inaturalist/android/MissionDetails;->refreshViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 283
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 284
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 105
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 113
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
