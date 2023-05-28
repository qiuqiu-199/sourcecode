.class Lorg/inaturalist/android/TaxonActivity$7;
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

    .line 771
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 774
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7;->this$0:Lorg/inaturalist/android/TaxonActivity;

    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1500(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const v1, 0x7f100024

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7;->this$0:Lorg/inaturalist/android/TaxonActivity;

    const v2, 0x7f10036a

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/TaxonActivity$7$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/TaxonActivity$7$1;-><init>(Lorg/inaturalist/android/TaxonActivity$7;)V

    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity$7;->this$0:Lorg/inaturalist/android/TaxonActivity;

    .line 779
    invoke-static {p1}, Lorg/inaturalist/android/TaxonActivity;->access$1000(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    const-string v4, "got_it_all_caps"

    const-string v5, "got_it"

    invoke-virtual {p1, v4, v5}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 774
    invoke-virtual/range {v0 .. v6}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
