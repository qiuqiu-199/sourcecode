.class public Lcom/google/android/gms/internal/zzagf$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzagf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzagf$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaKx:J

.field public final zzaKy:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzagf$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v4, p3, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v4, p1, v2

    if-eqz v4, :cond_3

    cmp-long v2, p1, p3

    if-gtz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    :cond_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzagf$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzagf$zza;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzagf$zza;->zzqn()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzagf$zza;->zzAm()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagg;->zza(Lcom/google/android/gms/internal/zzagf$zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAm()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKy:J

    return-wide v0
.end method

.method public zzqn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzagf$zza;->zzaKx:J

    return-wide v0
.end method
