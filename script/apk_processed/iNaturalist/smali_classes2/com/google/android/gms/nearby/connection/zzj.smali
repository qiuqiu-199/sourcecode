.class public final Lcom/google/android/gms/nearby/connection/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/connection/zzj;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbyj:Lcom/google/android/gms/nearby/connection/zzj;

.field public static final zzbyk:Lcom/google/android/gms/nearby/connection/zzj;


# instance fields
.field private final zzbyl:I

.field private final zzbym:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzj;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/nearby/connection/zzj;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyj:Lcom/google/android/gms/nearby/connection/zzj;

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzj;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/nearby/connection/zzj;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyk:Lcom/google/android/gms/nearby/connection/zzj;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    iput p2, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/connection/zzj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/connection/zzj;

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    iget p1, p1, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    iget v1, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbym:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Strategy{discoveryMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", connectionType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/zzk;->zza(Lcom/google/android/gms/nearby/connection/zzj;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzOc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/zzj;->zzbyl:I

    return v0
.end method
