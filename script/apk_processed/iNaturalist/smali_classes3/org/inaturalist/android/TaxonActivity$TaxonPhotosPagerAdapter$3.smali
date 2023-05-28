.class Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;I)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    iput p2, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1137
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->access$2000(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lorg/inaturalist/android/ObservationPhotosViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "current_photo_index"

    .line 1138
    iget v1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->val$position:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "observation"

    .line 1139
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    invoke-static {v1}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->access$2100(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_taxon"

    const/4 v1, 0x1

    .line 1140
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1141
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$3;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;->access$2000(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
