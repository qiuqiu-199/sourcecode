.class public abstract Landroidx/work/Worker;
.super Ljava/lang/Object;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Worker$WorkerResult;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mExtras:Landroidx/work/impl/Extras;

.field private mId:Ljava/lang/String;

.field private mOutputData:Landroidx/work/Data;

.field private volatile mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/Worker;->mOutputData:Landroidx/work/Data;

    return-void
.end method

.method private internalInit(Landroid/content/Context;Ljava/lang/String;Landroidx/work/impl/Extras;)V
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 159
    iput-object p1, p0, Landroidx/work/Worker;->mAppContext:Landroid/content/Context;

    .line 160
    iput-object p2, p0, Landroidx/work/Worker;->mId:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    return-void
.end method


# virtual methods
.method public abstract doWork()Landroidx/work/Worker$WorkerResult;
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/work/Worker;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExtras()Landroidx/work/impl/Extras;
    .locals 1

    .line 169
    iget-object v0, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/work/Worker;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getInputData()Landroidx/work/Data;
    .locals 1

    .line 58
    iget-object v0, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    invoke-virtual {v0}, Landroidx/work/impl/Extras;->getInputData()Landroidx/work/Data;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputData()Landroidx/work/Data;
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/work/Worker;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    invoke-virtual {v0}, Landroidx/work/impl/Extras;->getTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTriggeredContentAuthorities()[Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    invoke-virtual {v0}, Landroidx/work/impl/Extras;->getRuntimeExtras()Landroidx/work/impl/Extras$RuntimeExtras;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, v0, Landroidx/work/impl/Extras$RuntimeExtras;->triggeredContentAuthorities:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getTriggeredContentUris()[Landroid/net/Uri;
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/work/Worker;->mExtras:Landroidx/work/impl/Extras;

    invoke-virtual {v0}, Landroidx/work/impl/Extras;->getRuntimeExtras()Landroidx/work/impl/Extras$RuntimeExtras;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, v0, Landroidx/work/impl/Extras$RuntimeExtras;->triggeredContentUris:[Landroid/net/Uri;

    :goto_0
    return-object v0
.end method

.method public final isStopped()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Landroidx/work/Worker;->mStopped:Z

    return v0
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

.method public final setOutputData(Landroidx/work/Data;)V
    .locals 0

    .line 114
    iput-object p1, p0, Landroidx/work/Worker;->mOutputData:Landroidx/work/Data;

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Landroidx/work/Worker;->mStopped:Z

    .line 139
    invoke-virtual {p0}, Landroidx/work/Worker;->onStopped()V

    return-void
.end method
