.class Lorg/inaturalist/android/ExploreFiltersActivity$13;
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

    .line 464
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    return v0

    .line 470
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    if-nez p1, :cond_1

    return v0

    .line 471
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    move-object v1, p1

    const/4 p1, 0x0

    .line 475
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 476
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    .line 478
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    return v0

    :cond_5
    const-string p1, "values"

    .line 485
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/2addr v2, p2

    new-array v2, v2, [Ljava/lang/String;

    .line 488
    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v4, 0x7f100282

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x0

    .line 490
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 491
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 492
    iget-object v5, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v5

    const-string v6, "label"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 493
    aput-object v4, v2, v3

    goto :goto_2

    .line 496
    :cond_6
    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$13;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$900(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v1

    new-instance v3, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;

    invoke-direct {v3, p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity$13$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$13;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v0, v2, v3}, Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return p2
.end method
