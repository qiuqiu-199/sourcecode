.class Lorg/inaturalist/android/ExploreSearchActivity$6;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity;->refreshViewState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 482
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 484
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    const-string p3, ""

    iput-object p3, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    .line 486
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget p2, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 487
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    .line 488
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iput p3, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    goto :goto_1

    :cond_0
    const-string p2, "is_my_location"

    .line 490
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 492
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p4, p1, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 493
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-boolean p3, p1, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    goto :goto_0

    .line 496
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 497
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 p5, 0x0

    iput-boolean p5, p2, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    .line 498
    iget-object p2, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p2, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1300(Lorg/inaturalist/android/ExploreSearchActivity;Lorg/json/JSONObject;)V

    .line 501
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p4, p1, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 503
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    const/4 p2, 0x2

    iput p2, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    .line 506
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$6;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1, p3}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1000(Lorg/inaturalist/android/ExploreSearchActivity;Z)V

    return-void
.end method
