.class Lorg/inaturalist/android/CompareSuggestionActivity$2;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->refreshViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 198
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "current_photo_index"

    .line 199
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$100(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v0, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v0, "observation_id"

    .line 202
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v1, v1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 203
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget v1, v1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObsIdInternal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "is_new_observation"

    const/4 v1, 0x1

    .line 204
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "read_only"

    .line 205
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v0, "observation"

    .line 207
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v1, v1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$2;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
