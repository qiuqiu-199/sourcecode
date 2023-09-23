.class final enum Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;
.super Ljava/lang/Enum;
.source "ManageSecurityTokenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StatusLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum CHECK_KEY:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum IMPORT:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum SEARCH_CONTENT_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum SEARCH_KEYSERVER:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum SEARCH_LOCAL:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum SEARCH_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum TOKEN_CHECK:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

.field public static final enum TOKEN_PROMOTE:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;


# instance fields
.field private stringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 523
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "CHECK_KEY"

    const/4 v2, 0x0

    const v3, 0x7f110cc7

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->CHECK_KEY:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 524
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "SEARCH_LOCAL"

    const/4 v3, 0x1

    const v4, 0x7f110ccb

    invoke-direct {v0, v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_LOCAL:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 525
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "SEARCH_URI"

    const/4 v4, 0x2

    const v5, 0x7f110ccc

    invoke-direct {v0, v1, v4, v5}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 526
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "SEARCH_KEYSERVER"

    const/4 v5, 0x3

    const v6, 0x7f110cca

    invoke-direct {v0, v1, v5, v6}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_KEYSERVER:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 527
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "IMPORT"

    const/4 v6, 0x4

    const v7, 0x7f110cc9

    invoke-direct {v0, v1, v6, v7}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->IMPORT:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 528
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "TOKEN_PROMOTE"

    const/4 v7, 0x5

    const v8, 0x7f110cce

    invoke-direct {v0, v1, v7, v8}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_PROMOTE:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 529
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "TOKEN_CHECK"

    const/4 v8, 0x6

    const v9, 0x7f110ccd

    invoke-direct {v0, v1, v8, v9}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_CHECK:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    .line 530
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const-string v1, "SEARCH_CONTENT_URI"

    const/4 v9, 0x7

    const v10, 0x7f110cc8

    invoke-direct {v0, v1, v9, v10}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_CONTENT_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    const/16 v0, 0x8

    .line 522
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->CHECK_KEY:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_LOCAL:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_KEYSERVER:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->IMPORT:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_PROMOTE:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_CHECK:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_CONTENT_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    aput-object v1, v0, v9

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    return-void

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;---><clinit>()V"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 535
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 536
    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->stringRes:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;---><init>(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)I
    .locals 0

    .line 522
    iget p0, p0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->stringRes:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;
    .locals 4

    move-object/16 v1, p0

    .line 522
    const-class v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;
    .locals 4

    .line 522
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;--->values()[Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
