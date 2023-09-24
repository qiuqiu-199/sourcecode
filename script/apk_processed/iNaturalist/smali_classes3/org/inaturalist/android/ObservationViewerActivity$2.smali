.class Lorg/inaturalist/android/ObservationViewerActivity$2;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 507
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$2;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/inaturalist/android/ObservationViewerActivity$2;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {v0, p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$402(Lorg/inaturalist/android/ObservationViewerActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    .line 512
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$2;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$500(Lorg/inaturalist/android/ObservationViewerActivity;)V

    return-void
.end method
