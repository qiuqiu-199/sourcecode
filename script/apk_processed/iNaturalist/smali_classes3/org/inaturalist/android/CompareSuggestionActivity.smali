.class public Lorg/inaturalist/android/CompareSuggestionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CompareSuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;
    }
.end annotation


# static fields
.field public static final OBSERVATION_ID:Ljava/lang/String; = "observation_id"

.field public static final OBSERVATION_ID_INTERNAL:Ljava/lang/String; = "observation_id_internal"

.field public static final OBSERVATION_JSON:Ljava/lang/String; = "observation_json"

.field private static final OBSERVATION_PHOTO_POSITION:Ljava/lang/String; = "observation_photo_position"

.field public static final SUGGESTION_INDEX:Ljava/lang/String; = "suggestion_index"

.field private static final SUGGESTION_PHOTO_POSITION:Ljava/lang/String; = "suggestion_photo_position"

.field private static TAG:Ljava/lang/String; = "CompareSuggestionActivity"

.field private static final TAXON_SEARCH_REQUEST_CODE:I = 0x1000

.field private static mTaxonSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAboutTaxon:Landroid/view/View;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mBackButton:Landroid/view/View;

.field private mEnlargeTaxon:Landroid/view/View;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mNextTaxon:Landroid/widget/ImageView;

.field public mObsId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObsIdInternal:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservation:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field public mObservationPhotoPosition:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

.field private mPreviousTaxon:Landroid/widget/ImageView;

.field private mSelectTaxon:Landroid/view/View;

.field public mSuggestionIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mSuggestionPhotoPosition:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonDetails:Landroid/view/ViewGroup;

.field private mTaxonMenu:Landroid/view/ViewGroup;

.field private mTaxonName:Landroid/widget/TextView;

.field private mTaxonNameIcon:Landroid/widget/ImageView;

.field private mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

.field private mTaxonReceiver:Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/CompareSuggestionActivity;)Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonReceiver:Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/CompareSuggestionActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/CompareSuggestionActivity;)Lcom/viewpagerindicator/CirclePageIndicator;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/CompareSuggestionActivity;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mBackButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/CompareSuggestionActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonMenu:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/CompareSuggestionActivity;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->refreshCurrentTaxon()V

    return-void
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/CompareSuggestionActivity;)Lcom/viewpagerindicator/CirclePageIndicator;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/CompareSuggestionActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonDetails:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    return-object p0
.end method

.method private refreshCurrentTaxon()V
    .locals 11

    .line 271
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    sget-object v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    iget v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonMenu:Landroid/view/ViewGroup;

    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonMenu:Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/CompareSuggestionActivity$4;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$4;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v7, Lorg/inaturalist/android/CompareSuggestionActivity$5;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$5;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    .line 292
    new-instance v1, Lorg/inaturalist/android/CompareSuggestionActivity$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$6;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    .line 303
    new-instance v9, Lorg/inaturalist/android/CompareSuggestionActivity$7;

    invoke-direct {v9, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$7;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    .line 315
    new-instance v10, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    const/4 v6, 0x1

    move-object v2, v10

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;ZLandroid/view/View$OnClickListener;)V

    .line 317
    new-instance v2, Lorg/inaturalist/android/CompareSuggestionActivity$8;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$8;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    invoke-virtual {v10, v2}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->setOnZoomListener(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 351
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 352
    iget-object v3, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v3, v2, v2, v2, v2}, Luk/co/senab/photoview/HackyViewPager;->setPadding(IIII)V

    .line 355
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v2, v10}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 357
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v3, Lorg/inaturalist/android/CompareSuggestionActivity$9;

    invoke-direct {v3, p0, v9}, Lorg/inaturalist/android/CompareSuggestionActivity$9;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/HackyViewPager;->setOnSwipeOutListener(Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;)V

    .line 377
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget v3, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    invoke-virtual {v2, v3}, Luk/co/senab/photoview/HackyViewPager;->setCurrentItem(I)V

    .line 379
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v3, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v2, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 381
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v2}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 382
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v2, v8}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 387
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v4, Lorg/inaturalist/android/CompareSuggestionActivity$10;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$10;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    invoke-virtual {v2, v4}, Luk/co/senab/photoview/HackyViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 405
    iget v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    if-nez v2, :cond_2

    .line 407
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mPreviousTaxon:Landroid/widget/ImageView;

    const-string v4, "#A8C967"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 409
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mPreviousTaxon:Landroid/widget/ImageView;

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 413
    :goto_1
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mPreviousTaxon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    sget-object v2, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_3

    .line 417
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mNextTaxon:Landroid/widget/ImageView;

    const-string v2, "#A8C967"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_2

    .line 419
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mNextTaxon:Landroid/widget/ImageView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 422
    :goto_2
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mNextTaxon:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSelectTaxon:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/CompareSuggestionActivity$11;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/CompareSuggestionActivity$11;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mEnlargeTaxon:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/CompareSuggestionActivity$12;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/CompareSuggestionActivity$12;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 459
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonName:Landroid/widget/TextView;

    invoke-static {v1, v0, v3}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;Z)V

    goto :goto_3

    .line 461
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonName:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 465
    :goto_3
    new-instance v1, Lorg/inaturalist/android/CompareSuggestionActivity$13;

    invoke-direct {v1, p0, v0}, Lorg/inaturalist/android/CompareSuggestionActivity$13;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/json/JSONObject;)V

    .line 480
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonNameIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mAboutTaxon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private refreshViews()V
    .locals 7

    .line 194
    new-instance v5, Lorg/inaturalist/android/CompareSuggestionActivity$2;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$2;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    .line 214
    iget v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v6, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lorg/json/JSONObject;ZLandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    new-instance v6, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget v3, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsId:I

    iget v4, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;IILandroid/view/View$OnClickListener;)V

    .line 221
    :goto_1
    new-instance v0, Lorg/inaturalist/android/CompareSuggestionActivity$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$3;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    invoke-virtual {v6, v0}, Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter;->setOnZoomListener(Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 253
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 254
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v1, v0, v0, v0, v0}, Luk/co/senab/photoview/HackyViewPager;->setPadding(IIII)V

    .line 256
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0, v6}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 258
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    iget v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotoPosition:I

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/HackyViewPager;->setCurrentItem(I)V

    .line 259
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 261
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    goto :goto_2

    .line 264
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 267
    :goto_2
    invoke-direct {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->refreshCurrentTaxon()V

    return-void
.end method

.method public static setTaxonSuggestions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;)V"
        }
    .end annotation

    .line 84
    sput-object p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 497
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 502
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 503
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    .line 504
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/CompareSuggestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 507
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x5

    .line 105
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 106
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->requestWindowFeature(I)Z

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 114
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 115
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 117
    invoke-virtual {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "observation_id_internal"

    const/4 v2, -0x1

    .line 120
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    const-string p1, "observation_id"

    .line 121
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsId:I

    const-string p1, "observation_json"

    .line 122
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    :cond_0
    const-string p1, "suggestion_index"

    .line 126
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    :cond_1
    const-string p1, "window"

    .line 129
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const p1, 0x7f0d0037

    .line 133
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setContentView(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    const p1, 0x7f0d0036

    .line 135
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setContentView(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0d0035

    .line 137
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setContentView(I)V

    :goto_0
    const p1, 0x7f0a0068

    .line 140
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mBackButton:Landroid/view/View;

    const p1, 0x7f0a0265

    .line 141
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    const p1, 0x7f0a0267

    .line 142
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const p1, 0x7f0a038e

    .line 143
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    const p1, 0x7f0a0390

    .line 144
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const p1, 0x7f0a0249

    .line 145
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mNextTaxon:Landroid/widget/ImageView;

    const p1, 0x7f0a02ab

    .line 146
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mPreviousTaxon:Landroid/widget/ImageView;

    const p1, 0x7f0a0389

    .line 147
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonMenu:Landroid/view/ViewGroup;

    const p1, 0x7f0a00e0

    .line 148
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonDetails:Landroid/view/ViewGroup;

    const p1, 0x7f0a0322

    .line 149
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSelectTaxon:Landroid/view/View;

    const p1, 0x7f0a0121

    .line 150
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mEnlargeTaxon:Landroid/view/View;

    const p1, 0x7f0a0015

    .line 151
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mAboutTaxon:Landroid/view/View;

    const p1, 0x7f0a038a

    .line 152
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonName:Landroid/widget/TextView;

    const p1, 0x7f0a038c

    .line 153
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonNameIcon:Landroid/widget/ImageView;

    .line 155
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonMenu:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mBackButton:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/CompareSuggestionActivity$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/CompareSuggestionActivity$1;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-direct {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->refreshViews()V

    .line 168
    sget-object p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    if-eqz p1, :cond_4

    sget-object p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 169
    sget-object p1, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonSuggestions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "taxon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "taxon_photos"

    .line 171
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    new-instance v0, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/inaturalist/android/CompareSuggestionActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonReceiver:Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_get_taxon_new_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lorg/inaturalist/android/CompareSuggestionActivity;->TAG:Ljava/lang/String;

    const-string v3, "Registering ACTION_GET_TAXON_NEW_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonReceiver:Lorg/inaturalist/android/CompareSuggestionActivity$TaxonReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_NEW:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon_id"

    const-string v2, "id"

    .line 180
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 190
    invoke-direct {p0}, Lorg/inaturalist/android/CompareSuggestionActivity;->refreshViews()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservationPhotoPosition:I

    .line 489
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mTaxonPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    .line 491
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 492
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 90
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 91
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 99
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
