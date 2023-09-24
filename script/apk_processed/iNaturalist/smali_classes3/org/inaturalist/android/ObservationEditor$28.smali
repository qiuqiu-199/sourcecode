.class Lorg/inaturalist/android/ObservationEditor$28;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->prepareCapturedPhoto(Landroid/net/Uri;)V
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

    .line 2348
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2351
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-virtual {v0}, Lorg/inaturalist/android/ObservationEditor;->updateImages()V

    .line 2353
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationEditor;->mLocationManuallySet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-boolean v0, v0, Lorg/inaturalist/android/ObservationEditor;->mGettingLocation:Z

    if-nez v0, :cond_0

    .line 2354
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$1300(Lorg/inaturalist/android/ObservationEditor;)V

    .line 2357
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$200(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    .line 2363
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$28;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$3400(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/ObservationEditor$28$1;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationEditor$28$1;-><init>(Lorg/inaturalist/android/ObservationEditor$28;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
