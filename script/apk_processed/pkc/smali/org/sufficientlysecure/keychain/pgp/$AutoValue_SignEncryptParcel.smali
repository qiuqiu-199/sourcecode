.class abstract Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;
.super Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
.source "$AutoValue_SignEncryptParcel.java"


# instance fields
.field private final bytes:[B

.field private final inputUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final outputUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Ljava/util/List;Ljava/util/List;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;[B)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 22
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;-><init>()V

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null signEncryptData"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    if-nez v2, :cond_1

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null inputUris"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30
    :cond_1
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->inputUris:Ljava/util/List;

    if-nez p0, :cond_2

    .line 32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null outputUris"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_2
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->outputUris:Ljava/util/List;

    .line 35
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;---><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Ljava/util/List;Ljava/util/List;[B)V"

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

    .line 75
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 76
    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    .line 77
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->inputUris:Ljava/util/List;

    .line 78
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getInputUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->outputUris:Ljava/util/List;

    .line 79
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getOutputUris()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;

    if-eqz v3, :cond_1

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getBytes()[B

    move-result-object v5

    :goto_0
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getBytes()[B
    .locals 4

    move-object/16 v1, p0

    .line 57
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->getBytes()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getInputUris()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 45
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->inputUris:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->getInputUris()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOutputUris()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 50
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->outputUris:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->getOutputUris()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
    .locals 4

    move-object/16 v1, p0

    .line 40
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 89
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 91
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->inputUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 93
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->outputUris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 95
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignEncryptParcel{signEncryptData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->signEncryptData:Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inputUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->inputUris:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->outputUris:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;->bytes:[B

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_SignEncryptParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
