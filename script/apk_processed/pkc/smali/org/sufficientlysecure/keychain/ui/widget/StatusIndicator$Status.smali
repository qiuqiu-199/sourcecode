.class public final enum Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;
.super Ljava/lang/Enum;
.source "StatusIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

.field public static final enum ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

.field public static final enum IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

.field public static final enum PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    const-string v1, "PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    const-string v1, "OK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->IDLE:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    aput-object v1, v0, v5

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;---><clinit>()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 31
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;
    .locals 4

    move-object/16 v1, p0

    .line 31
    const-class v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;
    .locals 4

    .line 31
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;--->values()[Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
