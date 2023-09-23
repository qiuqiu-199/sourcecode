.class public final enum Lorg/sufficientlysecure/keychain/securitytoken/KeyType;
.super Ljava/lang/Enum;
.source "KeyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

.field public static final enum AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

.field public static final enum ENCRYPT:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

.field public static final enum SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;


# instance fields
.field private final mAlgoAttributeSlot:I

.field private final mFingerprintObjectId:I

.field private final mIdx:I

.field private final mSlot:I

.field private final mTimestampObjectId:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 23
    new-instance v8, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const-string v1, "SIGN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xb6

    const/16 v5, 0xce

    const/16 v6, 0xc7

    const/16 v7, 0xc1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    .line 24
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const-string v10, "ENCRYPT"

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0xb8

    const/16 v14, 0xcf

    const/16 v15, 0xc8

    const/16 v16, 0xc2

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->ENCRYPT:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    .line 25
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const-string v2, "AUTH"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0xa4

    const/16 v6, 0xd0

    const/16 v7, 0xc9

    const/16 v8, 0xc3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->ENCRYPT:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-void

    const-string v17, "M_InsDal"

    const-string v18, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;---><clinit>()V"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move/16 p4, p7

    .line 33
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mIdx:I

    .line 35
    iput p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mSlot:I

    .line 36
    iput p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mTimestampObjectId:I

    .line 37
    iput p3, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mFingerprintObjectId:I

    .line 38
    iput p4, v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mAlgoAttributeSlot:I

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;---><init>(Ljava/lang/String;IIIIII)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static from(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)Lorg/sufficientlysecure/keychain/securitytoken/KeyType;
    .locals 4

    move-object/16 v1, p0

    .line 42
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canSign()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canCertify()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canEncrypt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->ENCRYPT:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-object v1

    .line 46
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->canAuthenticate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->AUTH:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1

    .line 43
    :cond_3
    :goto_0
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->SIGN:Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->from(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)Lorg/sufficientlysecure/keychain/securitytoken/KeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/KeyType;
    .locals 4

    move-object/16 v1, p0

    .line 22
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/KeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/KeyType;
    .locals 4

    .line 22
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/KeyType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAlgoAttributeSlot()I
    .locals 4

    move-object/16 v1, p0

    .line 69
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mAlgoAttributeSlot:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->getAlgoAttributeSlot()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprintObjectId()I
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mFingerprintObjectId:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->getFingerprintObjectId()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getIdx()I
    .locals 4

    move-object/16 v1, p0

    .line 53
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mIdx:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->getIdx()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSlot()I
    .locals 4

    move-object/16 v1, p0

    .line 57
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mSlot:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->getSlot()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTimestampObjectId()I
    .locals 4

    move-object/16 v1, p0

    .line 61
    iget v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->mTimestampObjectId:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/KeyType;--->getTimestampObjectId()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
