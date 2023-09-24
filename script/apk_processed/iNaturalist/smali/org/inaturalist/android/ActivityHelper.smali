.class public Lorg/inaturalist/android/ActivityHelper;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ActivityHelper$isListScrollable;,
        Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ActivityHelper"


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-void
.end method

.method private addCircle(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;ILorg/inaturalist/android/Observation;)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 342
    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ActivityHelper;->addCircle(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;ILorg/inaturalist/android/Observation;Z)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    return-object p1
.end method

.method private addCircle(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;ILorg/inaturalist/android/Observation;Z)Lcom/google/android/gms/maps/CameraUpdate;
    .locals 3

    .line 346
    invoke-virtual {p0, p4}, Lorg/inaturalist/android/ActivityHelper;->observationColor(Lorg/inaturalist/android/Observation;)I

    move-result p4

    .line 347
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 348
    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    int-to-double v1, p3

    .line 349
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p3

    const v0, -0x7f000001

    and-int/2addr v0, p4

    .line 350
    invoke-virtual {p3, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p3

    .line 351
    invoke-virtual {p3, p4}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object p3

    .line 352
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    if-nez p5, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 356
    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    const-wide/16 p3, 0x0

    .line 357
    invoke-static {p2, v1, v2, p3, p4}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    const-wide p3, 0x4056800000000000L    # 90.0

    .line 358
    invoke-static {p2, v1, v2, p3, p4}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    const-wide p3, 0x4066800000000000L    # 180.0

    .line 359
    invoke-static {p2, v1, v2, p3, p4}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    const-wide p3, 0x4070e00000000000L    # 270.0

    .line 360
    invoke-static {p2, v1, v2, p3, p4}, Lcom/google/maps/android/SphericalUtil;->computeOffset(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/16 p2, 0xa

    .line 361
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    return-object p1
.end method

.method public static resizeList(Landroid/widget/ListView;)V
    .locals 4

    .line 522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 523
    invoke-virtual {p0}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    new-instance v1, Lorg/inaturalist/android/ActivityHelper$10;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper$10;-><init>(Landroid/widget/ListView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 535
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ActivityHelper$11;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper$11;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public static setListViewHeightBasedOnItems(Landroid/widget/ListView;)I
    .locals 8

    .line 548
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 551
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    const/4 v5, 0x0

    .line 556
    invoke-interface {v0, v3, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 557
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/view/View;->measure(II)V

    .line 558
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    add-int/lit8 v2, v2, -0x1

    mul-int v0, v0, v2

    .line 566
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    add-int/2addr v4, v0

    .line 568
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_1

    .line 569
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 570
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 574
    :cond_1
    iget p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0

    :cond_2
    return v1
.end method

.method public static willListScroll(Landroid/widget/ListView;Lorg/inaturalist/android/ActivityHelper$isListScrollable;)V
    .locals 2

    .line 587
    invoke-virtual {p0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/ActivityHelper$12;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/ActivityHelper$12;-><init>(Landroid/widget/ListView;Lorg/inaturalist/android/ActivityHelper$isListScrollable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;Z)V

    return-void
.end method

.method public addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;Z)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 369
    invoke-virtual/range {v0 .. v5}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;ZZ)V

    return-void
.end method

.method public addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;ZZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    .line 374
    iget-object v1, v4, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v1, :cond_0

    iget-object v1, v4, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iget-object v1, v4, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 375
    :goto_0
    iget-object v2, v4, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v2, :cond_1

    iget-object v2, v4, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    :goto_1
    if-eqz v1, :cond_d

    if-nez v2, :cond_2

    goto/16 :goto_7

    .line 380
    :cond_2
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v3, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 381
    iget-object v5, v4, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    invoke-static {v5}, Lorg/inaturalist/android/TaxonUtils;->observationMarkerIcon(Ljava/lang/String;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    .line 382
    iget-object v8, v6, Lorg/inaturalist/android/ActivityHelper;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v8}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v8

    .line 384
    invoke-virtual {v6, v4}, Lorg/inaturalist/android/ActivityHelper;->observationColor(Lorg/inaturalist/android/Observation;)I

    move-result v9

    const/4 v10, 0x0

    if-eqz v0, :cond_3

    const-string v11, "public_positional_accuracy"

    .line 387
    invoke-virtual {v0, v11}, Lorg/inaturalist/android/BetterJSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v10

    .line 390
    :goto_2
    new-instance v11, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v11}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v11, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 391
    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 393
    iget-object v5, v4, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lorg/inaturalist/android/Observation;->geoprivacy:Ljava/lang/String;

    const-string v11, "private"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_4
    if-eqz v0, :cond_b

    if-eqz p4, :cond_5

    goto/16 :goto_5

    :cond_5
    if-eqz v8, :cond_6

    .line 398
    iget-object v5, v4, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v4, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 401
    iget-object v0, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v5

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ActivityHelper;->addCircle(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;ILorg/inaturalist/android/Observation;Z)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    goto/16 :goto_6

    .line 403
    :cond_6
    iget-object v5, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    iget-object v5, v4, Lorg/inaturalist/android/Observation;->positional_accuracy:Ljava/lang/Integer;

    .line 404
    invoke-virtual {v5, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 406
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v5

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/inaturalist/android/ActivityHelper;->addCircle(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;ILorg/inaturalist/android/Observation;Z)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    goto/16 :goto_6

    :cond_7
    if-eqz v8, :cond_8

    .line 407
    iget-object v0, v4, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lorg/inaturalist/android/Observation;->user_login:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 409
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v3, 0x2

    .line 410
    new-array v4, v3, [Ljava/lang/Double;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 411
    new-array v2, v3, [Ljava/lang/Double;

    aget-object v8, v4, v5

    .line 412
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v8, v4, v5

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    rem-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v2, v5

    aget-object v8, v4, v1

    .line 413
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    rem-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v2, v1

    .line 414
    new-array v8, v3, [Ljava/lang/Double;

    aget-object v11, v2, v5

    aput-object v11, v8, v5

    aget-object v11, v2, v1

    aput-object v11, v8, v1

    const/4 v11, 0x0

    .line 416
    :goto_3
    array-length v12, v4

    if-ge v11, v12, :cond_a

    .line 417
    aget-object v12, v4, v11

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aget-object v14, v8, v11

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpg-double v16, v12, v14

    if-gez v16, :cond_9

    .line 418
    aget-object v12, v8, v11

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v11

    goto :goto_4

    .line 420
    :cond_9
    aget-object v12, v8, v11

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v11

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x5

    .line 424
    new-array v0, v0, [Lcom/google/android/gms/maps/model/LatLng;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v11, v8, v5

    .line 425
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v13, v2, v5

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    aget-object v13, v8, v1

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    aget-object v15, v2, v1

    move-object/from16 v17, v2

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    invoke-direct {v4, v11, v12, v1, v2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v4, v0, v5

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v2, v8, v5

    .line 426
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v2, v17, v5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    const/4 v2, 0x1

    aget-object v4, v8, v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    aget-object v4, v17, v2

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-direct {v1, v11, v12, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v3, v8, v5

    .line 427
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aget-object v11, v17, v5

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aget-object v11, v8, v2

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v13, v17, v2

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-direct {v1, v3, v4, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v3, v8, v5

    .line 428
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aget-object v11, v17, v5

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    aget-object v11, v8, v2

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-object v13, v17, v2

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-direct {v1, v3, v4, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    aget-object v3, v8, v5

    .line 429
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aget-object v11, v17, v5

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v11, 0x1

    aget-object v8, v8, v11

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aget-object v8, v17, v11

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    invoke-direct {v1, v3, v4, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 432
    new-instance v1, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    aget-object v4, v0, v5

    .line 433
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    aget-object v4, v0, v11

    .line 434
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v8, v0, v4

    .line 435
    invoke-virtual {v1, v8}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    aget-object v4, v0, v2

    .line 436
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    aget-object v4, v0, v3

    .line 437
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    const v4, -0x7f000001

    and-int/2addr v4, v9

    .line 438
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    .line 439
    invoke-virtual {v1, v9}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    .line 440
    invoke-virtual {v7, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    if-eqz p5, :cond_c

    .line 443
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v1

    aget-object v4, v0, v5

    .line 444
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v4, v0, v4

    .line 445
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v4, v0, v4

    .line 446
    invoke-virtual {v1, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v1

    aget-object v2, v0, v2

    .line 447
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v1

    aget-object v0, v0, v3

    .line 448
    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    const/16 v1, 0xa

    .line 443
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    goto :goto_6

    :cond_b
    :goto_5
    const/high16 v0, 0x41700000    # 15.0f

    .line 396
    invoke-static {v3, v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v10

    .line 456
    :cond_c
    :goto_6
    new-instance v0, Lorg/inaturalist/android/ActivityHelper$8;

    invoke-direct {v0, v6, v10, v7}, Lorg/inaturalist/android/ActivityHelper$8;-><init>(Lorg/inaturalist/android/ActivityHelper;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    return-void

    :cond_d
    :goto_7
    return-void
.end method

.method public alert(II)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alert(Ljava/lang/String;)V
    .locals 3

    .line 61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lorg/inaturalist/android/ActivityHelper$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper$1;-><init>(Lorg/inaturalist/android/ActivityHelper;)V

    const v2, 0x7f1002a1

    .line 63
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Lorg/inaturalist/android/ActivityHelper$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper$2;-><init>(Lorg/inaturalist/android/ActivityHelper;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public centerObservation(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;)V
    .locals 6

    .line 492
    iget-object v0, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 493
    :goto_0
    iget-object v1, p2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v1, :cond_1

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    :goto_1
    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 498
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 499
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    .line 501
    new-instance v0, Lorg/inaturalist/android/ActivityHelper$9;

    invoke-direct {v0, p0, p2, p1}, Lorg/inaturalist/android/ActivityHelper$9;-><init>(Lorg/inaturalist/android/ActivityHelper;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLoadedCallback(Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public centerObservationImmediate(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;)V
    .locals 6

    .line 472
    iget-object v0, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/inaturalist/android/Observation;->latitude:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/inaturalist/android/Observation;->private_latitude:Ljava/lang/Double;

    .line 473
    :goto_0
    iget-object v1, p2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    if-nez v1, :cond_1

    iget-object p2, p2, Lorg/inaturalist/android/Observation;->longitude:Ljava/lang/Double;

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lorg/inaturalist/android/Observation;->private_longitude:Ljava/lang/Double;

    :goto_1
    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_3

    .line 478
    :cond_2
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 479
    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 483
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 487
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method public confirm(III)V
    .locals 8

    .line 174
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method public confirm(IIILandroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .line 178
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p4

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method public confirm(ILjava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    const v5, 0x7f1002a1

    const v6, 0x7f100071

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 213
    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method public confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 8

    .line 251
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p6, :cond_0

    iget-object p5, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    :goto_0
    move-object v7, p5

    goto :goto_1

    :cond_0
    const/4 p5, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    iget-object v1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0d0055

    .line 220
    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {v4, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 224
    :cond_0
    instance-of v5, p2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 225
    iget-object v5, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 230
    :cond_1
    instance-of v5, p2, Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v5, :cond_3

    const v5, 0x7f0d0052

    .line 231
    invoke-virtual {v1, v5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    const v2, 0x7f0a039a

    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xf

    .line 234
    invoke-static {v2, p2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 235
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-eqz p1, :cond_2

    const/4 v6, 0x2

    .line 236
    :cond_2
    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 237
    :cond_3
    instance-of v1, p2, Landroid/view/View;

    if-eqz v1, :cond_5

    .line 238
    check-cast p2, Landroid/view/View;

    if-eqz p1, :cond_4

    const/4 v6, 0x2

    :cond_4
    invoke-virtual {v4, p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 240
    :cond_5
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v0, p5, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_6

    .line 243
    invoke-virtual {v0, p6, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 p2, -0x1

    .line 246
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const-string p3, "#85B623"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTextColor(I)V

    const/4 p2, -0x2

    .line 247
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const-string p2, "#85B623"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0054

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03ab

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 7

    .line 195
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0054

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 196
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a03ab

    .line 197
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 199
    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 203
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0054

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 204
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a03ab

    .line 205
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 207
    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Landroid/view/View;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dpToPx(I)F
    .locals 2

    .line 622
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 623
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public isLoading()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loading()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p0, v0, v0, v0}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public loading(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loading(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, p1, p2}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public loading(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, p2, v0}, Lorg/inaturalist/android/ActivityHelper;->loading(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public loading(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    .line 260
    iget-object p2, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f1001f6

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_3

    .line 271
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 272
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p2, -0x2

    iget-object v1, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f100071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, p3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 273
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance p2, Lorg/inaturalist/android/ActivityHelper$7;

    invoke-direct {p2, p0, p3}, Lorg/inaturalist/android/ActivityHelper$7;-><init>(Lorg/inaturalist/android/ActivityHelper;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_1
    if-eqz v0, :cond_4

    .line 283
    iget-object p1, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_4
    return-void
.end method

.method public multipleChoiceSelection(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;",
            ")V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0053

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 93
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a03ab

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a01b4

    .line 95
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 96
    new-instance v2, Lorg/inaturalist/android/MultipleChoiceAdapter;

    iget-object v3, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p2, p3}, Lorg/inaturalist/android/MultipleChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    .line 97
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 100
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const p2, 0x7f0a008e

    .line 103
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lorg/inaturalist/android/ActivityHelper$3;

    invoke-direct {p3, p0, p1}, Lorg/inaturalist/android/ActivityHelper$3;-><init>(Lorg/inaturalist/android/ActivityHelper;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0279

    .line 110
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lorg/inaturalist/android/ActivityHelper$4;

    invoke-direct {p3, p0, p4, v2, p1}, Lorg/inaturalist/android/ActivityHelper$4;-><init>(Lorg/inaturalist/android/ActivityHelper;Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;Lorg/inaturalist/android/MultipleChoiceAdapter;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public observationColor(Lorg/inaturalist/android/Observation;)I
    .locals 2

    .line 315
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/high16 p1, -0x1000000

    return p1

    .line 317
    :cond_0
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Animalia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Actinopterygii"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Amphibia"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Reptilia"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Aves"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Mammalia"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Insecta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Arachnida"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Mollusca"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Protozoa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "#691776"

    .line 329
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 330
    :cond_3
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Plantae"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "#73AC13"

    .line 331
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 332
    :cond_4
    iget-object v0, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v1, "Fungi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "#FF1493"

    .line 333
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 334
    :cond_5
    iget-object p1, p1, Lorg/inaturalist/android/Observation;->iconic_taxon_name:Ljava/lang/String;

    const-string v0, "Chromista"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "#993300"

    .line 335
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1

    :cond_7
    :goto_0
    const-string p1, "#FF4500"

    .line 327
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_8
    :goto_1
    const-string p1, "#1E90FF"

    .line 323
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public selection(Ljava/lang/String;Landroid/widget/ListAdapter;)V
    .locals 5

    .line 122
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 123
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0051

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v2, 0x7f0a03ab

    .line 126
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a01b4

    .line 127
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 131
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const p2, 0x7f0a008e

    .line 134
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lorg/inaturalist/android/ActivityHelper$5;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/ActivityHelper$5;-><init>(Lorg/inaturalist/android/ActivityHelper;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0d0054

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03ab

    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0055

    .line 152
    invoke-virtual {v0, v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 153
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v3, 0x7f0d0050

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 155
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper;->mContext:Landroid/content/Context;

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p2, 0x2

    .line 157
    invoke-virtual {v4, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 159
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 p2, 0x1

    .line 160
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 164
    new-instance p2, Lorg/inaturalist/android/ActivityHelper$6;

    invoke-direct {p2, p0, p1, p3}, Lorg/inaturalist/android/ActivityHelper$6;-><init>(Lorg/inaturalist/android/ActivityHelper;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lorg/inaturalist/android/ActivityHelper;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
