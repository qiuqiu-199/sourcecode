.class Lorg/inaturalist/android/ObservationEditor$15;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->takePhoto()V
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

    .line 922
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$15;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 0

    return-void
.end method

.method public onPermissionGranted()V
    .locals 1

    .line 925
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$15;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$2200(Lorg/inaturalist/android/ObservationEditor;)V

    return-void
.end method
