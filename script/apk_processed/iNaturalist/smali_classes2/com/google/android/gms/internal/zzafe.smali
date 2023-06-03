.class public Lcom/google/android/gms/internal/zzafe;
.super Ljava/lang/Object;


# instance fields
.field private final zzaJB:Lcom/google/android/gms/internal/zzbxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbxg;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzafe;->zzaJB:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method private static zza(IJJ)Lcom/google/android/gms/internal/zzbxg;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    cmp-long v2, p3, p1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    new-instance v0, Lcom/google/android/gms/internal/zzbxg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbxg;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/zzbxg;->zzcsS:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/zzbxg;->zzcur:J

    iput-wide p3, v0, Lcom/google/android/gms/internal/zzbxg;->zzcus:J

    return-object v0
.end method

.method public static zze(JJ)Lcom/google/android/gms/internal/zzafe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x1

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzafe;->zza(IJJ)Lcom/google/android/gms/internal/zzbxg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzbxg;)V

    return-object v0
.end method

.method public static zzf(JJ)Lcom/google/android/gms/internal/zzafe;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzafe;

    const/4 v1, 0x2

    invoke-static {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzafe;->zza(IJJ)Lcom/google/android/gms/internal/zzbxg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzafe;-><init>(Lcom/google/android/gms/internal/zzbxg;)V

    return-object v0
.end method


# virtual methods
.method public zzAe()Lcom/google/android/gms/internal/zzbxg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafe;->zzaJB:Lcom/google/android/gms/internal/zzbxg;

    return-object v0
.end method
