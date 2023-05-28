.class Lorg/inaturalist/android/ObservationEditor$26;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationEditor;

.field final synthetic val$selectedImageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V
    .locals 0

    .line 2265
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$26;->val$selectedImageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2268
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isExternalStoragePermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2270
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$800(Lorg/inaturalist/android/ObservationEditor;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    new-instance v2, Lorg/inaturalist/android/ObservationEditor$26$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ObservationEditor$26$1;-><init>(Lorg/inaturalist/android/ObservationEditor$26;)V

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/INaturalistApp;->requestExternalStoragePermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    return-void

    .line 2285
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$26;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$26;->val$selectedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$3500(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V

    return-void
.end method
