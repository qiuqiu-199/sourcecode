.class final enum Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;
.super Ljava/lang/Enum;
.source "KeyHealthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyHealthDisplayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

.field public static final enum STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;


# instance fields
.field private final icon:I

.field private final iconColor:I

.field private final subtitle:I

.field private final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 89
    new-instance v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    const v3, 0x7f110818

    const v4, 0x7f110817

    const v5, 0x7f080098

    const v6, 0x7f06001c

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 91
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v9, "DIVERT"

    const/4 v10, 0x1

    const v11, 0x7f110812

    const v12, 0x7f110811

    const v13, 0x7f08013d

    const v14, 0x7f06008b

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 93
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v2, "DIVERT_PARTIAL"

    const/4 v3, 0x2

    const v4, 0x7f110810

    const v5, 0x7f11080f

    const v6, 0x7f08013d

    const v7, 0x7f06008b

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v9, "REVOKED"

    const/4 v10, 0x3

    const v11, 0x7f11081c

    const v12, 0x7f11081b

    const v13, 0x7f08009c

    const v14, 0x7f06001f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 97
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v2, "EXPIRED"

    const/4 v3, 0x4

    const v4, 0x7f110814

    const v5, 0x7f110813

    const v6, 0x7f08012c

    const v7, 0x7f06001f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 99
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v9, "INSECURE"

    const/4 v10, 0x5

    const v11, 0x7f110816

    const v12, 0x7f110815

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 101
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v2, "BROKEN"

    const/4 v3, 0x6

    const v4, 0x7f11080e

    const v5, 0x7f11080d

    const v6, 0x7f080063

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 103
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v9, "SIGN_ONLY"

    const/4 v10, 0x7

    const v11, 0x7f11081e

    const v12, 0x7f11081d

    const v13, 0x7f080098

    const v14, 0x7f06001c

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v2, "STRIPPED"

    const/16 v3, 0x8

    const v4, 0x7f110820

    const v5, 0x7f11081f

    const v6, 0x7f080098

    const v7, 0x7f06001c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    .line 107
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const-string v9, "PARTIAL_STRIPPED"

    const/16 v10, 0x9

    const v11, 0x7f11081a

    const v12, 0x7f110819

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/16 v0, 0xa

    .line 88
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    return-void

    const-string v15, "M_InsDal"

    const-string v16, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;---><clinit>()V"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 118
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->title:I

    .line 120
    iput p1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->subtitle:I

    .line 121
    iput p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->icon:I

    .line 122
    iput p3, v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->iconColor:I

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;---><init>(Ljava/lang/String;IIIII)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->title:I

    return p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->subtitle:I

    return p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->icon:I

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;)I
    .locals 0

    .line 88
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->iconColor:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;
    .locals 4

    move-object/16 v1, p0

    .line 88
    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;
    .locals 4

    .line 88
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;--->values()[Lorg/sufficientlysecure/keychain/ui/keyview/view/KeyHealthView$KeyHealthDisplayStatus;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
