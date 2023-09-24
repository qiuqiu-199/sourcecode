.class public Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OrbotStatusReceiver.java"


# static fields
.field public static final EXTRA_PROXY_PORT_HTTP:Ljava/lang/String; = "org.torproject.android.intent.extra.HTTP_PROXY_PORT"

.field public static final EXTRA_PROXY_PORT_SOCKS:Ljava/lang/String; = "org.torproject.android.intent.extra.SOCKS_PROXY_PORT"

.field private static instance:Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;


# instance fields
.field private proxyPortHttp:I

.field private proxyPortSocks:I

.field private torRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    sput-object v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->instance:Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance()Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;
    .locals 4

    .line 49
    sget-object v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->instance:Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->instance:Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    .line 52
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->instance:Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;--->getInstance()Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getProxyPortHttp(Landroid/content/Context;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 84
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z

    .line 85
    iget v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortHttp:I

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;--->getProxyPortHttp(Landroid/content/Context;)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getProxyPortSocks(Landroid/content/Context;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 89
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z

    .line 90
    iget v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortSocks:I

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;--->getProxyPortSocks(Landroid/content/Context;)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isTorRunning(Landroid/content/Context;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 79
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->requestStartTor(Landroid/content/Context;)Z

    .line 80
    iget-boolean v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->torRunning:Z

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;--->isTorRunning(Landroid/content/Context;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    const-string v4, "org.torproject.android.intent.action.STATUS"

    .line 57
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "org.torproject.android.intent.extra.STATUS"

    .line 58
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "org.torproject.android.intent.extra.STATUS"

    .line 59
    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->torRunning:Z

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receiver: Orbot status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v4, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-boolean v4, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->torRunning:Z

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "org.torproject.android.intent.extra.HTTP_PROXY_PORT"

    .line 65
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v1, -0x1

    if-eqz v5, :cond_0

    const-string v5, "org.torproject.android.intent.extra.HTTP_PROXY_PORT"

    .line 66
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortHttp:I

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver: Orbot Http proxy at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortHttp:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v5, "org.torproject.android.intent.extra.SOCKS_PROXY_PORT"

    .line 70
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "org.torproject.android.intent.extra.SOCKS_PROXY_PORT"

    .line 71
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortSocks:I

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver: Orbot Socks proxy at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;->proxyPortSocks:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotStatusReceiver;--->onReceive(Landroid/content/Context;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
