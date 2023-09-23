.class final enum Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;
.super Ljava/lang/Enum;
.source "KeyserverStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyserverDisplayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

.field public static final enum NOT_PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

.field public static final enum PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

.field public static final enum UNKNOWN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;


# instance fields
.field private final icon:I

.field private final iconColor:I

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const-string v1, "PUBLISHED"

    const/4 v2, 0x0

    const v3, 0x7f11087f

    const v4, 0x7f08009f

    const v5, 0x7f0600fa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    .line 60
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const-string v8, "NOT_PUBLISHED"

    const/4 v9, 0x1

    const v10, 0x7f11087e

    const v11, 0x7f0800a1

    const v12, 0x7f0600fa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->NOT_PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    .line 61
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    const v4, 0x7f110880

    const v5, 0x7f0800a3

    const v6, 0x7f0600fa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->UNKNOWN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const/4 v0, 0x3

    .line 58
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->NOT_PUBLISHED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->UNKNOWN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;---><clinit>()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 70
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->title:I

    .line 72
    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->icon:I

    .line 73
    iput p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->iconColor:I

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;---><init>(Ljava/lang/String;IIII)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I
    .locals 0

    .line 58
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->title:I

    return p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I
    .locals 0

    .line 58
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->icon:I

    return p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;)I
    .locals 0

    .line 58
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->iconColor:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;
    .locals 4

    move-object/16 v1, p0

    .line 58
    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;
    .locals 4

    .line 58
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;--->values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyserverStatusView$KeyserverDisplayStatus;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
