.class Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;
.super Ljava/lang/Object;
.source "TaxonActivity.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


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

.field final synthetic val$loading:Landroid/widget/ProgressBar;

.field final synthetic val$taxonPhoto:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;->this$0:Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;->val$taxonPhoto:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1125
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;->val$loading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter$2;->val$taxonPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
