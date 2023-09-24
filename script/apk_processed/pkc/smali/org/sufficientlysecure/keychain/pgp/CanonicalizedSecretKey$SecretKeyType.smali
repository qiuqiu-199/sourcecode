.class public final enum Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
.super Ljava/lang/Enum;
.source "CanonicalizedSecretKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecretKeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public static final enum DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public static final enum GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public static final enum PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public static final enum PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

.field public static final enum UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;


# instance fields
.field final mNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 87
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const-string v1, "GNU_DUMMY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const-string v1, "PASSPHRASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const-string v1, "PASSPHRASE_EMPTY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const-string v1, "DIVERT_TO_CARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const/4 v0, 0x5

    .line 86
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;---><clinit>()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 91
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p0, v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->mNum:I

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;---><init>(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static fromNum(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 3

    move/16 v0, p0

    packed-switch v0, :pswitch_data_0

    .line 107
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 104
    :pswitch_0
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 102
    :pswitch_1
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 100
    :pswitch_2
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    .line 98
    :pswitch_3
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->fromNum(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 4

    move-object/16 v1, p0

    .line 86
    const-class v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
    .locals 4

    .line 86
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->$VALUES:[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->values()[Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public compareUsability(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)I
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 127
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->isUsable()Z

    move-result v0

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->isUsable()Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->isUsable()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 131
    :cond_1
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    const/4 v3, 0x0

    if-ne v5, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget-object v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v6, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 132
    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->DIVERT_TO_CARD:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v5, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    return v1

    .line 135
    :cond_5
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v5, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    sget-object v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v6, v4, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    xor-int/2addr v6, v0

    if-eqz v6, :cond_9

    .line 136
    sget-object v6, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v5, v6, :cond_8

    goto :goto_6

    :cond_8
    const/4 v1, 0x1

    :goto_6
    return v1

    :cond_9
    return v3

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->compareUsability(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;)I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNum()I
    .locals 4

    move-object/16 v1, p0

    .line 112
    iget v0, v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->mNum:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->getNum()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isUsable()Z
    .locals 4

    move-object/16 v1, p0

    .line 116
    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->UNAVAILABLE:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v1, v0, :cond_0

    sget-object v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->GNU_DUMMY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;--->isUsable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
