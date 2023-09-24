.class public Lcom/google/android/gms/internal/zzji$zzd;
.super Lcom/google/android/gms/internal/zzqq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzqq<",
        "Lcom/google/android/gms/internal/zzjf;",
        ">;"
    }
.end annotation


# instance fields
.field private zzJM:Lcom/google/android/gms/internal/zzpt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpt<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;"
        }
    .end annotation
.end field

.field private zzKe:Z

.field private zzKf:I

.field private final zzrJ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpt<",
            "Lcom/google/android/gms/internal/zzjf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzqq;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzrJ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzJM:Lcom/google/android/gms/internal/zzpt;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKe:Z

    iput p1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzji$zzd;)Lcom/google/android/gms/internal/zzpt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzJM:Lcom/google/android/gms/internal/zzpt;

    return-object p0
.end method


# virtual methods
.method public zzgP()Lcom/google/android/gms/internal/zzji$zzc;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzji$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzji$zzc;-><init>(Lcom/google/android/gms/internal/zzji$zzd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzji$zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzji$zzd$1;-><init>(Lcom/google/android/gms/internal/zzji$zzd;Lcom/google/android/gms/internal/zzji$zzc;)V

    new-instance v3, Lcom/google/android/gms/internal/zzji$zzd$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzji$zzd$2;-><init>(Lcom/google/android/gms/internal/zzji$zzd;Lcom/google/android/gms/internal/zzji$zzc;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzji$zzd;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    iget v2, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzgQ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgS()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public zzgR()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKe:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzji$zzd;->zzgS()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected zzgS()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzrJ:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzaw(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKe:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzji$zzd;->zzKf:I

    if-nez v1, :cond_1

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzji$zzd$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzji$zzd$3;-><init>(Lcom/google/android/gms/internal/zzji$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzqp$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzqp$zzb;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzji$zzd;->zza(Lcom/google/android/gms/internal/zzqp$zzc;Lcom/google/android/gms/internal/zzqp$zza;)V

    goto :goto_1

    :cond_1
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
