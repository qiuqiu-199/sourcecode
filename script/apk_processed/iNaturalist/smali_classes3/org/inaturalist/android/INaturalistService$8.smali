.class Lorg/inaturalist/android/INaturalistService$8;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->onHandleIntentWorker(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;)V
    .locals 0

    .line 1465
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$8;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1468
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$8;->this$0:Lorg/inaturalist/android/INaturalistService;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100102

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
