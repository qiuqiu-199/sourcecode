.class Lorg/inaturalist/android/ExploreFiltersActivity$10;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 378
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 380
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v1, v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$800(Lorg/inaturalist/android/ExploreFiltersActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 383
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 384
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 386
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$900(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v3, 0x7f1000ad

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$10;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Lorg/inaturalist/android/ActivityHelper;->multipleChoiceSelection(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;)V

    return p2
.end method
