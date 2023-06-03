.class Lcom/google/android/gms/internal/zzji$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$1$1;->zzgN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzJU:Lcom/google/android/gms/internal/zzji$1$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$1$1$1;->zzJU:Lcom/google/android/gms/internal/zzji$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$1$1$1;->zzJU:Lcom/google/android/gms/internal/zzji$1$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1$1;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$1;->zzJR:Lcom/google/android/gms/internal/zzji;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji;->zzc(Lcom/google/android/gms/internal/zzji;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1$1$1;->zzJU:Lcom/google/android/gms/internal/zzji$1$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1$1;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzji$zzd;->getStatus()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1$1$1;->zzJU:Lcom/google/android/gms/internal/zzji$1$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1$1;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzji$zzd;->getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$1$1$1;->zzJU:Lcom/google/android/gms/internal/zzji$1$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1$1;->zzJT:Lcom/google/android/gms/internal/zzji$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzji$1;->zzJQ:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzji$zzd;->reject()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzw;->zzcM()Lcom/google/android/gms/internal/zzpo;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzji$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzji$1$1$1$1;-><init>(Lcom/google/android/gms/internal/zzji$1$1$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzpo;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
