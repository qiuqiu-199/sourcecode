.class public Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;
.super Ljava/lang/Object;
.source "UsbConnectionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "org.sufficientlysecure.keychain.ui.USB_PERMISSION"


# instance fields
.field private context:Landroid/content/Context;

.field private onDiscoveredUsbDeviceListener:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;

.field private final usbBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 41
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->context:Landroid/content/Context;

    .line 43
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->onDiscoveredUsbDeviceListener:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;

    const-string v3, "usb"

    .line 44
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbManager:Landroid/hardware/usb/UsbManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->sendUsbTransportDiscovered(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public static requestPermissionForUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const-string v0, "usb"

    .line 119
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.sufficientlysecure.keychain.ui.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "org.sufficientlysecure.keychain"

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 126
    invoke-static {v4, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting permission for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v0, v5, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;--->requestPermissionForUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendUsbTransportDiscovered(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->onDiscoveredUsbDeviceListener:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->createUsbTransport(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;

    move-result-object v2

    .line 111
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->onDiscoveredUsbDeviceListener:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$OnDiscoveredUsbDeviceListener;->usbTransportDiscovered(Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;--->sendUsbTransportDiscovered(Landroid/hardware/usb/UsbDevice;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .locals 6

    move-object/16 v3, p0

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "org.sufficientlysecure.keychain.ui.USB_PERMISSION"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->context:Landroid/content/Context;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;--->onStart()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStop()V
    .locals 5

    move-object/16 v2, p0

    .line 77
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->context:Landroid/content/Context;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;--->onStop()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public rescanDevices()V
    .locals 10

    move-object/16 v7, p0

    .line 87
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    const-string v2, "Device: %s"

    const/4 v3, 0x1

    .line 88
    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Got permission!"

    .line 90
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {v7, v1}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->sendUsbTransportDiscovered(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    const/4 v5, 0x0

    .line 94
    invoke-static {v2, v4, v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransport;->getTokenTypeFromUsbDeviceInfo(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "Token type: %s"

    .line 97
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    invoke-static {v0, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->requestPermissionForUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    :cond_1
    const-string v1, "Unknown device type, doing nothing\u2026"

    .line 101
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;--->rescanDevices()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
