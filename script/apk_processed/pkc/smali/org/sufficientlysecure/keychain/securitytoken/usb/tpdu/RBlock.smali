.class Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;
.source "RBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
    }
.end annotation


# static fields
.field private static final BIT_SEQUENCE:B = 0x4t

.field static final MASK_RBLOCK:B = -0x40t

.field static final MASK_VALUE_RBLOCK:B = -0x80t


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB)V
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

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x4

    or-int/lit8 p0, p0, -0x80

    int-to-byte v3, p0

    const/4 p0, 0x0

    .line 44
    new-array v4, p0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v8

    move v2, v9

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB[BII)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;BB)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 31
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    .line 33
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;->getPcb()B

    move-result v1

    and-int/lit8 v1, v1, -0x40

    const/16 v2, -0x80

    if-eq v1, v2, :cond_0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Data contained incorrect block type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;->getApdu()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v2, "Data in R-block"

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getError()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v1, p0

    .line 48
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;->getPcb()B

    move-result v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->from(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;--->getError()Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
