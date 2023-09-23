.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
.super Ljava/lang/Object;
.source "ResponseApdu.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field private static final APDU_SW_SUCCESS:I = 0x9000


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 6

    move-object/16 v3, p0

    .line 37
    array-length v0, v3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response apdu must be 2 bytes or larger!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v0, 0x0

    .line 40
    array-length v2, v3

    sub-int/2addr v2, v1

    invoke-static {v3, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 41
    array-length v2, v3

    sub-int/2addr v2, v1

    aget-byte v1, v3, v2

    and-int/lit16 v1, v1, 0xff

    .line 42
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 43
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;

    invoke-direct {v2, v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;-><init>([BII)V

    return-object v2

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;--->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getData()[B
.end method

.method public getSw()I
    .locals 5

    move-object/16 v2, p0

    .line 47
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;--->getSw()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getSw1()I
.end method

.method public abstract getSw2()I
.end method

.method public isSuccess()Z
    .locals 5

    move-object/16 v2, p0

    .line 51
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    const v1, 0x9000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;--->isSuccess()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toBytes()[B
    .locals 7

    move-object/16 v4, p0

    .line 55
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v0

    .line 56
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 57
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 60
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;--->toBytes()[B"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
