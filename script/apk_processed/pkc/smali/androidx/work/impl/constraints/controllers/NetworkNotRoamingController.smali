.class public Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "NetworkNotRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/controllers/ConstraintController<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V
    .locals 0

    .line 38
    invoke-static {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getInstance(Landroid/content/Context;)Landroidx/work/impl/constraints/trackers/Trackers;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Landroidx/work/impl/constraints/trackers/NetworkStateTracker;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    return-void
.end method


# virtual methods
.method hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1

    .line 43
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->NOT_ROAMING:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 3

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    const-string v0, "NetworkNotRoamingCtrlr"

    const-string v2, "Not-roaming network constraint is not supported before API 24, only checking for connected state."

    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isNotRoaming()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
