.class final Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
.source "AutoValue_CcidTransceiver_CcidDataBlock.java"


# instance fields
.field private final chainParameter:B

.field private final data:[B

.field private final dataLength:I

.field private final error:B

.field private final seq:B

.field private final slot:B

.field private final status:B


# direct methods
.method constructor <init>(IBBBBB[B)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-object/16 p4, p7

    .line 26
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;-><init>()V

    .line 27
    iput v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->dataLength:I

    .line 28
    iput-byte v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->slot:B

    .line 29
    iput-byte p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->seq:B

    .line 30
    iput-byte p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->status:B

    .line 31
    iput-byte p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->error:B

    .line 32
    iput-byte p3, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->chainParameter:B

    .line 33
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;---><init>(IBBBBB[B)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 92
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    .line 93
    iget v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->dataLength:I

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getDataLength()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->slot:B

    .line 94
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getSlot()B

    move-result v3

    if-ne v1, v3, :cond_2

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->seq:B

    .line 95
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getSeq()B

    move-result v3

    if-ne v1, v3, :cond_2

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->status:B

    .line 96
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getStatus()B

    move-result v3

    if-ne v1, v3, :cond_2

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->error:B

    .line 97
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getError()B

    move-result v3

    if-ne v1, v3, :cond_2

    iget-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->chainParameter:B

    .line 98
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getChainParameter()B

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;

    if-eqz v3, :cond_1

    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v5

    :goto_0
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChainParameter()B
    .locals 4

    move-object/16 v1, p0

    .line 63
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->chainParameter:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getChainParameter()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getData()[B
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getData()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDataLength()I
    .locals 4

    move-object/16 v1, p0

    .line 38
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->dataLength:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getDataLength()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getError()B
    .locals 4

    move-object/16 v1, p0

    .line 58
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->error:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getError()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSeq()B
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->seq:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getSeq()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSlot()B
    .locals 4

    move-object/16 v1, p0

    .line 43
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->slot:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getSlot()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getStatus()B
    .locals 4

    move-object/16 v1, p0

    .line 53
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->status:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->getStatus()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 108
    iget v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->dataLength:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 110
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->slot:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 112
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->seq:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 114
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->status:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 116
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->error:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 118
    iget-byte v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->chainParameter:B

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 120
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CcidDataBlock{dataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->slot:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->seq:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->status:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->error:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chainParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->chainParameter:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;->data:[B

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
