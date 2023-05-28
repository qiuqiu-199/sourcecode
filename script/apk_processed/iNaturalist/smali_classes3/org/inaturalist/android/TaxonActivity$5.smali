.class Lorg/inaturalist/android/TaxonActivity$5;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$5;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 746
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 747
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$5;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1, p1}, Lorg/inaturalist/android/TaxonActivity;->setResult(ILandroid/content/Intent;)V

    .line 749
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$5;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    return-void
.end method
