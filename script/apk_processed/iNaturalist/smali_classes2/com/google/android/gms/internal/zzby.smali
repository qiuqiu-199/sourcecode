.class public Lcom/google/android/gms/internal/zzby;
.super Lcom/google/android/gms/internal/zzca;


# instance fields
.field private final zzrb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;IILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzca;-><init>(Lcom/google/android/gms/internal/zzbd;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzag$zza;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/zzby;->zzrb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected zzbd()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzby;->zzrb:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzbg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzre:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/zzby;->zzrb:Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzby;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    new-instance v3, Lcom/google/android/gms/internal/zzag$zza$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzag$zza$zzb;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/zzag$zza;->zzbU:Lcom/google/android/gms/internal/zzag$zza$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzby;->zzqV:Lcom/google/android/gms/internal/zzag$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzag$zza;->zzbU:Lcom/google/android/gms/internal/zzag$zza$zzb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbg;->zzqQ:Ljava/lang/Long;

    iput-object v0, v2, Lcom/google/android/gms/internal/zzag$zza$zzb;->zzcn:Ljava/lang/Long;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method