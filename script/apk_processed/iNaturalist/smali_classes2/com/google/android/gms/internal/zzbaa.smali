.class public Lcom/google/android/gms/internal/zzbaa;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzbaa"


# instance fields
.field zzbDD:[I

.field zzbDf:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, ""

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzcI(I)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzg(Ljava/lang/String;II)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbaa;->zzK([B)[I

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    array-length p2, p1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x0

    aget v0, p1, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    aget v0, p1, v1

    const v1, 0x736e6574

    if-eq v0, v1, :cond_5

    return-void

    :cond_5
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    array-length v1, p1

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    const/4 p2, 0x2

    aget p1, p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDf:I

    return-void
.end method

.method private static zzJ([B)J
    .locals 7

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x0

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static zzK([B)[I
    .locals 9

    if-eqz p0, :cond_2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    aget-byte v6, p0, v1

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    div-int/lit8 v4, v1, 0x4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    aput v2, v0, v4

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza([IJ)I
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x3

    :goto_0
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    aget v3, p0, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzbaa;->zzax(J)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static zzax(J)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public getThreatType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDf:I

    return v0
.end method

.method public zzI([B)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbaa;->zzJ([B)J

    move-result-wide v2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbaa;->zzbDD:[I

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/zzbaa;->zza([IJ)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
