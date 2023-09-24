.class public Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;
.super Ljava/lang/Object;
.source "UsbTransport.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/securitytoken/Transport;


# static fields
.field private static final PRODUCT_NITROKEY_PRO:I = 0x4108

.field private static final PRODUCT_NITROKEY_START:I = 0x4211

.field private static final PRODUCT_NITROKEY_STORAGE:I = 0x4109

.field private static final PRODUCT_YUBIKEY_4_CCID:I = 0x404

.field private static final PRODUCT_YUBIKEY_4_OTP_CCID:I = 0x405

.field private static final PRODUCT_YUBIKEY_4_OTP_U2F_CCID:I = 0x407

.field private static final PRODUCT_YUBIKEY_4_U2F_CCID:I = 0x406

.field private static final PRODUCT_YUBIKEY_NEO_CCID:I = 0x112

.field private static final PRODUCT_YUBIKEY_NEO_OTP_CCID:I = 0x111

.field private static final PRODUCT_YUBIKEY_NEO_OTP_U2F_CCID:I = 0x116

.field private static final PRODUCT_YUBIKEY_NEO_U2F_CCID:I = 0x115

.field private static final VENDOR_FSIJ:I = 0x234b

.field private static final VENDOR_LEDGER:I = 0x2c97

.field private static final VENDOR_NITROKEY:I = 0x20a0

.field private static final VENDOR_YUBICO:I = 0x1050


# instance fields
.field private allowUntestedUsbTokens:Z

.field private ccidTransportProtocol:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;

.field private usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;

.field private usbInterface:Landroid/hardware/usb/UsbInterface;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 88
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 90
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 91
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->allowUntestedUsbTokens:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;---><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createUsbTransport(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "usb"

    .line 82
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 83
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getExperimentalUsbAllowUntested()Z

    move-result v2

    .line 85
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;

    invoke-direct {v1, v3, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbManager;Z)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->createUsbTransport(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getIoEndpoints(Landroid/hardware/usb/UsbInterface;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbInterface;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/hardware/usb/UsbEndpoint;",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation

    move-object/16 v6, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 289
    :goto_0
    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 290
    invoke-virtual {v6, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_3
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->getIoEndpoints(Landroid/hardware/usb/UsbInterface;)Landroid/util/Pair;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getSmartCardInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x0

    .line 271
    :goto_0
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 272
    invoke-virtual {v4, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->getSmartCardInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getTokenTypeFromUsbDeviceInfo(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 6

    move/16 v3, p0

    move/16 v4, p1

    move-object/16 v5, p2

    const/16 v0, 0x1050

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v3, v0, :cond_8

    const/16 v0, 0x20a0

    if-eq v3, v0, :cond_4

    const/16 v0, 0x234b

    if-eq v3, v0, :cond_1

    const/16 v5, 0x2c97

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 255
    :cond_0
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->LEDGER_NANO_S:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v3

    .line 249
    :cond_1
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->parseGnukVersionString(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "1.2.5"

    .line 251
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->create(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->compareTo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;)I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 252
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    goto :goto_0

    :cond_3
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    :goto_0
    return-object v3

    :cond_4
    const/16 v0, 0x4211

    if-eq v4, v0, :cond_5

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 244
    :pswitch_0
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v3

    .line 237
    :pswitch_1
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v3

    .line 239
    :cond_5
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->parseGnukVersionString(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string v4, "1.2.5"

    .line 241
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->create(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;->compareTo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$Version;)I

    move-result v3

    if-gtz v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_7

    .line 242
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    goto :goto_1

    :cond_7
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    :goto_1
    return-object v3

    :cond_8
    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 230
    :sswitch_0
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v3

    .line 225
    :sswitch_1
    sget-object v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v3

    :goto_2
    const-string v5, "Unknown USB token. Vendor ID: %s, Product ID: %s"

    const/4 v0, 0x2

    .line 259
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v5, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x4108
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x111 -> :sswitch_1
        0x112 -> :sswitch_1
        0x115 -> :sswitch_1
        0x116 -> :sswitch_1
        0x404 -> :sswitch_0
        0x405 -> :sswitch_0
        0x406 -> :sswitch_0
        0x407 -> :sswitch_0
    .end sparse-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->getTokenTypeFromUsbDeviceInfo(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 132
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->getSmartCardInterface(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbInterface:Landroid/hardware/usb/UsbInterface;

    .line 133
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbInterface:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "USB error: CCID mode must be enabled (no class 11 interface)"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->getIoEndpoints(Landroid/hardware/usb/UsbInterface;)Landroid/util/Pair;

    move-result-object v0

    .line 138
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/usb/UsbEndpoint;

    .line 139
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/usb/UsbEndpoint;

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 145
    :cond_1
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 146
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_2

    .line 147
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "USB error: failed to connect to device"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->SUPPORTED_USB_TOKENS:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 151
    iget-boolean v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->allowUntestedUsbTokens:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 152
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 154
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UnsupportedUsbTokenException;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UnsupportedUsbTokenException;-><init>()V

    throw v0

    .line 157
    :cond_3
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbInterface:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 158
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "USB error: failed to claim interface"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_4
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->fromRawDescriptors([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CCID Description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v3, v4, v1, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;-><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;)V

    .line 165
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getSuitableTransportProtocol()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->ccidTransportProtocol:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;

    .line 166
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->ccidTransportProtocol:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;->connect(Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;)V

    return-void

    .line 142
    :cond_5
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "USB error: invalid class 11 interface"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->connect()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v4, v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v5, :cond_4

    .line 193
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    check-cast v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;

    .line 197
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_2

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 6

    move-object/16 v3, p0

    .line 213
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->getTokenTypeFromUsbDeviceInfo(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
    .locals 4

    move-object/16 v1, p0

    .line 207
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;->USB:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 202
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isConnected()Z
    .locals 5

    move-object/16 v2, p0

    .line 112
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 113
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getSerial()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->isConnected()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPersistentConnectionAllowed()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->isPersistentConnectionAllowed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public release()V
    .locals 5

    move-object/16 v2, p0

    .line 96
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 98
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    :cond_0
    const-string v0, "Usb transport disconnected"

    const/4 v1, 0x0

    .line 102
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->release()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 177
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;->toBytes()[B

    move-result-object v2

    .line 182
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->ccidTransportProtocol:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;->transceive([B)[B

    move-result-object v2

    .line 187
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;--->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
