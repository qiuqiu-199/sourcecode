.class Lorg/inaturalist/android/ObservationViewerActivity$23$1;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$23;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1815
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1818
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$imageUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    .line 1819
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonImage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxon:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    .line 1822
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonScientificName:Ljava/lang/String;

    .line 1823
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    const-string v2, "rank_level"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRankLevel:I

    .line 1824
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    const-string v2, "rank"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonRank:Ljava/lang/String;

    .line 1826
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2900(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3000(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationViewerActivity;->mTaxonIdName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2900(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->val$taxon:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 1835
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$23$1;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$23;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$23;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2900(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
