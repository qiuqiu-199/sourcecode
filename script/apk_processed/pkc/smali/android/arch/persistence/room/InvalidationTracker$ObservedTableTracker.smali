.class Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 562
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 563
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 564
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 565
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .locals 9

    .line 612
    monitor-enter p0

    .line 613
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    .line 618
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 619
    :goto_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v5, v5, v2

    if-eq v4, v5, :cond_3

    .line 620
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v5, v2

    goto :goto_3

    .line 622
    :cond_3
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    aput v1, v3, v2

    .line 624
    :goto_3
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    :cond_4
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 627
    iput-boolean v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 628
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_4
    const/4 v0, 0x0

    .line 614
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 629
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onSyncCompleted()V
    .locals 1

    .line 637
    monitor-enter p0

    const/4 v0, 0x0

    .line 638
    :try_start_0
    iput-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
