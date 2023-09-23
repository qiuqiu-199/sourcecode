.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;
.super Ljava/lang/Object;
.source "TaxonSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

.field final synthetic val$hasPhotosFinal:Z

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 424
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->val$taxon:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->val$hasPhotosFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 427
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->access$1100(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 429
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    iget-boolean v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->val$hasPhotosFinal:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$900(Lorg/inaturalist/android/TaxonSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v2, v2, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {v2}, Lorg/inaturalist/android/TaxonSearchActivity;->access$900(Lorg/inaturalist/android/TaxonSearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->val$taxon:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lorg/inaturalist/android/TaxonSearchActivity;->access$1202(Lorg/inaturalist/android/TaxonSearchActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 435
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$5;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object v0, v0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/TaxonSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
