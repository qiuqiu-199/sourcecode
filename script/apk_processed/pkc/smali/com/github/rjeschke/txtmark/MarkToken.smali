.class final enum Lcom/github/rjeschke/txtmark/MarkToken;
.super Ljava/lang/Enum;
.source "MarkToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rjeschke/txtmark/MarkToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum HTML:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum LINK:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum NONE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

.field public static final enum X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 26
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 28
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "EM_STAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 30
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "EM_UNDERSCORE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 32
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRONG_STAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 34
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRONG_UNDERSCORE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 36
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "STRIKE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 38
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "CODE_SINGLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 40
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "CODE_DOUBLE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 42
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "LINK"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 44
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "HTML"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 46
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "IMAGE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 48
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "ENTITY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 50
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "ESCAPE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 52
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "SUPER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 54
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_COPY"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 56
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_REG"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 58
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_TRADE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 60
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LAQUO"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 62
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_RAQUO"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 64
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_NDASH"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 66
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_MDASH"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 68
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_HELLIP"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 70
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_RDQUO"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 72
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LDQUO"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 74
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LINK_OPEN"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    .line 76
    new-instance v0, Lcom/github/rjeschke/txtmark/MarkToken;

    const-string v1, "X_LINK_CLOSE"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/github/rjeschke/txtmark/MarkToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v0, 0x1a

    .line 23
    new-array v0, v0, [Lcom/github/rjeschke/txtmark/MarkToken;

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v8

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v9

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v10

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v11

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v12

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v13

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    aput-object v1, v0, v14

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->$VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 1

    .line 23
    const-class v0, Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/rjeschke/txtmark/MarkToken;

    return-object p0
.end method

.method public static values()[Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 1

    .line 23
    sget-object v0, Lcom/github/rjeschke/txtmark/MarkToken;->$VALUES:[Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v0}, [Lcom/github/rjeschke/txtmark/MarkToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rjeschke/txtmark/MarkToken;

    return-object v0
.end method
