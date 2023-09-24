.class public final enum Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;
.super Ljava/lang/Enum;
.source "SubkeyStatusDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyHealthStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum OK:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

.field public static final enum STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 158
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "DIVERT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "DIVERT_PARTIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "REVOKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "EXPIRED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "INSECURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "SIGN_ONLY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "STRIPPED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "PARTIAL_STRIPPED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const-string v1, "BROKEN"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    const/16 v0, 0xa

    .line 157
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->OK:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->DIVERT_PARTIAL:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->REVOKED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->INSECURE:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->SIGN_ONLY:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->PARTIAL_STRIPPED:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->BROKEN:Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    aput-object v1, v0, v11

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-void

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;---><clinit>()V"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 157
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;
    .locals 4

    move-object/16 v1, p0

    .line 157
    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;
    .locals 4

    .line 157
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;--->values()[Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeyHealthStatus;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
