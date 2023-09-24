.class Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
.source "UsbTransportException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UsbCcidErrorException"
.end annotation


# instance fields
.field private errorResponse:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;->errorResponse:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;---><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getErrorResponse()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 4

    move-object/16 v1, p0

    .line 47
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;->errorResponse:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;--->getErrorResponse()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
