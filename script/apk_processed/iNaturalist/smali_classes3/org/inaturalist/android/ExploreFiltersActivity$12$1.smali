.class Lorg/inaturalist/android/ExploreFiltersActivity$12$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$12;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$12;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 444
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    .line 445
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    .line 449
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "label"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 450
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p2, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    .line 453
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    .line 454
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    .line 456
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$12;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
