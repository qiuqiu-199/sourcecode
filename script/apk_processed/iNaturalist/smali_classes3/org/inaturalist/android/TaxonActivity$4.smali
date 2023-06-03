.class Lorg/inaturalist/android/TaxonActivity$4;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 719
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$4;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 723
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$4;->this$0:Lorg/inaturalist/android/TaxonActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id_name"

    .line 726
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity$4;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {v3, v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taxon_name"

    const-string v3, "name"

    .line 727
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "iconic_taxon_name"

    const-string v3, "iconic_taxon_name"

    .line 728
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "default_photo"

    .line 729
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "default_photo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "id_url"

    const-string v3, "default_photo"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "square_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "is_custom"

    const/4 v3, 0x0

    .line 730
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "taxon_id"

    const-string v3, "id"

    .line 731
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 734
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$4;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/TaxonActivity;->setResult(ILandroid/content/Intent;)V

    .line 735
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$4;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    return-void
.end method
