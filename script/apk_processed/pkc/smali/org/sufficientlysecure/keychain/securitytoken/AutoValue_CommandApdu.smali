.class final Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;
.super Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
.source "AutoValue_CommandApdu.java"


# instance fields
.field private final CLA:I

.field private final INS:I

.field private final data:[B

.field private final ne:I

.field private final p1:I

.field private final p2:I


# direct methods
.method constructor <init>(IIII[BI)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    .line 23
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;-><init>()V

    .line 24
    iput v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->CLA:I

    .line 25
    iput v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->INS:I

    .line 26
    iput p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->v1:I

    .line 27
    iput p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->v2:I

    if-nez p2, :cond_0

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    .line 32
    iput p3, v0, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->ne:I

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;---><init>(IIII[BI)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 84
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    .line 85
    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->CLA:I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getCLA()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->INS:I

    .line 86
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getINS()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->v5:I

    .line 87
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP1()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p2:I

    .line 88
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getP2()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getData()[B

    move-result-object v3

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->ne:I

    .line 90
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->getNe()I

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

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCLA()I
    .locals 4

    move-object/16 v1, p0

    .line 37
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->CLA:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getCLA()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getData()[B
    .locals 4

    move-object/16 v1, p0

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getData()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getINS()I
    .locals 4

    move-object/16 v1, p0

    .line 42
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->INS:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getINS()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNe()I
    .locals 4

    move-object/16 v1, p0

    .line 63
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->ne:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getNe()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getP1()I
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p1:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getP1()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getP2()I
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p2:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->getP2()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 99
    iget v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->CLA:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 101
    iget v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->INS:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 103
    iget v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p1:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 105
    iget v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p2:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 107
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 109
    iget v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->ne:I

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommandApdu{CLA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->CLA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", INS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->INS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", p2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->p2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->data:[B

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ne="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;->ne:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/AutoValue_CommandApdu;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
