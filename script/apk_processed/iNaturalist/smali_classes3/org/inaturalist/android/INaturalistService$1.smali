.class Lorg/inaturalist/android/INaturalistService$1;
.super Ljava/lang/Object;
.source "INaturalistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistService;Landroid/content/Intent;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistService$1;->this$0:Lorg/inaturalist/android/INaturalistService;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistService$1;->this$0:Lorg/inaturalist/android/INaturalistService;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/INaturalistService;->onHandleIntentWorker(Landroid/content/Intent;)V

    return-void
.end method
