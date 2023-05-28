.class public Lcom/google/android/gms/internal/zzaga;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaga;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final limit:I

.field public final zzaKt:I

.field public final zzaKu:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzagb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaga;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaga;->zzaKt:I

    iput p2, p0, Lcom/google/android/gms/internal/zzaga;->limit:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaga;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzaga;

    iget v1, p1, Lcom/google/android/gms/internal/zzaga;->limit:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaga;->limit:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p1, Lcom/google/android/gms/internal/zzaga;->zzaKt:I

    iget v3, p0, Lcom/google/android/gms/internal/zzaga;->zzaKt:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaga;->zzAl()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaga;->zzAl()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaga;->zzAl()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    array-length v1, v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    array-length v3, v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    aget v4, p1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget v8, v5, v7

    if-ne v8, v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_8

    return v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, v0, v3

    mul-int/lit8 v5, v5, 0xd

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzaga;->zzaKt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzaga;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzagb;->zza(Lcom/google/android/gms/internal/zzaga;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzAl()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaga;->zzaKu:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
