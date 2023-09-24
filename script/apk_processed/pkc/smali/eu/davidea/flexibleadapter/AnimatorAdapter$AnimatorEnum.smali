.class final enum Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
.super Ljava/lang/Enum;
.source "AnimatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/davidea/flexibleadapter/AnimatorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimatorEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum ALPHA:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SCALE:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_BOTTOM:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_LEFT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_RIGHT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

.field public static final enum SLIDE_IN_TOP:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 61
    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->ALPHA:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "SLIDE_IN_LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_LEFT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "SLIDE_IN_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_RIGHT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "SLIDE_IN_BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_BOTTOM:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "SLIDE_IN_TOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_TOP:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    new-instance v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const-string v1, "SCALE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SCALE:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    const/4 v0, 0x6

    .line 60
    new-array v0, v0, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->ALPHA:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v2

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_LEFT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v3

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_RIGHT:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v4

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_BOTTOM:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v5

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SLIDE_IN_TOP:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v6

    sget-object v1, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->SCALE:Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    aput-object v1, v0, v7

    sput-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->$VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
    .locals 1

    .line 60
    const-class v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-object p0
.end method

.method public static values()[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;
    .locals 1

    .line 60
    sget-object v0, Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->$VALUES:[Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    invoke-virtual {v0}, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/davidea/flexibleadapter/AnimatorAdapter$AnimatorEnum;

    return-object v0
.end method
