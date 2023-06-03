.class Lorg/inaturalist/android/ObservationEditor$26$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$26;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$26;)V
    .locals 0

    .line 2270
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$26$1;->this$1:Lorg/inaturalist/android/ObservationEditor$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 2

    .line 2278
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$26$1;->this$1:Lorg/inaturalist/android/ObservationEditor$26;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$26$1;->this$1:Lorg/inaturalist/android/ObservationEditor$26;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$26;->val$selectedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$3500(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 2273
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$26$1;->this$1:Lorg/inaturalist/android/ObservationEditor$26;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$26$1;->this$1:Lorg/inaturalist/android/ObservationEditor$26;

    iget-object v1, v1, Lorg/inaturalist/android/ObservationEditor$26;->val$selectedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$3500(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V

    return-void
.end method
