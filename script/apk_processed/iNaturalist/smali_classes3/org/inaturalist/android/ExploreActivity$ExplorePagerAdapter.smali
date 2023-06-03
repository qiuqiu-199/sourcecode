.class public Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ExploreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExplorePagerAdapter"
.end annotation


# instance fields
.field final PAGE_COUNT:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/inaturalist/android/ExploreActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ExploreActivity;Landroid/content/Context;)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p1, 0x4

    .line 1286
    iput p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->PAGE_COUNT:I

    .line 1290
    iput-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1524
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f0d00c7

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0d00cd

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0d00d2

    goto :goto_0

    :pswitch_3
    const v1, 0x7f0d005e

    .line 1317
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1318
    invoke-virtual {v2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 1321
    iget-object v2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v2

    const v3, 0x7f0a0273

    const-string v4, "observations_regular"

    const-string v5, "project_observations"

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    const v4, 0x7f0a01c3

    const/4 v5, 0x1

    if-nez p2, :cond_3

    .line 1326
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a01c6

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$2902(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1327
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a026c

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$3002(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1328
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a026b

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/inaturalist/android/GridViewExtended;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$1602(Lorg/inaturalist/android/ExploreActivity;Lorg/inaturalist/android/GridViewExtended;)Lorg/inaturalist/android/GridViewExtended;

    .line 1329
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v6}, Lorg/inaturalist/android/ExploreActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f0a0270

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/maps/SupportMapFragment;

    new-instance v7, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$1;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 1403
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a0271

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$702(Lorg/inaturalist/android/ExploreActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1404
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a01f3

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$802(Lorg/inaturalist/android/ExploreActivity;Landroid/view/View;)Landroid/view/View;

    .line 1405
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a0150

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$3502(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1406
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v7, 0x7f0a01f2

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6, v7}, Lorg/inaturalist/android/ExploreActivity;->access$3602(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1407
    iget-object v6, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v6}, Lorg/inaturalist/android/ExploreActivity;->access$1600(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/GridViewExtended;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1409
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a026d

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$3702(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1410
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a0272

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$3802(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1411
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a00aa

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$3902(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1412
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a0237

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$102(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1413
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a02dc

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$1002(Lorg/inaturalist/android/ExploreActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 1414
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a0295

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$2602(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1415
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a02dd

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$2702(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1416
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    const v6, 0x7f0a02de

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v5, v6}, Lorg/inaturalist/android/ExploreActivity;->access$2802(Lorg/inaturalist/android/ExploreActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1417
    iget-object v5, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ExploreActivity;->access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v5, p2

    .line 1418
    iget-object v4, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ExploreActivity;->access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v4

    aget-object p2, v4, p2

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1420
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object p2

    new-instance v3, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$2;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v3, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1430
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$600(Lorg/inaturalist/android/ExploreActivity;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p2

    if-nez p2, :cond_5

    .line 1431
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$1100(Lorg/inaturalist/android/ExploreActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-boolean p2, p2, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    if-eqz p2, :cond_2

    .line 1433
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ExploreActivity;->access$100(Lorg/inaturalist/android/ExploreActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->performClick()Z

    goto/16 :goto_4

    .line 1434
    :cond_2
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    if-eqz p2, :cond_5

    .line 1436
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object v2, p2, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1437
    iget-object p2, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean v0, p2, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    goto/16 :goto_4

    :cond_3
    packed-switch p2, :pswitch_data_1

    move-object v8, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_4
    const v0, 0x7f0a01bf

    const v2, 0x7f0a0184

    const v6, 0x7f0a0183

    const v7, 0x7f0a0185

    .line 1490
    new-instance v8, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$5;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V

    goto :goto_3

    :pswitch_5
    const v0, 0x7f0a01c9

    const v2, 0x7f0a0293

    const v6, 0x7f0a0292

    const v7, 0x7f0a0294

    .line 1473
    new-instance v8, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$4;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$4;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V

    goto :goto_3

    :pswitch_6
    const v2, 0x7f0a01ce

    const v6, 0x7f0a034e

    const v7, 0x7f0a034d

    .line 1455
    new-instance v8, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$3;

    invoke-direct {v8, p0}, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter$3;-><init>(Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;)V

    const v0, 0x7f0a01ce

    const v2, 0x7f0a034e

    const v6, 0x7f0a034d

    goto :goto_2

    .line 1503
    :goto_3
    iget-object v9, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v9}, Lorg/inaturalist/android/ExploreActivity;->access$4000(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    aput-object v0, v9, p2

    .line 1504
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$4100(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v0, p2

    .line 1505
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    aput-object v2, v0, p2

    .line 1506
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$4200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0a0138

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v0, p2

    .line 1507
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v0, p2

    .line 1508
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1200(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v7, :cond_4

    .line 1509
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$4300(Lorg/inaturalist/android/ExploreActivity;)[Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v0, p2

    .line 1510
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1512
    iget-object v0, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreActivity;->access$1800(Lorg/inaturalist/android/ExploreActivity;)[Landroid/widget/ListView;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p2, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1515
    :cond_5
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1517
    iget-object p1, p0, Lorg/inaturalist/android/ExploreActivity$ExplorePagerAdapter;->this$0:Lorg/inaturalist/android/ExploreActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreActivity;->access$1400(Lorg/inaturalist/android/ExploreActivity;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
