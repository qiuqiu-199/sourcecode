.class Lorg/inaturalist/android/CompareSuggestionActivity$12;
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

    .line 445
    iput-object p1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    iput-object p2, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 449
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "current_photo_index"

    .line 450
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-static {v1}, Lorg/inaturalist/android/CompareSuggestionActivity;->access$900(Lorg/inaturalist/android/CompareSuggestionActivity;)Luk/co/senab/photoview/HackyViewPager;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation"

    .line 451
    iget-object v1, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->val$taxon:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_taxon"

    const/4 v1, 0x1

    .line 452
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    iget-object v0, p0, Lorg/inaturalist/android/CompareSuggestionActivity$12;->this$0:Lorg/inaturalist/android/CompareSuggestionActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/CompareSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
