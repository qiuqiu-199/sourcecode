.class public Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;
.super Ljava/lang/Object;
.source "T1ShortApduProtocol.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;


# instance fields
.field private ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 32
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    .line 33
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->iccPowerOn()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;--->connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 38
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;->ccidTransceiver:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;--->transceive([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
