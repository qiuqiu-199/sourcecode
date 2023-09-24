.class public final enum Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;
.super Ljava/lang/Enum;
.source "RequiredInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequiredInputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum PASSPHRASE_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum SECURITY_TOKEN_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum SECURITY_TOKEN_DECRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum SECURITY_TOKEN_RESET_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

.field public static final enum UPLOAD_FAIL_RETRY:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 43
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "PASSPHRASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "PASSPHRASE_SYMMETRIC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "PASSPHRASE_AUTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 44
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "BACKUP_CODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "NUMERIC_9X4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "NUMERIC_9X4_AUTOCRYPT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "SECURITY_TOKEN_SIGN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "SECURITY_TOKEN_AUTH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "SECURITY_TOKEN_DECRYPT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_DECRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 46
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "SECURITY_TOKEN_MOVE_KEY_TO_CARD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "SECURITY_TOKEN_RESET_CARD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_RESET_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "ENABLE_ORBOT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const-string v1, "UPLOAD_FAIL_RETRY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->UPLOAD_FAIL_RETRY:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    const/16 v0, 0xd

    .line 42
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_SYMMETRIC:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->BACKUP_CODE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->NUMERIC_9X4_AUTOCRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_AUTH:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_DECRYPT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_RESET_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v12

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ENABLE_ORBOT:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v13

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->UPLOAD_FAIL_RETRY:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    aput-object v1, v0, v14

    sput-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->$VALUES:[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    return-void

    const-string v15, "M_InsDal"

    const-string v16, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;---><clinit>()V"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 42
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;
    .locals 4

    move-object/16 v1, p0

    .line 42
    const-class v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;
    .locals 4

    .line 42
    sget-object v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->$VALUES:[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;--->values()[Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
