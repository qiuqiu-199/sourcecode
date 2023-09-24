.class Lorg/inaturalist/android/TaxonSearchActivity$1;
.super Ljava/lang/Object;
.source "TaxonSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonSearchActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonSearchActivity;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lorg/inaturalist/android/TaxonSearchActivity$1;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 544
    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$1;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity;->access$1400(Lorg/inaturalist/android/TaxonSearchActivity;)Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/inaturalist/android/TaxonSearchActivity$1;->this$0:Lorg/inaturalist/android/TaxonSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/TaxonSearchActivity;->access$1400(Lorg/inaturalist/android/TaxonSearchActivity;)Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/TaxonSearchActivity$TaxonAutoCompleteAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
