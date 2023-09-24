.class public Landroidx/work/impl/constraints/WorkConstraintsTracker;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.java"

# interfaces
.implements Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;


# instance fields
.field private final mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

.field private final mConstraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/constraints/WorkConstraintsCallback;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    iput-object p2, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    const/4 p2, 0x7

    .line 59
    new-array p2, p2, [Landroidx/work/impl/constraints/controllers/ConstraintController;

    new-instance v0, Landroidx/work/impl/constraints/controllers/BatteryChargingController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/BatteryChargingController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/BatteryNotLowController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x1

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/StorageNotLowController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/StorageNotLowController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x2

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/NetworkConnectedController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x3

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/NetworkUnmeteredController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x4

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/NetworkNotRoamingController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 v1, 0x5

    aput-object v0, p2, v1

    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;-><init>(Landroid/content/Context;Landroidx/work/impl/constraints/controllers/ConstraintController$OnConstraintUpdatedCallback;)V

    const/4 p1, 0x6

    aput-object v0, p2, p1

    iput-object p2, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mConstraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    return-void
.end method


# virtual methods
.method public areAllConstraintsMet(Ljava/lang/String;)Z
    .locals 7

    .line 107
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mConstraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 108
    invoke-virtual {v5, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->isWorkSpecConstrained(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "WorkConstraintsTracker"

    const-string v1, "Work %s constrained by %s"

    const/4 v3, 0x2

    .line 109
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 110
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 109
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public onConstraintMet(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WorkConstraintsTracker"

    const-string v3, "Constraints met for %s"

    const/4 v4, 0x1

    .line 122
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    invoke-interface {p1, v0}, Landroidx/work/impl/constraints/WorkConstraintsCallback;->onAllConstraintsMet(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public onConstraintNotMet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mCallback:Landroidx/work/impl/constraints/WorkConstraintsCallback;

    invoke-interface {v0, p1}, Landroidx/work/impl/constraints/WorkConstraintsCallback;->onAllConstraintsNotMet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mConstraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 86
    invoke-virtual {v3, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;->replace(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 94
    iget-object v0, p0, Landroidx/work/impl/constraints/WorkConstraintsTracker;->mConstraintControllers:[Landroidx/work/impl/constraints/controllers/ConstraintController;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 95
    invoke-virtual {v3}, Landroidx/work/impl/constraints/controllers/ConstraintController;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
