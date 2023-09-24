.class Lorg/inaturalist/android/ObservationEditor$14;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onCreate(Landroid/os/Bundle;)V
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

    .line 832
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 2

    .line 840
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$1802(Lorg/inaturalist/android/ObservationEditor;Z)Z

    .line 841
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$1900(Lorg/inaturalist/android/ObservationEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2000(Lorg/inaturalist/android/ObservationEditor;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$2100(Lorg/inaturalist/android/ObservationEditor;Z)V

    .line 846
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v1, v1, Lorg/inaturalist/android/ObservationEditor;->mReturnToObservationList:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1001

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->setResult(I)V

    .line 847
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->finish()V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 3

    .line 835
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$14;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v1}, Lorg/inaturalist/android/ObservationEditor;->access$1600(Lorg/inaturalist/android/ObservationEditor;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/inaturalist/android/ObservationEditor;->access$1700(Lorg/inaturalist/android/ObservationEditor;Ljava/util/List;Z)V

    return-void
.end method
