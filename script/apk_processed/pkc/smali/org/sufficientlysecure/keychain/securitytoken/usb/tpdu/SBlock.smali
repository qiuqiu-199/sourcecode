.class Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;
.source "SBlock.java"


# static fields
.field static final MASK_SBLOCK:B = -0x40t

.field static final MASK_VALUE_SBLOCK:B = -0x40t


# direct methods
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

    .line 29
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/Block;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V

    .line 31
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;->getPcb()B

    move-result v1

    const/16 v2, -0x40

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Data contained incorrect block type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/SBlock;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/BlockChecksumAlgorithm;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
