.class Lorg/inaturalist/android/TaxonSuggestionsActivity$2;
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

    .line 192
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$2;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$2;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->setResult(I)V

    .line 196
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$2;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->finish()V

    return-void
.end method
