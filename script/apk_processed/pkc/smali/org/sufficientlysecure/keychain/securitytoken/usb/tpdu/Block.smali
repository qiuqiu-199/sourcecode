.class Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;
.super Ljava/lang/Object;
.source "Block.java"


# static fields
.field private static final MAX_PAYLOAD_LEN:I = 0xfe

.field private static final OFFSET_DATA:I = 0x3

.field private static final OFFSET_LEN:I = 0x2

.field private static final OFFSET_NAD:I = 0x0

.field static final OFFSET_PCB:I = 0x1


# instance fields
.field private final blockData:[B

.field private final checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB[BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 68
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    const/16 v4, 0xfe

    if-le p3, v4, :cond_0

    .line 71
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Payload too long! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    add-int/lit8 v4, p3, 0x3

    .line 75
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->getLength()I

    move-result v0

    add-int v1, v4, v0

    .line 77
    new-array v1, v1, [B

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    .line 78
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 v2, 0x0

    aput-byte v5, v1, v2

    .line 79
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 v1, 0x1

    aput-byte p0, v5, v1

    .line 80
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 p0, 0x2

    int-to-byte v1, p3

    aput-byte v1, v5, p0

    .line 81
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 p0, 0x3

    invoke-static {p1, p2, v5, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    iget-object p0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    invoke-virtual {v5, p0, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->computeChecksum([BII)[B

    move-result-object v5

    .line 84
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    invoke-static {v5, v2, p0, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB[BII)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 34
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    .line 36
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    .line 38
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    array-length v0, v0

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->getLength()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v3, v4, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->computeChecksum([BII)[B

    move-result-object v3

    .line 40
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->getEdc()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v4, "TPDU CRC doesn\'t match"

    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getApdu()[B
    .locals 6

    move-object/16 v3, p0

    .line 108
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    array-length v1, v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->getLength()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getApdu()[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getChecksumType()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;
    .locals 4

    move-object/16 v1, p0

    .line 104
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getChecksumType()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEdc()[B
    .locals 6

    move-object/16 v3, p0

    .line 100
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    array-length v1, v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;->getLength()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getEdc()[B"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLen()B
    .locals 5

    move-object/16 v2, p0

    .line 96
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getLen()B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNad()B
    .locals 5

    move-object/16 v2, p0

    .line 88
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getNad()B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPcb()B
    .locals 5

    move-object/16 v2, p0

    .line 92
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getPcb()B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRawData()[B
    .locals 4

    move-object/16 v1, p0

    .line 112
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->getRawData()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 117
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;->blockData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;--->toString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
