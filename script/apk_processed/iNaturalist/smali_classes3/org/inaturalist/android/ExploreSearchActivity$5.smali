.class Lorg/inaturalist/android/ExploreSearchActivity$5;
.super Ljava/lang/Object;
.source "ExploreSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreSearchActivity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 266
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 267
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mActiveSearchType:I

    const v0, 0x7f1002a2

    if-nez p1, :cond_0

    .line 268
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1100(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v1, 0x7f10027e

    const v2, 0x7f1002bd

    invoke-virtual {p1, v1, v2, v0}, Lorg/inaturalist/android/ActivityHelper;->confirm(III)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->access$1100(Lorg/inaturalist/android/ExploreSearchActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object p1

    const v1, 0x7f10033a

    const v2, 0x7f100204

    invoke-virtual {p1, v1, v2, v0}, Lorg/inaturalist/android/ActivityHelper;->confirm(III)V

    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 278
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 281
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "search_filters"

    .line 282
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 283
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/ExploreSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 284
    iget-object p1, p0, Lorg/inaturalist/android/ExploreSearchActivity$5;->this$0:Lorg/inaturalist/android/ExploreSearchActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ExploreSearchActivity;->finish()V

    return-void
.end method
