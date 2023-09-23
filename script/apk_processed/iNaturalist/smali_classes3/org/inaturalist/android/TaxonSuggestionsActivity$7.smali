.class Lorg/inaturalist/android/TaxonSuggestionsActivity$7;
.super Ljava/lang/Object;
.source "TaxonSuggestionsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSuggestionsActivity;->resizeSuggestionsList()V
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

    .line 393
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$7;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 400
    iget-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$7;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$7;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$700(Lorg/inaturalist/android/TaxonSuggestionsActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->setListViewHeightBasedOnItems(Landroid/widget/ListView;)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
