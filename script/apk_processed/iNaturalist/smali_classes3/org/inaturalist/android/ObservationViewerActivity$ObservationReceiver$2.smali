.class Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$2;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;)V
    .locals 0

    .line 2146
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2149
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver$2;->this$1:Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationViewerActivity$ObservationReceiver;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationViewerActivity;->access$3900(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method
