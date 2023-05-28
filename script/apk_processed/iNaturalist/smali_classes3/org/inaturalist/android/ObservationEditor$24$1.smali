.class Lorg/inaturalist/android/ObservationEditor$24$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$24;

.field final synthetic val$location:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$24;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$24$1;->this$1:Lorg/inaturalist/android/ObservationEditor$24;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$24$1;->val$location:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1831
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$24$1;->this$1:Lorg/inaturalist/android/ObservationEditor$24;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$24;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$24$1;->val$location:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$1400(Lorg/inaturalist/android/ObservationEditor;Ljava/lang/String;)V

    return-void
.end method
