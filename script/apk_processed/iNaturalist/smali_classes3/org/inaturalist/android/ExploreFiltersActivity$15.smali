.class Lorg/inaturalist/android/ExploreFiltersActivity$15;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V
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

    .line 642
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 645
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$000(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v1, 0x0

    iput v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1300(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v1, 0x1

    iput v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 647
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1400(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v1, 0x2

    iput v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 648
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1500(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 v0, 0x3

    iput v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 650
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$15;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
