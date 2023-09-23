.class public final enum Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
.super Ljava/lang/Enum;
.source "RSAKeyFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RSAAlgorithmFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

.field public static final enum CRT:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

.field public static final enum CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

.field public static final enum STANDARD:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

.field public static final enum STANDARD_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;


# instance fields
.field private mIncludeCrt:Z

.field private mIncludeModulus:Z

.field private mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 52
    new-instance v6, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v6, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->STANDARD:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    .line 53
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const-string v8, "STANDARD_WITH_MODULUS"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->STANDARD_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    .line 54
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const-string v2, "CRT"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const-string v8, "CRT_WITH_MODULUS"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;-><init>(Ljava/lang/String;IBZZ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/4 v0, 0x4

    .line 51
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->STANDARD:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->STANDARD_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->CRT_WITH_MODULUS:Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;---><clinit>()V"

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

    .line 61
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-byte p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mValue:B

    .line 63
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mIncludeModulus:Z

    .line 64
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mIncludeCrt:Z

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;---><init>(Ljava/lang/String;IBZZ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static from(B)Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
    .locals 8

    move/16 v5, p0

    .line 68
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->values()[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    iget-byte v4, v3, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mValue:B

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->from(B)Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
    .locals 4

    move-object/16 v1, p0

    .line 51
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;
    .locals 4

    .line 51
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getValue()B
    .locals 4

    move-object/16 v1, p0

    .line 77
    iget-byte v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mValue:B

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->getValue()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isIncludeCrt()Z
    .locals 4

    move-object/16 v1, p0

    .line 85
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mIncludeCrt:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->isIncludeCrt()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isIncludeModulus()Z
    .locals 4

    move-object/16 v1, p0

    .line 81
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;->mIncludeModulus:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat$RSAAlgorithmFormat;--->isIncludeModulus()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
