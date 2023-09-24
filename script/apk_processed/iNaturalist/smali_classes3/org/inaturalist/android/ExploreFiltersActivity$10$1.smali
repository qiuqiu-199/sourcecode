.class Lorg/inaturalist/android/ExploreFiltersActivity$10$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Lorg/inaturalist/android/ActivityHelper$OnMultipleChoices;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$10;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$10;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultipleChoices(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 390
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 391
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v0, 0x3

    iput v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 394
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$10$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$10;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$10;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
