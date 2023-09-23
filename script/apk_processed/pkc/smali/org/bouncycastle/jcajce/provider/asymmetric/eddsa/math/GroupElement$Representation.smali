.class public final enum Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;
.super Ljava/lang/Enum;
.source "GroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Representation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

.field public static final enum CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

.field public static final enum P1P1:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

.field public static final enum P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

.field public static final enum P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

.field public static final enum PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const-string v1, "P2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 51
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const-string v1, "P3"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 53
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const-string v1, "P1P1"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P1P1:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 55
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const-string v1, "PRECOMP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    .line 57
    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const-string v1, "CACHED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    const/4 v0, 0x5

    .line 47
    new-array v0, v0, [Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P2:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P3:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->P1P1:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->PRECOMP:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->CACHED:Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->$VALUES:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 47
    const-class v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    return-object p0
.end method

.method public static values()[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 47
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->$VALUES:[Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0}, [Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/jcajce/provider/asymmetric/eddsa/math/GroupElement$Representation;

    return-object v0
.end method
