.class Lorg/inaturalist/android/TaxonSuggestionsActivity$1;
.super Ljava/lang/Object;
.source "TaxonSuggestionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSuggestionsActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 179
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 182
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const-class v1, Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "species_guess"

    const-string v1, ""

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "show_unknown"

    const/4 v1, 0x1

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "observation_id"

    .line 185
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget v1, v1, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation_id_internal"

    .line 186
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget v1, v1, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObsIdInternal:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation_json"

    .line 187
    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object v1, v1, Lorg/inaturalist/android/TaxonSuggestionsActivity;->mObservationJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$1;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const/16 v1, 0x12e

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
