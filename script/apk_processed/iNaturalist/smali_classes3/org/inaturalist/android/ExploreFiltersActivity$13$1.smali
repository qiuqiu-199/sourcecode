.class Lorg/inaturalist/android/ExploreFiltersActivity$13$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$13;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

.field final synthetic val$values:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$13;Lorg/json/JSONArray;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->val$values:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 503
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    .line 504
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->val$values:Lorg/json/JSONArray;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    .line 508
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->val$values:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "label"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 509
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    .line 512
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$13;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
