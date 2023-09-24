.class Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/trackers/NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;


# direct methods
.method private constructor <init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)V
    .locals 0

    .line 127
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;Landroidx/work/impl/constraints/trackers/NetworkStateTracker$1;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;-><init>(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const-string p1, "NetworkStateTracker"

    const-string v0, "Network capabilities changed: %s"

    const/4 v1, 0x1

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    iget-object p2, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-static {p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->access$200(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    const-string p1, "NetworkStateTracker"

    const-string v0, "Network connection lost"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-static {v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->access$200(Landroidx/work/impl/constraints/trackers/NetworkStateTracker;)Landroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    return-void
.end method
