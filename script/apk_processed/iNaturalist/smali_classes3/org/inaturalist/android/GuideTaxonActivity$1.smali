.class Lorg/inaturalist/android/GuideTaxonActivity$1;
.super Ljava/lang/Object;
.source "GuideTaxonActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideTaxonActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideTaxonActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideTaxonActivity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$1;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 213
    check-cast p1, Landroid/widget/Gallery;

    .line 214
    invoke-virtual {p1}, Landroid/widget/Gallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;

    invoke-virtual {p1, p3}, Lorg/inaturalist/android/GuideTaxonActivity$GalleryPhotoAdapter;->getItemUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lorg/inaturalist/android/GuideTaxonActivity$1;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-static {p2}, Lorg/inaturalist/android/GuideTaxonActivity;->access$200(Lorg/inaturalist/android/GuideTaxonActivity;)Lorg/inaturalist/android/GuideXML;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 219
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "image/*"

    .line 220
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 223
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideTaxonActivity$1;->this$0:Lorg/inaturalist/android/GuideTaxonActivity;

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/GuideTaxonActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 229
    invoke-static {}, Lorg/inaturalist/android/GuideTaxonActivity;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to view photo: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
