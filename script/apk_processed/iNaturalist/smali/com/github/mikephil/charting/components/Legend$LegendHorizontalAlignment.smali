.class public final enum Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
.super Ljava/lang/Enum;
.source "Legend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/components/Legend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LegendHorizontalAlignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field public static final enum CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field public static final enum LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

.field public static final enum RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 71
    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    new-instance v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->LEFT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->CENTER:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->RIGHT:Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .line 70
    const-class v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object p0
.end method

.method public static values()[Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;
    .locals 1

    .line 70
    sget-object v0, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->$VALUES:[Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    invoke-virtual {v0}, [Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    return-object v0
.end method
