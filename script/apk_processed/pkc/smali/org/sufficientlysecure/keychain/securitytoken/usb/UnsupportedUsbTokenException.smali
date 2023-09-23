.class public Lorg/sufficientlysecure/keychain/securitytoken/usb/UnsupportedUsbTokenException;
.super Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
.source "UnsupportedUsbTokenException.java"


# direct methods
.method constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    const-string v0, "This USB token is not supported!"

    .line 23
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UnsupportedUsbTokenException;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
