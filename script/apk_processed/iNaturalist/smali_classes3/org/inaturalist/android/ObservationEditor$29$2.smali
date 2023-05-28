.class Lorg/inaturalist/android/ObservationEditor$29$2;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$29;

.field final synthetic val$finalErrorImporting:Z


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$29;Z)V
    .locals 0

    .line 2428
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iput-boolean p2, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->val$finalErrorImporting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2431
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    .line 2432
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    .line 2434
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->val$finalErrorImporting:Z

    if-eqz v0, :cond_0

    .line 2435
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$29$2;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    const v2, 0x7f1001d5

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/ObservationEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
