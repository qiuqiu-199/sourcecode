.class public final enum Lcom/schokoladenbrown/Smooth$Algo;
.super Ljava/lang/Enum;
.source "Smooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/schokoladenbrown/Smooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Algo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/schokoladenbrown/Smooth$Algo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum AREA:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum BICUBLIN:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum FAST_BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum POINT:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum SINC:Lcom/schokoladenbrown/Smooth$Algo;

.field public static final enum SPLINE:Lcom/schokoladenbrown/Smooth$Algo;


# instance fields
.field private final flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 9
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "FAST_BILINEAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->FAST_BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

    .line 10
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "BILINEAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

    .line 11
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "POINT"

    const/16 v5, 0x10

    invoke-direct {v0, v1, v4, v5}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->POINT:Lcom/schokoladenbrown/Smooth$Algo;

    .line 12
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "AREA"

    const/4 v5, 0x3

    const/16 v6, 0x20

    invoke-direct {v0, v1, v5, v6}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->AREA:Lcom/schokoladenbrown/Smooth$Algo;

    .line 13
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "BICUBLIN"

    const/4 v6, 0x4

    const/16 v7, 0x40

    invoke-direct {v0, v1, v6, v7}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->BICUBLIN:Lcom/schokoladenbrown/Smooth$Algo;

    .line 14
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "SINC"

    const/4 v7, 0x5

    const/16 v8, 0x100

    invoke-direct {v0, v1, v7, v8}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->SINC:Lcom/schokoladenbrown/Smooth$Algo;

    .line 15
    new-instance v0, Lcom/schokoladenbrown/Smooth$Algo;

    const-string v1, "SPLINE"

    const/4 v8, 0x6

    const/16 v9, 0x400

    invoke-direct {v0, v1, v8, v9}, Lcom/schokoladenbrown/Smooth$Algo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->SPLINE:Lcom/schokoladenbrown/Smooth$Algo;

    const/4 v0, 0x7

    .line 8
    new-array v0, v0, [Lcom/schokoladenbrown/Smooth$Algo;

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->FAST_BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v2

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->BILINEAR:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->POINT:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->AREA:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->BICUBLIN:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->SINC:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/schokoladenbrown/Smooth$Algo;->SPLINE:Lcom/schokoladenbrown/Smooth$Algo;

    aput-object v1, v0, v8

    sput-object v0, Lcom/schokoladenbrown/Smooth$Algo;->$VALUES:[Lcom/schokoladenbrown/Smooth$Algo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/schokoladenbrown/Smooth$Algo;->flag:I

    return-void
.end method

.method static synthetic access$000(Lcom/schokoladenbrown/Smooth$Algo;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/schokoladenbrown/Smooth$Algo;->flag:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/schokoladenbrown/Smooth$Algo;
    .locals 1

    .line 8
    const-class v0, Lcom/schokoladenbrown/Smooth$Algo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/schokoladenbrown/Smooth$Algo;

    return-object p0
.end method

.method public static values()[Lcom/schokoladenbrown/Smooth$Algo;
    .locals 1

    .line 8
    sget-object v0, Lcom/schokoladenbrown/Smooth$Algo;->$VALUES:[Lcom/schokoladenbrown/Smooth$Algo;

    invoke-virtual {v0}, [Lcom/schokoladenbrown/Smooth$Algo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/schokoladenbrown/Smooth$Algo;

    return-object v0
.end method
