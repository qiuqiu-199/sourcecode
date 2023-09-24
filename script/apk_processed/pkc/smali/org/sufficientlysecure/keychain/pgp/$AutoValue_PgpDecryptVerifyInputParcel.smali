.class abstract Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;
.super Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
.source "$AutoValue_PgpDecryptVerifyInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;
    }
.end annotation


# instance fields
.field private final allowSymmetricDecryption:Z

.field private final allowedKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final autocryptSetup:Z

.field private final decryptMetadataOnly:Z

.field private final detachedSignature:[B

.field private final inputBytes:[B

.field private final inputUri:Landroid/net/Uri;

.field private final outputUri:Landroid/net/Uri;

.field private final senderAddress:Ljava/lang/String;


# direct methods
.method constructor <init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    .line 32
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;-><init>()V

    .line 33
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    .line 34
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    .line 35
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    .line 36
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowSymmetricDecryption:Z

    .line 37
    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->decryptMetadataOnly:Z

    .line 38
    iput-boolean p3, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->autocryptSetup:Z

    .line 39
    iput-object p4, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    .line 40
    iput-object p5, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    .line 41
    iput-object p6, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    return-void

    const-string p7, "M_InsDal"

    const-string p8, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;---><init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V"

    invoke-static/range {p7 .. p8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    const/4 v0, 0x1

    if-ne v6, v5, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, v6, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 118
    check-cast v6, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    .line 119
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    instance-of v3, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;

    if-eqz v3, :cond_1

    move-object v4, v6

    check-cast v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputBytes()[B

    move-result-object v4

    :goto_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 120
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 121
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowSymmetricDecryption:Z

    .line 122
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAllowSymmetricDecryption()Z

    move-result v4

    if-ne v1, v4, :cond_7

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->decryptMetadataOnly:Z

    .line 123
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isDecryptMetadataOnly()Z

    move-result v4

    if-ne v1, v4, :cond_7

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->autocryptSetup:Z

    .line 124
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAutocryptSetup()Z

    move-result v4

    if-ne v1, v4, :cond_7

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    if-nez v1, :cond_4

    .line 125
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    if-eqz v3, :cond_5

    move-object v3, v6

    check-cast v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    goto :goto_4

    .line 126
    :cond_5
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v3

    :goto_4
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 127
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_5

    :cond_6
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_8
    return v2

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getAllowedKeyIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 81
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getAllowedKeyIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getDetachedSignature()[B
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getDetachedSignature()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getInputBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 48
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getInputBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getInputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 54
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getInputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getOutputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 60
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getOutputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSenderAddress()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 94
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->getSenderAddress()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 9

    move-object/16 v6, p0

    .line 136
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 138
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 140
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 142
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowSymmetricDecryption:Z

    const/16 v4, 0x4d5

    const/16 v5, 0x4cf

    if-eqz v2, :cond_2

    const/16 v2, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 144
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->decryptMetadataOnly:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v2, 0x4d5

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 146
    iget-boolean v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->autocryptSetup:Z

    if-eqz v2, :cond_4

    const/16 v4, 0x4cf

    :cond_4
    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    .line 148
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 150
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 152
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->hashCode()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isAllowSymmetricDecryption()Z
    .locals 4

    move-object/16 v1, p0

    .line 65
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowSymmetricDecryption:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->isAllowSymmetricDecryption()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isAutocryptSetup()Z
    .locals 4

    move-object/16 v1, p0

    .line 75
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->autocryptSetup:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->isAutocryptSetup()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isDecryptMetadataOnly()Z
    .locals 4

    move-object/16 v1, p0

    .line 70
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->decryptMetadataOnly:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->isDecryptMetadataOnly()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toBuilder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 5

    move-object/16 v2, p0

    .line 158
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$1;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->toBuilder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PgpDecryptVerifyInputParcel{inputBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputBytes:[B

    .line 100
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allowSymmetricDecryption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowSymmetricDecryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", decryptMetadataOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->decryptMetadataOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autocryptSetup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->autocryptSetup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowedKeyIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->allowedKeyIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detachedSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->detachedSignature:[B

    .line 107
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;->senderAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
