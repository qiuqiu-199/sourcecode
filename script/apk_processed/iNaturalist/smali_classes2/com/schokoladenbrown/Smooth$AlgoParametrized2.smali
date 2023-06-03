.class public final enum Lcom/schokoladenbrown/Smooth$AlgoParametrized2;
.super Ljava/lang/Enum;
.source "Smooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/schokoladenbrown/Smooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlgoParametrized2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/schokoladenbrown/Smooth$AlgoParametrized2;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

.field public static final enum BICUBIC:Lcom/schokoladenbrown/Smooth$AlgoParametrized2;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    const-string v1, "BICUBIC"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->BICUBIC:Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    sget-object v1, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->BICUBIC:Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    aput-object v1, v0, v2

    sput-object v0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->$VALUES:[Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->flag:I

    return-void
.end method

.method static synthetic access$200(Lcom/schokoladenbrown/Smooth$AlgoParametrized2;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->flag:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/schokoladenbrown/Smooth$AlgoParametrized2;
    .locals 1

    .line 31
    const-class v0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    return-object p0
.end method

.method public static values()[Lcom/schokoladenbrown/Smooth$AlgoParametrized2;
    .locals 1

    .line 31
    sget-object v0, Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->$VALUES:[Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    invoke-virtual {v0}, [Lcom/schokoladenbrown/Smooth$AlgoParametrized2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/schokoladenbrown/Smooth$AlgoParametrized2;

    return-object v0
.end method
