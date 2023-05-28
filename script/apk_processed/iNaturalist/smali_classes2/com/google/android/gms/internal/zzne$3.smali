.class Lcom/google/android/gms/internal/zzne$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzid;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzTQ:Lcom/google/android/gms/internal/zzne;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzne;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzne$3;->zzTQ:Lcom/google/android/gms/internal/zzne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzqw;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzne$3;->zzTQ:Lcom/google/android/gms/internal/zzne;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzne;->zza(Lcom/google/android/gms/internal/zzne;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzne$3;->zzTQ:Lcom/google/android/gms/internal/zzne;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzne;->zzb(Lcom/google/android/gms/internal/zzne;)Lcom/google/android/gms/internal/zzqj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzqj;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zznh;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zznh;-><init>(ILjava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzne$3;->zzTQ:Lcom/google/android/gms/internal/zzne;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzne;->zzc(Lcom/google/android/gms/internal/zzne;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznh;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzne$3;->zzTQ:Lcom/google/android/gms/internal/zzne;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzne;->zzb(Lcom/google/android/gms/internal/zzne;)Lcom/google/android/gms/internal/zzqj;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzqj;->zzh(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
