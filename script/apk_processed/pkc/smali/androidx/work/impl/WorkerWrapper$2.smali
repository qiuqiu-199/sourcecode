.class synthetic Landroidx/work/impl/WorkerWrapper$2;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$work$Worker$WorkerResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 234
    invoke-static {}, Landroidx/work/Worker$WorkerResult;->values()[Landroidx/work/Worker$WorkerResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/work/impl/WorkerWrapper$2;->$SwitchMap$androidx$work$Worker$WorkerResult:[I

    :try_start_0
    sget-object v0, Landroidx/work/impl/WorkerWrapper$2;->$SwitchMap$androidx$work$Worker$WorkerResult:[I

    sget-object v1, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    invoke-virtual {v1}, Landroidx/work/Worker$WorkerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroidx/work/impl/WorkerWrapper$2;->$SwitchMap$androidx$work$Worker$WorkerResult:[I

    sget-object v1, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    invoke-virtual {v1}, Landroidx/work/Worker$WorkerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroidx/work/impl/WorkerWrapper$2;->$SwitchMap$androidx$work$Worker$WorkerResult:[I

    sget-object v1, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    invoke-virtual {v1}, Landroidx/work/Worker$WorkerResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
