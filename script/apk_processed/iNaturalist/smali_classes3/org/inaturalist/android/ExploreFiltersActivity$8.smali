.class Lorg/inaturalist/android/ExploreFiltersActivity$8;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 281
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$300(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string v0, "research"

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$400(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const-string v0, "needs_id"

    goto :goto_0

    :cond_1
    const-string v0, "casual"

    .line 294
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 302
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$8;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
