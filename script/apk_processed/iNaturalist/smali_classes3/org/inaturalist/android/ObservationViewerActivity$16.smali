.class Lorg/inaturalist/android/ObservationViewerActivity$16;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->refreshDataQuality()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1470
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2500(Lorg/inaturalist/android/ObservationViewerActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1471
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100285

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1475
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1476
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/DataQualityAssessment;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation"

    .line 1477
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ObservationViewerActivity;->mObsJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1478
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$16;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
