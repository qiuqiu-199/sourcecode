.class public final Lcom/google/android/gms/internal/zzbxm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbxm$zza;
    }
.end annotation


# instance fields
.field private final zzcuH:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbxm;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static zzL(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzrg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzM(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzrh(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static zza(Ljava/lang/CharSequence;I)I
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static zza(Ljava/lang/CharSequence;[BII)I
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p2

    if-ge v3, p3, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p2, v0

    return p2

    :cond_1
    add-int/2addr p2, v1

    :goto_1
    if-ge v1, v0, :cond_9

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p2, p3, :cond_2

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    :goto_2
    move p2, v4

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x800

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_3

    :cond_3
    const v4, 0xd800

    if-lt v3, v4, :cond_4

    const v4, 0xdfff

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_5

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    goto :goto_2

    :cond_5
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_7

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    move v1, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    move v1, v4

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v1, -0x1

    const/16 p1, 0x27

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unpaired surrogate at index "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x25

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    return p2
.end method

.method private static zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(Ljava/lang/CharSequence;[BII)I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method public static zzag([B)Lcom/google/android/gms/internal/zzbxm;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzc([BII)Lcom/google/android/gms/internal/zzbxm;

    move-result-object p0

    return-object p0
.end method

.method public static zzai([B)I
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/zzbxt;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzd(Lcom/google/android/gms/internal/zzbxt;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static zzb(Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzbxm;->zza(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-lt v2, v0, :cond_3

    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v2

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    const/16 v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UTF-8 length does not fit in int: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    :goto_2
    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_4

    :cond_3
    move v1, v4

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v1, v1, -0x1

    const/16 p1, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unpaired surrogate at index "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    goto :goto_2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static zzbe(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzbi(J)I

    move-result p0

    return p0
.end method

.method public static zzbf(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzbi(J)I

    move-result p0

    return p0
.end method

.method public static zzbg(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzbk(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzbi(J)I

    move-result p0

    return p0
.end method

.method public static zzbi(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static zzbk(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/zzbxt;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zze(Lcom/google/android/gms/internal/zzbxt;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(I[B)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzai([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc([BII)Lcom/google/android/gms/internal/zzbxm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbxm;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;-><init>([BII)V

    return-object v0
.end method

.method public static zzd(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzbxt;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxt;->zzaeT()I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbe(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(Lcom/google/android/gms/internal/zzbxt;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxt;->zzaeT()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzf(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbf(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbg(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzkb(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzb(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzr(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrj(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzkb(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzrg(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzrh(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrn(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result p0

    return p0
.end method

.method public static zzrj(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result p0

    return p0
.end method

.method public static zzrl(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzrn(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public zzJ(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzre(I)V

    return-void
.end method

.method public zzK(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzrf(I)V

    return-void
.end method

.method public zzN(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    return-void
.end method

.method public zza(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzbxm;->zzn(D)V

    return-void
.end method

.method public zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzbxm;->zzba(J)V

    return-void
.end method

.method public zza(ILcom/google/android/gms/internal/zzbxt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzc(Lcom/google/android/gms/internal/zzbxt;)V

    return-void
.end method

.method public zzaeF()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public zzaeG()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxm;->zzaeF()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzah([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzaj([B)V

    return-void
.end method

.method public zzaj([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzd([BII)V

    return-void
.end method

.method public zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzbxm;->zzbb(J)V

    return-void
.end method

.method public zzb(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzah([B)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbxt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzba(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbh(J)V

    return-void
.end method

.method public zzbb(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbh(J)V

    return-void
.end method

.method public zzbc(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbj(J)V

    return-void
.end method

.method public zzbd(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbk(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbh(J)V

    return-void
.end method

.method public zzbh(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzri(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxm;->zzri(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public zzbj(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbxm$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    throw p1
.end method

.method public zzbq(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzri(I)V

    return-void
.end method

.method public zzc(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbxm$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    throw p1
.end method

.method public zzc(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzk(F)V

    return-void
.end method

.method public zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzbxm;->zzbc(J)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbxt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbxt;->zzaeS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzbxt;->zza(Lcom/google/android/gms/internal/zzbxm;)V

    return-void
.end method

.method public zzd(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzbxm;->zzbd(J)V

    return-void
.end method

.method public zzd([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbxm$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    throw p1
.end method

.method public zzg(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbq(Z)V

    return-void
.end method

.method public zzk(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzrm(I)V

    return-void
.end method

.method public zzka(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbxm;->zzrl(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzbxm;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbxm$zza;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    throw p1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzb(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzbxm$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbxm$zza;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public zzn(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbxm;->zzbj(J)V

    return-void
.end method

.method public zzq(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbxm;->zzN(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzbxm;->zzka(Ljava/lang/String;)V

    return-void
.end method

.method public zzre(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzbxm;->zzbh(J)V

    :goto_0
    return-void
.end method

.method public zzrf(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbxm;->zzrn(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzrk(I)V

    return-void
.end method

.method public zzri(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzc(B)V

    return-void
.end method

.method public zzrk(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxm;->zzri(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbxm;->zzri(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public zzrm(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzbxm$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbxm;->zzcuH:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzbxm$zza;-><init>(II)V

    throw p1
.end method
