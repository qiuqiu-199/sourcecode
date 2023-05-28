.class Lorg/inaturalist/android/ProfileEditor$7;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor;->choosePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProfileEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$7;->this$0:Lorg/inaturalist/android/ProfileEditor;

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

    .line 392
    iget-object v0, p0, Lorg/inaturalist/android/ProfileEditor$7;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ProfileEditor;->access$100(Lorg/inaturalist/android/ProfileEditor;)V

    return-void
.end method
