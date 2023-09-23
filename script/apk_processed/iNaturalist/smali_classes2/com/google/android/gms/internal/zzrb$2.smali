.class Lcom/google/android/gms/internal/zzrb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrb;->zzl(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaaH:Lcom/google/android/gms/internal/zzrb;

.field final synthetic zzaaI:I

.field final synthetic zzaaJ:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrb;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    iput p2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaI:I

    iput p3, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrb;->zzc(Lcom/google/android/gms/internal/zzrb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaI:I

    iget v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->zzd(Lcom/google/android/gms/internal/zzrb;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget v5, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    if-ne v5, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget v6, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaJ:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget-object v7, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzrb;->zzd(Lcom/google/android/gms/internal/zzrb;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/zzrb;->zza(Lcom/google/android/gms/internal/zzrb;Z)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrb;->zze(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v3

    if-nez v3, :cond_7

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_7
    if-eqz v2, :cond_8

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->zze(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfb;->zzeY()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Unable to call onVideoStart()"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->zze(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfb;->zzeZ()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "Unable to call onVideoPlay()"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_6
    if-eqz v6, :cond_a

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzrb;->zze(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfb;->zzfa()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_6
    const-string v3, "Unable to call onVideoPause()"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzrb$2;->zzaaH:Lcom/google/android/gms/internal/zzrb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrb;->zze(Lcom/google/android/gms/internal/zzrb;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfb;->onVideoEnd()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v1

    :try_start_8
    const-string v2, "Unable to call onVideoEnd()"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzpk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method
