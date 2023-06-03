.class Lorg/inaturalist/android/ObservationViewerActivity$24;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->prepareToExit()V
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

    .line 1958
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1962
    new-instance p1, Landroid/content/Intent;

    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_FLAG_OBSERVATION_AS_CAPTIVE:Ljava/lang/String;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "observation_id"

    .line 1963
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1964
    iget-object p2, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p2, p1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1966
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100290

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1967
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    const/16 p2, 0x300

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/ObservationViewerActivity;->setResult(I)V

    .line 1968
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$24;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->finish()V

    return-void
.end method
