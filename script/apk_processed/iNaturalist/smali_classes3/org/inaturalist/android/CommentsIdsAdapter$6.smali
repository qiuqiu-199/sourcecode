.class Lorg/inaturalist/android/CommentsIdsAdapter$6;
.super Ljava/lang/Object;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/CommentsIdsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/CommentsIdsAdapter;I)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    iput p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 416
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$600(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "taxon"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 418
    sget-object v1, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v2, v0}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 419
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$700(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/BetterJSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 420
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter$6;->this$0:Lorg/inaturalist/android/CommentsIdsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/CommentsIdsAdapter;->access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
