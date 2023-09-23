.class public final enum Landroidx/work/Worker$WorkerResult;
.super Ljava/lang/Enum;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/Worker$WorkerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/Worker$WorkerResult;

.field public static final enum FAILURE:Landroidx/work/Worker$WorkerResult;

.field public static final enum RETRY:Landroidx/work/Worker$WorkerResult;

.field public static final enum SUCCESS:Landroidx/work/Worker$WorkerResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Landroidx/work/Worker$WorkerResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/Worker$WorkerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    .line 39
    new-instance v0, Landroidx/work/Worker$WorkerResult;

    const-string v1, "FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/work/Worker$WorkerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    .line 40
    new-instance v0, Landroidx/work/Worker$WorkerResult;

    const-string v1, "RETRY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/work/Worker$WorkerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [Landroidx/work/Worker$WorkerResult;

    sget-object v1, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/work/Worker$WorkerResult;->FAILURE:Landroidx/work/Worker$WorkerResult;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/work/Worker$WorkerResult;->RETRY:Landroidx/work/Worker$WorkerResult;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/work/Worker$WorkerResult;->$VALUES:[Landroidx/work/Worker$WorkerResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/Worker$WorkerResult;
    .locals 1

    .line 37
    const-class v0, Landroidx/work/Worker$WorkerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/Worker$WorkerResult;

    return-object p0
.end method

.method public static values()[Landroidx/work/Worker$WorkerResult;
    .locals 1

    .line 37
    sget-object v0, Landroidx/work/Worker$WorkerResult;->$VALUES:[Landroidx/work/Worker$WorkerResult;

    invoke-virtual {v0}, [Landroidx/work/Worker$WorkerResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/Worker$WorkerResult;

    return-object v0
.end method
