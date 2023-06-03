.class Lorg/inaturalist/android/ExploreFiltersActivity$12;
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

    .line 421
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 424
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    return v0

    .line 427
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    if-nez p1, :cond_1

    return v0

    .line 429
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {p1}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    add-int/2addr p1, p2

    new-array p1, p1, [Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v2, 0x7f100282

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v1, 0x0

    .line 433
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 434
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    invoke-virtual {v2}, Lorg/inaturalist/android/SerializableJSONArray;->getJSONArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 435
    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 436
    aput-object v2, p1, v1

    goto :goto_0

    .line 439
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$900(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$12;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    const v2, 0x7f100047

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$12$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$12;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return p2
.end method
