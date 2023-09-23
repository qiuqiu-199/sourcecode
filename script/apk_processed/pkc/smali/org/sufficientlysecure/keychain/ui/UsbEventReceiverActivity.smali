.class public Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;
.super Landroid/app/Activity;
.source "UsbEventReceiverActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onResume()V
    .locals 6

    move-object/16 v3, p0

    .line 33
    invoke-super {v3}, Landroid/app/Activity;->onResume()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;--->onResume()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 37
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "device"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 39
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->requestPermissionForUsbDevice(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;)V

    .line 43
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/UsbEventReceiverActivity;->finish()V

    return-void
.end method
