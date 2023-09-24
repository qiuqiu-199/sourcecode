.class public Landroidx/work/impl/workers/CombineContinuationsWorker;
.super Landroidx/work/Worker;
.source "CombineContinuationsWorker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/work/Worker;-><init>()V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/Worker$WorkerResult;
    .locals 1

    .line 33
    invoke-virtual {p0}, Landroidx/work/impl/workers/CombineContinuationsWorker;->getInputData()Landroidx/work/Data;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/work/impl/workers/CombineContinuationsWorker;->setOutputData(Landroidx/work/Data;)V

    .line 34
    sget-object v0, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    return-object v0
.end method
