.class Lorg/inaturalist/android/INaturalistApp$7;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$7;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/inaturalist/android/INaturalistApp$7;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x64

    .line 942
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 947
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp$7;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0x1234

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
