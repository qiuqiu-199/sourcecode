.class Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;
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

.field final synthetic val$taxon:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;Lorg/json/JSONObject;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;->val$taxon:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 420
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;->this$1:Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    iget-object p1, p1, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter$4;->val$taxon:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lorg/inaturalist/android/TaxonSearchActivity;->access$1000(Lorg/inaturalist/android/TaxonSearchActivity;Lorg/json/JSONObject;)V

    return-void
.end method
