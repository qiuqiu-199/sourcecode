.class Lcom/google/android/gms/internal/zzbpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpl;->zzf(Lcom/google/android/gms/internal/zzbpa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcfx:Lcom/google/android/gms/internal/zzbpa;

.field final synthetic zzcfy:Lcom/google/android/gms/internal/zzbpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpl;Lcom/google/android/gms/internal/zzbpa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfy:Lcom/google/android/gms/internal/zzbpl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfx:Lcom/google/android/gms/internal/zzbpa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfy:Lcom/google/android/gms/internal/zzbpl;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpl;->zza(Lcom/google/android/gms/internal/zzbpl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfy:Lcom/google/android/gms/internal/zzbpl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpl;->zza(Lcom/google/android/gms/internal/zzbpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfx:Lcom/google/android/gms/internal/zzbpa;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfy:Lcom/google/android/gms/internal/zzbpl;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbpl;->zza(Lcom/google/android/gms/internal/zzbpl;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfx:Lcom/google/android/gms/internal/zzbpa;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbpj;->interrupt()V

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbpj;->zzZa()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpl$3;->zzcfx:Lcom/google/android/gms/internal/zzbpa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbpa;->stop()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method