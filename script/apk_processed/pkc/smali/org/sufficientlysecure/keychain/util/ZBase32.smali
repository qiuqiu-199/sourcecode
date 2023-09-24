.class public final Lorg/sufficientlysecure/keychain/util/ZBase32;
.super Ljava/lang/Object;
.source "ZBase32.java"


# static fields
.field private static final ALPHABET:[C

.field private static final MASK:I

.field private static final SHIFT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ybndrfg8ejkmcpqxot1uwisza345h769"

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/util/ZBase32;->ALPHABET:[C

    .line 11
    sget-object v0, Lorg/sufficientlysecure/keychain/util/ZBase32;->ALPHABET:[C

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    sput v0, Lorg/sufficientlysecure/keychain/util/ZBase32;->SHIFT:I

    .line 12
    sget-object v0, Lorg/sufficientlysecure/keychain/util/ZBase32;->ALPHABET:[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/sufficientlysecure/keychain/util/ZBase32;->MASK:I

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ZBase32;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ZBase32;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 10

    move-object/16 v7, p0

    .line 15
    array-length v0, v7

    if-nez v0, :cond_0

    const-string v7, ""

    return-object v7

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 21
    aget-byte v1, v7, v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    :goto_0
    if-gtz v3, :cond_2

    .line 24
    array-length v4, v7

    if-ge v2, v4, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 25
    :cond_2
    :goto_1
    sget v4, Lorg/sufficientlysecure/keychain/util/ZBase32;->SHIFT:I

    if-ge v3, v4, :cond_4

    .line 26
    array-length v4, v7

    if-ge v2, v4, :cond_3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v4, v2, 0x1

    .line 28
    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x8

    move v2, v4

    goto :goto_2

    .line 31
    :cond_3
    sget v4, Lorg/sufficientlysecure/keychain/util/ZBase32;->SHIFT:I

    sub-int/2addr v4, v3

    shl-int/2addr v1, v4

    add-int/2addr v3, v4

    .line 36
    :cond_4
    :goto_2
    sget v4, Lorg/sufficientlysecure/keychain/util/ZBase32;->SHIFT:I

    sub-int/2addr v3, v4

    .line 37
    sget-object v4, Lorg/sufficientlysecure/keychain/util/ZBase32;->ALPHABET:[C

    sget v5, Lorg/sufficientlysecure/keychain/util/ZBase32;->MASK:I

    shr-int v6, v1, v3

    and-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/util/ZBase32;--->encode([B)Ljava/lang/String;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
