.class Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;
.super Ljava/lang/Object;
.source "T1TpduBlockFactory.java"


# instance fields
.field private checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method createAckRBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v3, p0

    move/16 v4, p1

    .line 51
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;--->createAckRBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    const/4 v0, 0x1

    .line 32
    aget-byte v0, v3, v0

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    return-object v0

    :cond_0
    const/16 v1, -0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    return-object v0

    :cond_1
    const/16 v1, -0x80

    if-ne v0, v1, :cond_2

    .line 39
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    return-object v0

    .line 42
    :cond_2
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "TPDU Unknown block type"

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;--->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method newIBlock(BZ[BII)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v9, p0

    move/16 v10, p1

    move/16 v11, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 47
    new-instance v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;

    iget-object v1, v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;->checksumType:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;

    const/4 v2, 0x0

    move-object v0, v8

    move v3, v10

    move v4, v11

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BBZ[BII)V

    return-object v8

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduBlockFactory;--->newIBlock(BZ[BII)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
