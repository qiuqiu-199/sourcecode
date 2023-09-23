.class Lorg/inaturalist/android/INaturalistService$9;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->handleProjectFieldErrors(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Ljava/lang/String;)V
    .locals 0

    .line 2398
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$9;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$9;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2401
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$9;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$9;->val$errorMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
