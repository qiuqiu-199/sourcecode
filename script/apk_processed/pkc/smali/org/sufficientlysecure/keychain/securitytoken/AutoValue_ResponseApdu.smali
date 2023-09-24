.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;
.super Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
.source "AutoValue_ResponseApdu.java"


# instance fields
.field private final data:[B

.field private final sw1:I

.field private final sw2:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 17
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;-><init>()V

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    .line 22
    iput v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw1:I

    .line 23
    iput p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw2:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;---><init>([BII)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 57
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    .line 58
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw1:I

    .line 59
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw2:I

    .line 60
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v5

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getData()[B
    .locals 4

    move-object/16 v1, p0

    .line 29
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->getData()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSw1()I
    .locals 4

    move-object/16 v1, p0

    .line 34
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw1:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->getSw1()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSw2()I
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw2:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->getSw2()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 69
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 71
    iget v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw1:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 73
    iget v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw2:I

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResponseApdu{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->data:[B

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sw1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sw2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;->sw2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_ResponseApdu;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
