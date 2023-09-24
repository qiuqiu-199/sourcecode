.class public final enum Lorg/lucasr/twowayview/TwoWayView$Orientation;
.super Ljava/lang/Enum;
.source "TwoWayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lucasr/twowayview/TwoWayView$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/lucasr/twowayview/TwoWayView$Orientation;

.field public static final enum HORIZONTAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

.field public static final enum VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->HORIZONTAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    .line 139
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lucasr/twowayview/TwoWayView$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    const/4 v0, 0x2

    .line 137
    new-array v0, v0, [Lorg/lucasr/twowayview/TwoWayView$Orientation;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$Orientation;->HORIZONTAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->$VALUES:[Lorg/lucasr/twowayview/TwoWayView$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lucasr/twowayview/TwoWayView$Orientation;
    .locals 1

    .line 137
    const-class v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lucasr/twowayview/TwoWayView$Orientation;

    return-object p0
.end method

.method public static values()[Lorg/lucasr/twowayview/TwoWayView$Orientation;
    .locals 1

    .line 137
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->$VALUES:[Lorg/lucasr/twowayview/TwoWayView$Orientation;

    invoke-virtual {v0}, [Lorg/lucasr/twowayview/TwoWayView$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lucasr/twowayview/TwoWayView$Orientation;

    return-object v0
.end method
