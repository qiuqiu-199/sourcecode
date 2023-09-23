.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Landroid/view/View;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$3;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->selectTaxon(Lorg/json/JSONObject;)V

    return-void
.end method
