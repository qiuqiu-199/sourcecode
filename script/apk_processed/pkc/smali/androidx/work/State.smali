.class public final enum Landroidx/work/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/State;

.field public static final enum BLOCKED:Landroidx/work/State;

.field public static final enum CANCELLED:Landroidx/work/State;

.field public static final enum ENQUEUED:Landroidx/work/State;

.field public static final enum FAILED:Landroidx/work/State;

.field public static final enum RUNNING:Landroidx/work/State;

.field public static final enum SUCCEEDED:Landroidx/work/State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Landroidx/work/State;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    .line 32
    new-instance v0, Landroidx/work/State;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    .line 37
    new-instance v0, Landroidx/work/State;

    const-string v1, "SUCCEEDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    .line 42
    new-instance v0, Landroidx/work/State;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->FAILED:Landroidx/work/State;

    .line 48
    new-instance v0, Landroidx/work/State;

    const-string v1, "BLOCKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->BLOCKED:Landroidx/work/State;

    .line 53
    new-instance v0, Landroidx/work/State;

    const-string v1, "CANCELLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/work/State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    const/4 v0, 0x6

    .line 22
    new-array v0, v0, [Landroidx/work/State;

    sget-object v1, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/work/State;->FAILED:Landroidx/work/State;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/work/State;->BLOCKED:Landroidx/work/State;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/work/State;->$VALUES:[Landroidx/work/State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/State;
    .locals 1

    .line 22
    const-class v0, Landroidx/work/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/State;

    return-object p0
.end method

.method public static values()[Landroidx/work/State;
    .locals 1

    .line 22
    sget-object v0, Landroidx/work/State;->$VALUES:[Landroidx/work/State;

    invoke-virtual {v0}, [Landroidx/work/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/State;

    return-object v0
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 61
    sget-object v0, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/State;->FAILED:Landroidx/work/State;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
