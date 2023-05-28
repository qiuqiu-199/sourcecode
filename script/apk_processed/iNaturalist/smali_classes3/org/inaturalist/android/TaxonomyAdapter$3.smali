.class Lorg/inaturalist/android/TaxonomyAdapter$3;
.super Ljava/lang/Object;
.source "TaxonomyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonomyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonomyAdapter;

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonomyAdapter;Lorg/json/JSONObject;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter$3;->this$0:Lorg/inaturalist/android/TaxonomyAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonomyAdapter$3;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lorg/inaturalist/android/TaxonomyAdapter$3;->this$0:Lorg/inaturalist/android/TaxonomyAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonomyAdapter;->access$100(Lorg/inaturalist/android/TaxonomyAdapter;)Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonomyAdapter$3;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;->onViewTaxon(Lorg/inaturalist/android/BetterJSONObject;)V

    return-void
.end method
