.class public final enum Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;
.super Ljava/lang/Enum;
.source "CreateSecurityTokenAlgorithmFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum ECC_P256:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum ECC_P384:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum ECC_P521:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum RSA_2048:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum RSA_3072:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

.field public static final enum RSA_4096:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 45
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "RSA_2048"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "RSA_3072"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "RSA_4096"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_4096:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "ECC_P256"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "ECC_P384"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P384:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const-string v1, "ECC_P521"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    const/4 v0, 0x6

    .line 44
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_2048:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_3072:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->RSA_4096:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P256:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P384:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->ECC_P521:Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;---><clinit>()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 44
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;
    .locals 4

    move-object/16 v1, p0

    .line 44
    const-class v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;
    .locals 4

    .line 44
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;--->values()[Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenAlgorithmFragment$SupportedKeyType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
