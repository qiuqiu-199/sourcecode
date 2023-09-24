.class Lorg/inaturalist/android/TaxonSuggestionAdapter$2;
.super Ljava/lang/Object;
.source "TaxonSuggestionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonSuggestionAdapter;

.field final synthetic val$position:I

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSuggestionAdapter;ILorg/json/JSONObject;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->this$0:Lorg/inaturalist/android/TaxonSuggestionAdapter;

    iput p2, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->val$position:I

    iput-object p3, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->this$0:Lorg/inaturalist/android/TaxonSuggestionAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonSuggestionAdapter;->access$000(Lorg/inaturalist/android/TaxonSuggestionAdapter;)Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->val$position:I

    iget-object v1, p0, Lorg/inaturalist/android/TaxonSuggestionAdapter$2;->val$taxon:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lorg/inaturalist/android/TaxonSuggestionAdapter$OnTaxonSuggestion;->onTaxonCompared(ILorg/json/JSONObject;)V

    return-void
.end method
