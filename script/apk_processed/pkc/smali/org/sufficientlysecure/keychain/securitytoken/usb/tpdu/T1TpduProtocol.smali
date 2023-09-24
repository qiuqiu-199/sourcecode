.class public Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;
.super Ljava/lang/Object;
.source "T1TpduProtocol.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;


# static fields
.field private static final MAX_FRAME_LEN:I = 0xfe

.field private static final PPS_PCK:B = -0x2t

.field private static final PPS_PPPSS:B = -0x1t

.field private static final PPS_PPS0_T1:B = 0x1t


# instance fields
.field private blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

.field private ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

.field private sequenceCounter:B


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->sequenceCounter:B

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private performPpsExchange()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    const/4 v0, 0x3

    .line 65
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 67
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "Protocol and parameters (PPS) negotiation failed!"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void

    :array_0
    .array-data 1
        -0x1t
        0x1t
        -0x2t
    .end array-data

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;--->performPpsExchange()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private receiveChainedResponse(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 119
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getApdu()[B

    move-result-object v0

    .line 121
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getChaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getSequence()B

    move-result v3

    .line 124
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->createAckRBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;

    move-result-object v3

    .line 125
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->getRawData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v3

    .line 126
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;

    move-result-object v3

    .line 128
    instance-of v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response block received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "Response: invalid state - invalid block received"

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_0
    move-object v1, v3

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    .line 134
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->getApdu()[B

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    move-object v3, v1

    goto :goto_0

    :cond_1
    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;--->receiveChainedResponse(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;)[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendChainedData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 89
    :cond_0
    :goto_0
    array-length v1, v10

    if-ge v7, v1, :cond_5

    add-int/lit16 v1, v7, 0xfe

    .line 90
    array-length v2, v10

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 91
    :goto_1
    array-length v1, v10

    sub-int/2addr v1, v7

    const/16 v2, 0xfe

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 93
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    iget-byte v2, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->sequenceCounter:B

    add-int/lit8 v4, v2, 0x1

    int-to-byte v4, v4

    iput-byte v4, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->sequenceCounter:B

    move-object v4, v10

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->newIBlock(BZ[BII)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    move-result-object v1

    .line 94
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->getRawData()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v1

    .line 95
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;

    move-result-object v1

    add-int/2addr v7, v8

    .line 99
    instance-of v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S-Block received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_2
    instance-of v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;

    if-eqz v2, :cond_3

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "R-Block received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;->getError()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    move-result-object v2

    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->NO_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    if-eq v2, v3, :cond_0

    .line 105
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R-Block reports error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;->getError()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 108
    :cond_3
    array-length v10, v10

    if-eq v7, v10, :cond_4

    .line 109
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "T1 frame response underflow"

    invoke-direct {v10, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 111
    :cond_4
    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    return-object v1

    .line 115
    :cond_5
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "Invalid tpdu sequence state"

    invoke-direct {v10, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v10

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;--->sendChainedData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 47
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    if-eqz v0, :cond_0

    .line 48
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v0, "Protocol already connected!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_0
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    .line 52
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->iccPowerOn()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->LRC:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->blockFactory:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;

    .line 57
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->hasAutomaticPps()Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->performPpsExchange()V

    :cond_1
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;--->connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public transceive([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 75
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    if-nez v0, :cond_0

    .line 76
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "Protocol not connected!"

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_0
    array-length v0, v2

    if-nez v0, :cond_1

    .line 80
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "Cant transcive zero-length apdu(tpdu)"

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_1
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->sendChainedData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;->receiveChainedResponse(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;)[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;--->transceive([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
