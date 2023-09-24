.class public final Lcom/google/android/gms/internal/zzaxt;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaxt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final durationMillis:J

.field private final zzbyW:Ljava/lang/String;

.field private final zzbyn:Lcom/google/android/gms/internal/zzawl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbzu:Lcom/google/android/gms/internal/zzawi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbzv:Lcom/google/android/gms/nearby/connection/zze;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaxu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaxu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaxt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;)V
    .locals 7
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawl$zza;->zzeH(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawl;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzawi$zza;->zzeE(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzawi;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzaxt;-><init>(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawi;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzawl;Lcom/google/android/gms/internal/zzawi;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/zze;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzawl;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzawi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyW:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzaxt;->durationMillis:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzv:Lcom/google/android/gms/nearby/connection/zze;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaxt;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzaxt;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyW:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaxt;->zzbyW:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaxt;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzaxt;->durationMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzv:Lcom/google/android/gms/nearby/connection/zze;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaxt;->zzbzv:Lcom/google/android/gms/nearby/connection/zze;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyW:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaxt;->durationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzv:Lcom/google/android/gms/nearby/connection/zze;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaxu;->zza(Lcom/google/android/gms/internal/zzaxt;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOB()Lcom/google/android/gms/nearby/connection/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzv:Lcom/google/android/gms/nearby/connection/zze;

    return-object v0
.end method

.method public zzOd()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyn:Lcom/google/android/gms/internal/zzawl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public zzOn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbyW:Ljava/lang/String;

    return-object v0
.end method

.method public zzOz()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxt;->zzbzu:Lcom/google/android/gms/internal/zzawi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzawi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public zzyK()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaxt;->durationMillis:J

    return-wide v0
.end method
