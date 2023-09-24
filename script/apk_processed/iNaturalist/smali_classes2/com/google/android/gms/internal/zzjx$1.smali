.class Lcom/google/android/gms/internal/zzjx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjx;->zzd(Ljava/util/List;)Lcom/google/android/gms/internal/zzjv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/zzjv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzLv:Lcom/google/android/gms/internal/zzju;

.field final synthetic zzLw:Lcom/google/android/gms/internal/zzjx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjx;Lcom/google/android/gms/internal/zzju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLw:Lcom/google/android/gms/internal/zzjx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLv:Lcom/google/android/gms/internal/zzju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzjx$1;->zzhb()Lcom/google/android/gms/internal/zzjv;

    move-result-object v0

    return-object v0
.end method

.method public zzhb()Lcom/google/android/gms/internal/zzjv;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLw:Lcom/google/android/gms/internal/zzjx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjx;->zza(Lcom/google/android/gms/internal/zzjx;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLw:Lcom/google/android/gms/internal/zzjx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzjx;->zzb(Lcom/google/android/gms/internal/zzjx;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLv:Lcom/google/android/gms/internal/zzju;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLw:Lcom/google/android/gms/internal/zzjx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzjx;->zzc(Lcom/google/android/gms/internal/zzjx;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzjx$1;->zzLw:Lcom/google/android/gms/internal/zzjx;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzjx;->zzd(Lcom/google/android/gms/internal/zzjx;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzju;->zza(JJ)Lcom/google/android/gms/internal/zzjv;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
