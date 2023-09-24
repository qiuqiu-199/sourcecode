.class Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbConnectionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;->this$0:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 50
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x2134ab86

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "org.sufficientlysecure.keychain.ui.USB_PERMISSION"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "device"

    .line 57
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const-string v0, "permission"

    .line 58
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got permission for "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;->this$0:Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;

    invoke-static {v6, v5}, Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;->access$000(Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher;Landroid/hardware/usb/UsbDevice;)V

    :cond_4
    :goto_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/UsbConnectionDispatcher$1;--->onReceive(Landroid/content/Context;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
