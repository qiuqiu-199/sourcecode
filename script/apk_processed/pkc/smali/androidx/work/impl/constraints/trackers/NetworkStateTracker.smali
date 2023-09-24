.class public Landroidx/work/impl/constraints/trackers/NetworkStateTracker;
.super Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;,
        Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-direct {p1, p0, v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;Landroidx/work/impl/constraints/trackers/NetworkStateTracker$1;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-direct {p1, p0, v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;Landroidx/work/impl/constraints/trackers/NetworkStateTracker$1;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    :goto_0
    return-void
.end method

.method static synthetic access$200(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)Landroidx/work/impl/constraints/NetworkState;
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method private getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;
    .locals 6

    .line 108
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 110
    :goto_0
    invoke-direct {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isActiveNetworkValidated()Z

    move-result v4

    .line 111
    iget-object v5, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v5}, Landroid/support/v4/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 113
    :cond_1
    new-instance v0, Landroidx/work/impl/constraints/NetworkState;

    invoke-direct {v0, v3, v4, v5, v1}, Landroidx/work/impl/constraints/NetworkState;-><init>(ZZZZ)V

    return-object v0
.end method

.method private isActiveNetworkValidated()Z
    .locals 3

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 121
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    .line 123
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isNetworkCallbackSupported()Z
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getInitialState()Landroidx/work/impl/constraints/NetworkState;
    .locals 1

    .line 75
    invoke-direct {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->getInitialState()Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public startTracking()V
    .locals 4

    .line 80
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    const-string v1, "Registering network callback"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "NetworkStateTracker"

    const-string v1, "Registering broadcast receiver"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 92
    invoke-static {}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkStateTracker"

    const-string v1, "Unregistering network callback"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "NetworkStateTracker"

    const-string v1, "Unregistering broadcast receiver"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method
