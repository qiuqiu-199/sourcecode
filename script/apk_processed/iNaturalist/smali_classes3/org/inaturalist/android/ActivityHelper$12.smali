.class final Lorg/inaturalist/android/ActivityHelper$12;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ActivityHelper;->willListScroll(Landroid/widget/ListView;Lorg/inaturalist/android/ActivityHelper$isListScrollable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lorg/inaturalist/android/ActivityHelper$isListScrollable;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Lorg/inaturalist/android/ActivityHelper$isListScrollable;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    iput-object p2, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$cb:Lorg/inaturalist/android/ActivityHelper$isListScrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 591
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 596
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 597
    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 598
    iget-object v4, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_5

    if-nez v0, :cond_1

    goto :goto_3

    .line 604
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    if-gt v0, v4, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_1

    .line 608
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v2, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 610
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$cb:Lorg/inaturalist/android/ActivityHelper$isListScrollable;

    invoke-interface {v0, v3}, Lorg/inaturalist/android/ActivityHelper$isListScrollable;->isListScrollable(Z)V

    goto :goto_2

    .line 614
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$cb:Lorg/inaturalist/android/ActivityHelper$isListScrollable;

    invoke-interface {v0, v1}, Lorg/inaturalist/android/ActivityHelper$isListScrollable;->isListScrollable(Z)V

    goto :goto_2

    .line 606
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/ActivityHelper$12;->val$cb:Lorg/inaturalist/android/ActivityHelper$isListScrollable;

    invoke-interface {v0, v1}, Lorg/inaturalist/android/ActivityHelper$isListScrollable;->isListScrollable(Z)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method
