.class Lorg/inaturalist/android/TaxonSuggestionsActivity$4;
.super Ljava/lang/Object;
.source "TaxonSuggestionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSuggestionsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 266
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "current_photo_index"

    const/4 v1, 0x0

    .line 267
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation"

    .line 268
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object v2, v2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 269
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget v2, v2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsId:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 270
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget v2, v2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "read_only"

    const/4 v2, 0x1

    .line 271
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_new_observation"

    .line 272
    iget-object v3, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget v3, v3, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$4;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
