.class public Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

.field private mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

.field private mWorkSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/impl/Extras$RuntimeExtras;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 43
    iput-object p2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    iget-object v2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/Processor;->startWork(Ljava/lang/String;Landroidx/work/impl/Extras$RuntimeExtras;)Z

    return-void
.end method
