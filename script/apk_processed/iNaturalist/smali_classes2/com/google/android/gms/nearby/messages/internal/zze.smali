.class public Lcom/google/android/gms/nearby/messages/internal/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/Distance;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accuracy:I

.field final zzaiI:I

.field public final zzbAK:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/internal/zze;-><init>(IID)V

    return-void
.end method

.method constructor <init>(IID)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzaiI:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    iput-wide p3, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzbAK:D

    return-void
.end method

.method private static zzmJ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "LOW"

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I
    .locals 4
    .param p1    # Lcom/google/android/gms/nearby/messages/Distance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/nearby/messages/Distance;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAccuracy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    return v0
.end method

.method public getMeters()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzbAK:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getAccuracy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zze;->getMeters()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "(%.1fm, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzbAK:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->accuracy:I

    invoke-static {v3}, Lcom/google/android/gms/nearby/messages/internal/zze;->zzmJ(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzf;->zza(Lcom/google/android/gms/nearby/messages/internal/zze;Landroid/os/Parcel;I)V

    return-void
.end method
