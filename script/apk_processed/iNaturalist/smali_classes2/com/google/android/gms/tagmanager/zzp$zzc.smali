.class Lcom/google/android/gms/tagmanager/zzp$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzbn<",
        "Lcom/google/android/gms/internal/zzaj$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbFv:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzaj$zzj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzb(Lcom/google/android/gms/internal/zzaj$zzj;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbn$zza;->zzbGL:Lcom/google/android/gms/tagmanager/zzbn$zza;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzq;->zzQs()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzp;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzo;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zzb(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->zzazA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzp;->zzbN(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzq;->zzQr()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaj$zzj;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQt()V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    if-nez v1, :cond_0

    const-string p1, "Current resource is null; network resource is also null"

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzq;->zzQr()J

    move-result-wide v1

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzf(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/internal/zzaj$zzj;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    iput-object v1, p1, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzp;->zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;JZ)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzg(Lcom/google/android/gms/tagmanager/zzp;)J

    move-result-wide v1

    const/16 v3, 0x3a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "setting refresh time to current time: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbo;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzp;->zzh(Lcom/google/android/gms/tagmanager/zzp;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzc;->zzbFv:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v1, p1}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
