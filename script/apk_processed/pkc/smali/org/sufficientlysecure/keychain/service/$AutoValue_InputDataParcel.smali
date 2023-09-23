.class abstract Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;
.super Lorg/sufficientlysecure/keychain/service/InputDataParcel;
.source "$AutoValue_InputDataParcel.java"


# instance fields
.field private final decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

.field private final inputUri:Landroid/net/Uri;

.field private final mimeDecode:Z


# direct methods
.method constructor <init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 19
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;-><init>()V

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null inputUri"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->inputUri:Landroid/net/Uri;

    .line 24
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    .line 25
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->mimeDecode:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;---><init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x1

    if-ne v5, v4, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 59
    check-cast v5, Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    .line 60
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    if-nez v1, :cond_1

    .line 61
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->mimeDecode:Z

    .line 62
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->getMimeDecode()Z

    move-result v5

    if-ne v1, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 36
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getInputUri()Landroid/net/Uri;
    .locals 4

    move-object/16 v1, p0

    .line 30
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->inputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->getInputUri()Landroid/net/Uri;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMimeDecode()Z
    .locals 4

    move-object/16 v1, p0

    .line 41
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->mimeDecode:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->getMimeDecode()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 71
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 73
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 75
    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->mimeDecode:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputDataParcel{inputUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->inputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decryptInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->decryptInput:Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeDecode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;->mimeDecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_InputDataParcel;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
