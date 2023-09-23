.class Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;

.field private final mVersions:[J


# virtual methods
.method checkForInvalidation([J)V
    .locals 8

    .line 470
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 472
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v3, v3, v2

    .line 473
    aget-wide v3, p1, v3

    .line 474
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aget-wide v6, v5, v2

    cmp-long v5, v6, v3

    if-gez v5, :cond_2

    .line 476
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aput-wide v3, v5, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 479
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 482
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    .line 484
    :cond_1
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 489
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {p1, v1}, Landroid/arch/persistence/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
