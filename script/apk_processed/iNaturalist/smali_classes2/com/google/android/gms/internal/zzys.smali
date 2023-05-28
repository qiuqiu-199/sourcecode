.class public Lcom/google/android/gms/internal/zzys;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzys;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaoN:D

.field private zzaoO:Z

.field private zzawc:I

.field private zzawd:I

.field private zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzyt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzyt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzys;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzys;-><init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V

    return-void
.end method

.method constructor <init>(DZILcom/google/android/gms/cast/ApplicationMetadata;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput p6, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzys;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzys;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    iget v3, p1, Lcom/google/android/gms/internal/zzys;->zzawc:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzyr;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    iget p1, p1, Lcom/google/android/gms/internal/zzys;->zzawd:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActiveInputState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    return v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getStandbyState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    return v0
.end method

.method public getVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzys;->zzaoN:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzys;->zzawc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzys;->zzawn:Lcom/google/android/gms/cast/ApplicationMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzys;->zzawd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzyt;->zza(Lcom/google/android/gms/internal/zzys;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzuK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzys;->zzaoO:Z

    return v0
.end method
