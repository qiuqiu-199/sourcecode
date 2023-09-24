.class Lorg/inaturalist/android/TaxonActivity$7$1;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/TaxonActivity$7;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity$7;)V
    .locals 0

    .line 774
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7$1;->this$1:Lorg/inaturalist/android/TaxonActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 777
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
