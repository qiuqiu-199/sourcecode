.class public final enum Ledu/cmu/cylab/starslinger/exchange/CommType;
.super Ljava/lang/Enum;
.source "CommType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ledu/cmu/cylab/starslinger/exchange/CommType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ledu/cmu/cylab/starslinger/exchange/CommType;

.field public static final enum BATCH:Ledu/cmu/cylab/starslinger/exchange/CommType;

.field public static final enum DIRECT:Ledu/cmu/cylab/starslinger/exchange/CommType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/CommType;

    const-string v1, "BATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledu/cmu/cylab/starslinger/exchange/CommType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/CommType;->BATCH:Ledu/cmu/cylab/starslinger/exchange/CommType;

    .line 22
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/CommType;

    const-string v1, "DIRECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ledu/cmu/cylab/starslinger/exchange/CommType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/CommType;->DIRECT:Ledu/cmu/cylab/starslinger/exchange/CommType;

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [Ledu/cmu/cylab/starslinger/exchange/CommType;

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/CommType;->BATCH:Ledu/cmu/cylab/starslinger/exchange/CommType;

    aput-object v1, v0, v2

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/CommType;->DIRECT:Ledu/cmu/cylab/starslinger/exchange/CommType;

    aput-object v1, v0, v3

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/CommType;->$VALUES:[Ledu/cmu/cylab/starslinger/exchange/CommType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ledu/cmu/cylab/starslinger/exchange/CommType;
    .locals 1

    .line 4
    const-class v0, Ledu/cmu/cylab/starslinger/exchange/CommType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ledu/cmu/cylab/starslinger/exchange/CommType;

    return-object p0
.end method

.method public static values()[Ledu/cmu/cylab/starslinger/exchange/CommType;
    .locals 1

    .line 4
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/CommType;->$VALUES:[Ledu/cmu/cylab/starslinger/exchange/CommType;

    invoke-virtual {v0}, [Ledu/cmu/cylab/starslinger/exchange/CommType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ledu/cmu/cylab/starslinger/exchange/CommType;

    return-object v0
.end method
