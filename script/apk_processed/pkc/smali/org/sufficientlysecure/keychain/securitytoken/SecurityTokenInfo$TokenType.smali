.class public final enum Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
.super Ljava/lang/Enum;
.source "SecurityTokenInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum FIDESMO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum LEDGER_NANO_S:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum UNKNOWN:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field public static final enum YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 119
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "YUBIKEY_NEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "YUBIKEY_4"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "FIDESMO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->FIDESMO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "NITROKEY_PRO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "NITROKEY_STORAGE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "NITROKEY_START_OLD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    .line 120
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "NITROKEY_START_1_25_AND_NEWER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "GNUK_OLD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "GNUK_1_25_AND_NEWER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "LEDGER_NANO_S"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->LEDGER_NANO_S:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const-string v1, "UNKNOWN"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->UNKNOWN:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    const/16 v0, 0xb

    .line 118
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_NEO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->YUBIKEY_4:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->FIDESMO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_PRO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_STORAGE:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_1_25_AND_NEWER:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->LEDGER_NANO_S:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->UNKNOWN:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    aput-object v1, v0, v12

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;---><clinit>()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 118
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 4

    move-object/16 v1, p0

    .line 118
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 4

    .line 118
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
