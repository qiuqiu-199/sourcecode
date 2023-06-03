.class Lorg/inaturalist/android/CompareSuggestionActivity$11;
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

    .line 425
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iput-object p2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 429
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id_name"

    .line 431
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iget-object v3, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taxon_name"

    .line 432
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconic_taxon_name"

    .line 433
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v3, "iconic_taxon_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v2, "default_photo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v2, "default_photo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "id_url"

    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v3, "default_photo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "square_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "is_custom"

    const/4 v2, 0x0

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "taxon_id"

    .line 436
    iget-object v2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->val$taxon:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 440
    iget-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$11;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->finish()V

    return-void
.end method
