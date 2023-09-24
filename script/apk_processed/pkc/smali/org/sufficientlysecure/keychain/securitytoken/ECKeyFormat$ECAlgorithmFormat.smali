.class public final enum Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
.super Ljava/lang/Enum;
.source "ECKeyFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ECAlgorithmFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

.field public static final enum ECDH:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

.field public static final enum ECDH_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

.field public static final enum ECDSA:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

.field public static final enum ECDSA_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;


# instance fields
.field private final mIsECDH:Z

.field private final mValue:B

.field private final mWithPubkey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 51
    new-instance v6, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const-string v1, "ECDH"

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v6, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const-string v8, "ECDH_WITH_PUBKEY"

    const/4 v9, 0x1

    const/16 v10, 0x12

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    .line 53
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const-string v2, "ECDSA"

    const/4 v3, 0x2

    const/16 v4, 0x13

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    .line 54
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const-string v8, "ECDSA_WITH_PUBKEY"

    const/4 v9, 0x3

    const/16 v10, 0x13

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const/4 v0, 0x4

    .line 50
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDH_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->ECDSA_WITH_PUBKEY:Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;---><clinit>()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IBZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BZZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 60
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-byte p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mValue:B

    .line 62
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mIsECDH:Z

    .line 63
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mWithPubkey:Z

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;---><init>(Ljava/lang/String;IBZZ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static from(BB)Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
    .locals 10

    move/16 v7, p0

    move/16 v8, p1

    .line 67
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->values()[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 68
    iget-byte v5, v4, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mValue:B

    if-ne v5, v7, :cond_1

    const/4 v5, -0x1

    if-ne v8, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->isWithPubkey()Z

    move-result v6

    if-ne v5, v6, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    return-object v7

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->from(BB)Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
    .locals 4

    move-object/16 v1, p0

    .line 50
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;
    .locals 4

    .line 50
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public final getValue()B
    .locals 4

    move-object/16 v1, p0

    .line 76
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mValue:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->getValue()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final isECDH()Z
    .locals 4

    move-object/16 v1, p0

    .line 80
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mIsECDH:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->isECDH()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public final isWithPubkey()Z
    .locals 4

    move-object/16 v1, p0

    .line 84
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;->mWithPubkey:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat$ECAlgorithmFormat;--->isWithPubkey()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
