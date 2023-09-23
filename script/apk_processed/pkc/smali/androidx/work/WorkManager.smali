.class public abstract Landroidx/work/WorkManager;
.super Ljava/lang/Object;
.source "WorkManager.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/work/WorkManager;
    .locals 1

    .line 126
    invoke-static {}, Landroidx/work/impl/WorkManagerImpl;->getInstance()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Landroidx/work/Configuration;)V
    .locals 0

    .line 139
    invoke-static {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->initialize(Landroid/content/Context;Landroidx/work/Configuration;)V

    return-void
.end method


# virtual methods
.method public abstract enqueue(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method public final varargs enqueue([Landroidx/work/WorkRequest;)V
    .locals 0

    .line 148
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->enqueue(Ljava/util/List;)V

    return-void
.end method

.method public abstract synchronous()Landroidx/work/SynchronousWorkManager;
.end method
