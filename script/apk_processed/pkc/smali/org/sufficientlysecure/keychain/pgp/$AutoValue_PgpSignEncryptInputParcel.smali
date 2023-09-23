.class abstract Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;
.super Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;
.source "$AutoValue_PgpSignEncryptInputParcel.java"


# instance fields
.field private final data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

.field private final inputBytes:[B

.field private final inputUri:Landroid/net/Uri;

.field private final outputUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;-><init>()V

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    .line 26
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    .line 27
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    .line 28
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;---><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Landroid/net/Uri;Landroid/net/Uri;[B)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 71
    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;

    .line 72
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 74
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;

    if-eqz v3, :cond_3

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptInputParcel;->getInputBytes()[B

    move-result-object v5

    :goto_2
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_5
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
    .locals 4

    move-object/16 v1, p0

    .line 33
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->getData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getInputBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->getInputBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getInputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 45
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->getInputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->getOutputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 7

    move-object/16 v4, p0

    .line 84
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 86
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 88
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 90
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->hashCode()I"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PgpSignEncryptInputParcel{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->data:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->outputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;->inputBytes:[B

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpSignEncryptInputParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
