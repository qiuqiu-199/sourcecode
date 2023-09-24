.class Lorg/inaturalist/android/TaxonSuggestionsActivity$6;
.super Ljava/lang/Object;
.source "TaxonSuggestionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 383
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$6;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/inaturalist/android/TaxonSuggestionsActivity$6;->this$0:Lorg/inaturalist/android/TaxonSuggestionsActivity;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonSuggestionsActivity;->access$600(Lorg/inaturalist/android/TaxonSuggestionsActivity;)V

    return-void
.end method
