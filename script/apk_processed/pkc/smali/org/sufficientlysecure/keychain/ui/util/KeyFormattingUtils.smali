.class public Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;
.super Ljava/lang/Object;
.source "KeyFormattingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;,
        Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static beautifyKeyId(J)Ljava/lang/String;
    .locals 3

    move-wide/16 v0, p0

    .line 379
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->beautifyKeyId(J)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static beautifyKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    const-string v0, "0x"

    .line 349
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 350
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const/16 v2, 0x2008

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v1, 0x4

    .line 358
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->beautifyKeyId(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static beautifyKeyId([B)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 367
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToKeyId([B)J

    move-result-wide v0

    .line 368
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->beautifyKeyId([B)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static beautifyKeyIdWithPrefix(J)Ljava/lang/String;
    .locals 3

    move-wide/16 v0, p0

    .line 387
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyIdWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->beautifyKeyIdWithPrefix(J)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static beautifyKeyIdWithPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->beautifyKeyIdWithPrefix(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertFingerprintHexFingerprint(Ljava/lang/String;)[B
    .locals 5

    move-object/16 v2, p0

    .line 327
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    .line 328
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "fingerprint must be 40 chars long!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertFingerprintHexFingerprint(Ljava/lang/String;)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertFingerprintToHex([B)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 280
    array-length v0, v2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    array-length v0, v2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 281
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No valid v3 or v4 fingerprint!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertFingerprintToHex([B)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertFingerprintToKeyId([B)J
    .locals 5

    move-object/16 v2, p0

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 338
    invoke-static {v2, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertFingerprintToKeyId([B)J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertKeyIdHexToKeyId(Ljava/lang/String;)J
    .locals 5

    move-object/16 v2, p0

    .line 334
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0x10

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertKeyIdHexToKeyId(Ljava/lang/String;)J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertKeyIdToHex(J)Ljava/lang/String;
    .locals 8

    move-wide/16 v5, p0

    const/16 v0, 0x20

    shr-long v0, v5, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 309
    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHexShort(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex32bit(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex32bit(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertKeyIdToHex(J)Ljava/lang/String;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static convertKeyIdToHex32bit(J)Ljava/lang/String;
    .locals 7

    move-wide/16 v4, p0

    const-wide v0, 0xffffffffL

    and-long v2, v4, v0

    .line 319
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 320
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v0, 0x8

    if-ge v5, v0, :cond_0

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    return-object v4

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertKeyIdToHex32bit(J)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static convertKeyIdToHexShort(J)Ljava/lang/String;
    .locals 5

    move-wide/16 v2, p0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex32bit(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->convertKeyIdToHexShort(J)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static formatFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    const-string v0, "(.{4})(?!$)"

    const-string v1, "$1 "

    .line 392
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v0, 0x18

    const/16 v1, 0xa

    .line 396
    aput-char v1, v2, v0

    .line 397
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->formatFingerprint(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAlgorithmInfo(I)Ljava/lang/String;
    .locals 4

    move/16 v1, p0

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, v1, v0, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getAlgorithmInfo(I)Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 56
    invoke-static {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x16

    if-eq v2, v0, :cond_4

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d34

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    goto :goto_0

    :pswitch_0
    if-nez p0, :cond_1

    const-string v1, "ECDSA"

    return-object v1

    .line 91
    :cond_1
    invoke-static {v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getCurveInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECDSA ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    if-nez p0, :cond_2

    const-string v1, "ECDH"

    return-object v1

    .line 98
    :cond_2
    invoke-static {v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getCurveInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ECDH ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const-string v1, "DSA"

    goto :goto_0

    :pswitch_3
    const-string v1, "ElGamal"

    goto :goto_0

    :pswitch_4
    const-string v1, "RSA"

    :goto_0
    if-eqz v3, :cond_3

    .line 115
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bit"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    return-object v1

    :cond_4
    const-string v1, "EdDSA"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAlgorithmInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 131
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Algorithm:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d34

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const-string v2, "ECDH"

    if-eqz p0, :cond_0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getCurveInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :pswitch_1
    const-string v2, "ECDSA"

    if-eqz p0, :cond_1

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getCurveInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    :pswitch_2
    const-string v1, "ElGamal"

    goto :goto_0

    :pswitch_3
    const-string v1, "DSA"

    goto :goto_0

    :pswitch_4
    const-string v1, "RSA"

    goto :goto_0

    :cond_2
    const-string v1, "unknown"

    :goto_0
    if-eqz v3, :cond_3

    .line 170
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bit"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getAlgorithmInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getAlgorithmInfo(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getAlgorithmInfo(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;Ljava/lang/Integer;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getCurveInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 205
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Lorg/bouncycastle/asn1/nist/NISTNamedCurves;->getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 212
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/teletrust/TeleTrusTNamedCurves;->getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 216
    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    if-eqz v1, :cond_3

    .line 221
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d34

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    const-string v1, "unknown"

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getCurveInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getCurveInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 180
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$service$SaveKeyringParcel$Curve:[I

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;->ordinal()I

    move-result v2

    aget v2, v0, v2

    packed-switch v2, :pswitch_data_0

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d34

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v1, "NIST P-521"

    return-object v1

    :pswitch_1
    const-string v1, "NIST P-384"

    return-object v1

    :pswitch_2
    const-string v1, "NIST P-256"

    return-object v1

    :cond_0
    const-string v1, "unknown"

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getCurveInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getHashAlgoName(I)Ljava/lang/String;
    .locals 5

    move/16 v2, p0

    .line 229
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/openpgp/operator/jcajce/PGPUtil;->getDigestName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getHashAlgoName(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getKeyIdFromFingerprint([B)J
    .locals 5

    move-object/16 v2, p0

    .line 288
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v0, 0xc

    .line 290
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getKeyIdFromFingerprint([B)J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getSymmetricCipherName(I)Ljava/lang/String;
    .locals 5

    move/16 v2, p0

    packed-switch v2, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :pswitch_0
    const-string v2, "Camellia-256"

    return-object v2

    :pswitch_1
    const-string v2, "Camellia-192"

    return-object v2

    :pswitch_2
    const-string v2, "Camellia-128"

    return-object v2

    :pswitch_3
    const-string v2, "Twofish"

    return-object v2

    :pswitch_4
    const-string v2, "AES-256"

    return-object v2

    :pswitch_5
    const-string v2, "AES-192"

    return-object v2

    :pswitch_6
    const-string v2, "AES-128"

    return-object v2

    :pswitch_7
    const-string v2, "DES"

    return-object v2

    :pswitch_8
    const-string v2, "SAFER"

    return-object v2

    :pswitch_9
    const-string v2, "Blowfish"

    return-object v2

    :pswitch_a
    const-string v2, "CAST5"

    return-object v2

    :pswitch_b
    const-string v2, "Triple-DES"

    return-object v2

    :pswitch_c
    const-string v2, "IDEA"

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getSymmetricCipherName(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getUnboxedLongArray(Ljava/util/Collection;)[J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    move-object/16 v6, p0

    .line 406
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 408
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    add-int/lit8 v3, v1, 0x1

    .line 409
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->getUnboxedLongArray(Ljava/util/Collection;)[J"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatus(Landroid/content/res/Resources;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Z)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    move/16 p0, p3

    .line 466
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->hasEncrypt()Z

    move-result v0

    const v1, 0x7f060052

    const v2, 0x7f08012e

    const v3, 0x7f060054

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getDecryptionResult()Lorg/openintents/openpgp/OpenPgpDecryptionResult;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpDecryptionResult;->getResult()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f1100fb

    const v4, 0x7f08012b

    const v0, 0x7f060054

    const v5, 0x7f1100fb

    goto :goto_0

    :pswitch_0
    const v0, 0x7f1100f6

    const v4, 0x7f080129

    const v0, 0x7f060052

    const v5, 0x7f1100f6

    goto :goto_0

    :pswitch_1
    const v0, 0x7f1100f7

    const v0, 0x7f060054

    const v4, 0x7f08012e

    const v5, 0x7f1100f7

    .line 495
    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 496
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getEncryptionStatusIcon()Landroid/widget/ImageView;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 497
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getEncryptionStatusIcon()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getEncryptionStatusText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 499
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getEncryptionStatusText()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    :cond_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_1

    packed-switch v4, :pswitch_data_1

    const v1, 0x7f1100f9

    const/4 v1, -0x1

    const v2, 0x7f1100f9

    :goto_1
    const v3, 0x7f08012e

    :goto_2
    const v4, 0x7f060054

    goto :goto_3

    :pswitch_2
    const v1, 0x7f1100f8

    const/4 v1, 0x0

    const v2, 0x7f1100f8

    goto :goto_1

    :pswitch_3
    const v1, 0x7f1100fd

    const v2, 0x7f08012c

    const/4 v1, 0x0

    const v2, 0x7f1100fd

    const v3, 0x7f08012c

    goto :goto_2

    :pswitch_4
    const v1, 0x7f1100ff

    const v2, 0x7f080130

    const/4 v1, 0x0

    const v2, 0x7f1100ff

    const v3, 0x7f080130

    goto :goto_2

    :pswitch_5
    const v1, 0x7f110101

    const v2, 0x7f080134

    const v3, 0x7f060053

    const/4 v1, 0x0

    const v2, 0x7f110101

    const v3, 0x7f080134

    const v4, 0x7f060053

    goto :goto_3

    :pswitch_6
    const v1, 0x7f1100fe

    const v2, 0x7f080132

    const/4 v1, 0x1

    const v2, 0x7f1100fe

    const v3, 0x7f080132

    goto :goto_2

    :pswitch_7
    const v2, 0x7f1100fc

    const v3, 0x7f080136

    const/4 v1, 0x0

    const v4, 0x7f060052

    goto :goto_3

    :cond_1
    const v1, 0x7f1100fa

    const v3, 0x7f060051

    const/4 v1, -0x1

    const v2, 0x7f1100fa

    const v3, 0x7f08012e

    const v4, 0x7f060051

    :goto_3
    if-ne v1, v5, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x2

    .line 593
    :cond_2
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 594
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureStatusIcon()Landroid/widget/ImageView;

    move-result-object v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p0, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 595
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureStatusIcon()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureStatusText()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 597
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureStatusText()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v8

    const/16 p0, 0x8

    if-eq v8, v6, :cond_5

    .line 600
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getResult()I

    move-result v8

    if-eqz v8, :cond_5

    .line 603
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 605
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureAction()Landroid/widget/ViewAnimator;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 607
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getPrimaryUserId()Ljava/lang/String;

    move-result-object v8

    .line 608
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v8

    .line 609
    iget-object v10, v8, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 610
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureUserName()Landroid/widget/TextView;

    move-result-object v10

    iget-object v0, v8, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 612
    :cond_3
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureUserName()Landroid/widget/TextView;

    move-result-object v10

    const v0, 0x7f110d45

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(I)V

    .line 614
    :goto_4
    iget-object v10, v8, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v10, :cond_4

    .line 615
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureUserEmail()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureUserEmail()Landroid/widget/TextView;

    move-result-object v9

    iget-object v8, v8, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 618
    :cond_4
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureUserEmail()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 623
    :cond_5
    invoke-interface {v9}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;->getSignatureLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->setStatus(Landroid/content/res/Resources;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$StatusHolder;Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, p0

    .line 433
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move/16 p1, p4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    .line 438
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;I)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 636
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$1;->$SwitchMap$org$sufficientlysecure$keychain$ui$util$KeyFormattingUtils$State:[I

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const v0, 0x7f060052

    const v1, 0x7f080132

    const v2, 0x7f08012e

    const v3, 0x7f060054

    const/4 v4, -0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    .line 798
    :pswitch_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 797
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_0

    const p1, 0x7f060051

    .line 802
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 805
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 784
    :pswitch_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 783
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_1

    const p1, 0x7f060054

    .line 788
    :cond_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 791
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 771
    :pswitch_2
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 770
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_2

    const p1, 0x7f060054

    .line 775
    :cond_2
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 778
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 758
    :pswitch_3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08012b

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 757
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_3

    const p1, 0x7f060054

    .line 762
    :cond_3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 765
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_4
    if-eqz p2, :cond_4

    .line 741
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08012f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 740
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 744
    :cond_4
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 743
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-ne p1, v4, :cond_5

    const p1, 0x7f060054

    .line 749
    :cond_5
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 752
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_5
    if-eqz p2, :cond_6

    .line 723
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08012d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 722
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 726
    :cond_6
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f08012c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 725
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-ne p1, v4, :cond_7

    const p1, 0x7f060054

    .line 731
    :cond_7
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 734
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_6
    if-eqz p2, :cond_8

    .line 705
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080131

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 704
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 708
    :cond_8
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080130

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 707
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-ne p1, v4, :cond_9

    const p1, 0x7f060054

    .line 713
    :cond_9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 716
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 690
    :pswitch_7
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 689
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_a

    const p1, 0x7f060054

    .line 694
    :cond_a
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 697
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :pswitch_8
    if-eqz p2, :cond_b

    .line 673
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080135

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 672
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 676
    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080134

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 675
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    if-ne p1, v4, :cond_c

    const p1, 0x7f060053

    .line 681
    :cond_c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 684
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 658
    :pswitch_9
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080129

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 657
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-ne p1, v4, :cond_d

    const p1, 0x7f060052

    .line 662
    :cond_d
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 665
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :pswitch_a
    if-eqz p2, :cond_e

    .line 641
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080137

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 640
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 644
    :cond_e
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f080136

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 643
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    if-ne p1, v4, :cond_f

    const p1, 0x7f060052

    .line 649
    :cond_f
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v7, :cond_10

    .line 652
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 429
    invoke-static {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;--->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
