.class Lcom/google/android/gms/internal/zzbcg$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbcg$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic zzbKy:Lcom/google/android/gms/internal/zzbcg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbcg;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->zzbKy:Lcom/google/android/gms/internal/zzbcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->zzbKy:Lcom/google/android/gms/internal/zzbcg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcg;->zza(Lcom/google/android/gms/internal/zzbcg;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbcg$zzb$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbcg$zzb$1;-><init>(Lcom/google/android/gms/internal/zzbcg$zzb;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbcg;Lcom/google/android/gms/internal/zzbcg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbcg$zzb;-><init>(Lcom/google/android/gms/internal/zzbcg;)V

    return-void
.end method

.method private obtainMessage()Landroid/os/Message;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzRC()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzRC()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public zzRD()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzRC()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg$zzb;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zzy(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/internal/zzbcg;->zzRC()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcg$zzb;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbcg$zzb;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method