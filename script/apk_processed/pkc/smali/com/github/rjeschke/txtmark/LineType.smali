.class final enum Lcom/github/rjeschke/txtmark/LineType;
.super Ljava/lang/Enum;
.source "LineType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/rjeschke/txtmark/LineType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum CODE:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum EMPTY:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum HR:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum OLIST:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum OTHER:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum ULIST:Lcom/github/rjeschke/txtmark/LineType;

.field public static final enum XML:Lcom/github/rjeschke/txtmark/LineType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 26
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->EMPTY:Lcom/github/rjeschke/txtmark/LineType;

    .line 28
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->OTHER:Lcom/github/rjeschke/txtmark/LineType;

    .line 30
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "HEADLINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "HEADLINE1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "HEADLINE2"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    .line 32
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "CODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    .line 34
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "ULIST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "OLIST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    .line 36
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "BQUOTE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    .line 38
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "HR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    .line 40
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "XML"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    .line 42
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "FENCED_CODE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    .line 44
    new-instance v0, Lcom/github/rjeschke/txtmark/LineType;

    const-string v1, "PLUGIN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/github/rjeschke/txtmark/LineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    const/16 v0, 0xd

    .line 23
    new-array v0, v0, [Lcom/github/rjeschke/txtmark/LineType;

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->EMPTY:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->OTHER:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/github/rjeschke/txtmark/LineType;->$VALUES:[Lcom/github/rjeschke/txtmark/LineType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/LineType;
    .locals 1

    .line 23
    const-class v0, Lcom/github/rjeschke/txtmark/LineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/rjeschke/txtmark/LineType;

    return-object p0
.end method

.method public static values()[Lcom/github/rjeschke/txtmark/LineType;
    .locals 1

    .line 23
    sget-object v0, Lcom/github/rjeschke/txtmark/LineType;->$VALUES:[Lcom/github/rjeschke/txtmark/LineType;

    invoke-virtual {v0}, [Lcom/github/rjeschke/txtmark/LineType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rjeschke/txtmark/LineType;

    return-object v0
.end method
