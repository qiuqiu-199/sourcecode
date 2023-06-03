.class Lorg/inaturalist/android/CompareSuggestionActivity$13;
.super Ljava/lang/Object;
.source "CompareSuggestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CompareSuggestionActivity;->refreshCurrentTaxon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CompareSuggestionActivity;Lorg/json/JSONObject;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iput-object p2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 469
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 471
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v0, v0, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v1, v1, Lorg/inaturalist/android/CompareSuggestionActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$13;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
