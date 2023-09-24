.class final Landroidx/work/impl/utils/CancelWorkRunnable$3;
.super Landroidx/work/impl/utils/CancelWorkRunnable;
.source "CancelWorkRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 147
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 148
    iget-object v2, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->getUnfinishedWorkWithName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    iget-object v3, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v3, v2}, Landroidx/work/impl/utils/CancelWorkRunnable$3;->cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 156
    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable$3;->val$workManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/CancelWorkRunnable$3;->reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V

    return-void

    :catchall_0
    move-exception v1

    .line 154
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    throw v1
.end method
