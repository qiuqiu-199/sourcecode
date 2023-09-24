.class public Landroidx/work/impl/WorkerWrapper$Builder;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mListener:Landroidx/work/impl/ExecutionListener;

.field private mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

.field private mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field private mWorkSpecId:Ljava/lang/String;

.field private mWorker:Landroidx/work/Worker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    .line 443
    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 444
    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpecId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/WorkerWrapper$Builder;)Landroid/content/Context;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/lang/String;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpecId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/ExecutionListener;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mListener:Landroidx/work/impl/ExecutionListener;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/util/List;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/Extras$RuntimeExtras;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/Worker;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorker:Landroidx/work/Worker;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/work/impl/WorkerWrapper$Builder;)Landroidx/work/impl/WorkDatabase;
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/work/impl/WorkerWrapper;
    .locals 2

    .line 490
    new-instance v0, Landroidx/work/impl/WorkerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkerWrapper;-><init>(Landroidx/work/impl/WorkerWrapper$Builder;Landroidx/work/impl/WorkerWrapper$1;)V

    return-object v0
.end method

.method public withListener(Landroidx/work/impl/ExecutionListener;)Landroidx/work/impl/WorkerWrapper$Builder;
    .locals 0

    .line 453
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mListener:Landroidx/work/impl/ExecutionListener;

    return-object p0
.end method

.method public withRuntimeExtras(Landroidx/work/impl/Extras$RuntimeExtras;)Landroidx/work/impl/WorkerWrapper$Builder;
    .locals 0

    .line 471
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/work/impl/Extras$RuntimeExtras;

    return-object p0
.end method

.method public withSchedulers(Ljava/util/List;)Landroidx/work/impl/WorkerWrapper$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;)",
            "Landroidx/work/impl/WorkerWrapper$Builder;"
        }
    .end annotation

    .line 462
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    return-object p0
.end method
