.class Lorg/inaturalist/android/CompareSuggestionActivity$9;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->refreshCurrentTaxon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

.field final synthetic val$moveToNextTaxon:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iput-object p2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->val$moveToNextTaxon:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeOutAtEnd()V
    .locals 2

    .line 373
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->val$moveToNextTaxon:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onSwipeOutAtStart()V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v0, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v1, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionIndex:I

    .line 364
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const/4 v1, 0x0

    iput v1, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    .line 365
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$500(Lorg/inaturalist/android/CompareSuggestionActivity;)V

    .line 366
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$900(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    .line 367
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v0}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$900(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$9;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v1, v1, Lorg/inaturalist/android/CompareSuggestionActivity;->mSuggestionPhotoPosition:I

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/HackyViewPager;->setCurrentItem(I)V

    return-void
.end method
