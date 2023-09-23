.class Lorg/inaturalist/android/CompareSuggestionActivity$3;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ObservationPhotosViewer$IdPicsPagerAdapter$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomOriginal()V
    .locals 4

    .line 239
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$200(Lorg/inaturalist/android/CompareSuggestionActivity;)Lcom/viewpagerindicator/CirclePageIndicator;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$100(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$300(Lorg/inaturalist/android/CompareSuggestionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/high16 v0, 0x41800000    # 16.0f

    .line 248
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 249
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$100(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Luk/co/senab/photoview/HackyViewPager;->setPadding(IIII)V

    return-void
.end method

.method public onZoomedIn()V
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$200(Lorg/inaturalist/android/CompareSuggestionActivity;)Lcom/viewpagerindicator/CirclePageIndicator;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/CompareSuggestionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 230
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$300(Lorg/inaturalist/android/CompareSuggestionActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$3;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$100(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Luk/co/senab/photoview/HackyViewPager;->setPadding(IIII)V

    return-void
.end method
