.class public Lcom/google/android/gms/internal/zzbtt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbtt$zzb;,
        Lcom/google/android/gms/internal/zzbtt$zza;
    }
.end annotation


# static fields
.field private static final zzcox:Lcom/google/android/gms/internal/zzbtt;


# instance fields
.field private final zzcoy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/zzbtt$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcoz:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbtt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbtt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbtt;->zzcox:Lcom/google/android/gms/internal/zzbtt;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoy:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoz:Ljava/lang/Object;

    return-void
.end method

.method public static zzacT()Lcom/google/android/gms/internal/zzbtt;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbtt;->zzcox:Lcom/google/android/gms/internal/zzbtt;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoz:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/zzbtt$zza;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/zzbtt$zza;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbtt$zzb;->zzx(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbtt$zzb;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbtt$zzb;->zza(Lcom/google/android/gms/internal/zzbtt$zza;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoy:Ljava/util/Map;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zzaK(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoz:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbtt;->zzcoy:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbtt$zza;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbtt$zza;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbtt$zzb;->zzx(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbtt$zzb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbtt$zzb;->zzb(Lcom/google/android/gms/internal/zzbtt$zza;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
