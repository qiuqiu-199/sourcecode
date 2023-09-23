.class Lorg/inaturalist/android/TaxonSuggestionsActivity$5;
.super Ljava/lang/Object;
.source "TaxonSuggestionsActivity.java"

# interfaces
.implements Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSuggestionsActivity;->loadSuggestions()V
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

    .line 283
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaxonCompared(ILorg/json/JSONObject;)V
    .locals 0

    .line 320
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {p2, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$500(Lorg/inaturalist/android/TaxonSuggestionsActivity;I)V

    return-void
.end method

.method public onTaxonDetails(ILorg/json/JSONObject;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iput p1, v0, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mLastTaxonPosition:I

    .line 307
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 309
    sget-object p2, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    sget-object p2, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object p2, p2, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 312
    sget-object p2, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 314
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const/16 v0, 0x12e

    invoke-virtual {p2, p1, v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onTaxonSelected(ILorg/json/JSONObject;)V
    .locals 4

    .line 287
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id_name"

    .line 289
    iget-object v2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {v2, p2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "taxon_name"

    const-string v2, "name"

    .line 290
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconic_taxon_name"

    const-string v2, "iconic_taxon_name"

    .line 291
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default_photo"

    .line 292
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "default_photo"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "id_url"

    const-string v2, "default_photo"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "square_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "is_custom"

    const/4 v2, 0x0

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "taxon_id"

    const-string v2, "id"

    .line 294
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rank_level"

    const-string v2, "rank_level"

    .line 295
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "from_suggestion"

    const/4 v1, 0x1

    .line 296
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 299
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 300
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$5;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->finish()V

    return-void
.end method
