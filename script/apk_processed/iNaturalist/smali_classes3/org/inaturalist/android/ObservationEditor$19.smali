.class Lorg/inaturalist/android/ObservationEditor$19;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    .line 1158
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1161
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Obs - Delete"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 1163
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor;->mObservation:Lorg/inaturalist/android/Observation;

    iget-object v1, v1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$2100(Lorg/inaturalist/android/ObservationEditor;Z)V

    .line 1164
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const v1, 0x7f10028f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1166
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v1, v1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x1001

    goto :goto_2

    :cond_2
    const/16 v1, 0x1000

    :goto_2
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 1169
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const-string v1, "iNaturalistPreferences"

    invoke-virtual {v0, v1, v3}, Lorg/inaturalist/android/ObservationEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1170
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "observation_count"

    const-string v5, "observation_count"

    .line 1171
    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1172
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1174
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$19;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void
.end method
