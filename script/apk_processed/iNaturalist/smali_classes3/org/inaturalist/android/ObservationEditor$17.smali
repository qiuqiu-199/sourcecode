.class Lorg/inaturalist/android/ObservationEditor$17;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "android.intent.action.INSERT"

    .line 1030
    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "New Obs - Cancel"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$1600(Lorg/inaturalist/android/ObservationEditor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2400(Lorg/inaturalist/android/ObservationEditor;)V

    .line 1037
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$1802(Lorg/inaturalist/android/ObservationEditor;Z)Z

    .line 1038
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2500(Lorg/inaturalist/android/ObservationEditor;)V

    .line 1039
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v1, v1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x1001

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 1040
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$17;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void
.end method
