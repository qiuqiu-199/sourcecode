.class public interface abstract Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;
.super Ljava/lang/Object;
.source "CcidTransportProtocol.java"


# virtual methods
.method public abstract connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation
.end method

.method public abstract transceive([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation
.end method
