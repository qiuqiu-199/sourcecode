.class Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;
.source "IBlock.java"


# static fields
.field private static final BIT_CHAINING:B = 0x5t

.field private static final BIT_SEQUENCE:B = 0x6t

.field static final MASK_IBLOCK:B = -0x80t

.field static final MASK_VALUE_IBLOCK:B


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BBZ[BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x6

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p0, p1

    int-to-byte v3, p0

    move-object v0, v7

    move-object v1, v8

    move v2, v9

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 42
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB[BII)V

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BBZ[BII)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 32
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    .line 34
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getPcb()B

    move-result v1

    and-int/lit8 v1, v1, -0x80

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Data contained incorrect block type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getChaining()Z
    .locals 5

    move-object/16 v2, p0

    .line 52
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getPcb()B

    move-result v0

    shr-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;--->getChaining()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSequence()B
    .locals 4

    move-object/16 v1, p0

    .line 48
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;->getPcb()B

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/IBlock;--->getSequence()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
