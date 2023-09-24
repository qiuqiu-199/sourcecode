.class final Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;
.super Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.source "$AutoValue_PgpDecryptVerifyInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private allowSymmetricDecryption:Ljava/lang/Boolean;

.field private allowedKeyIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private autocryptSetup:Ljava/lang/Boolean;

.field private decryptMetadataOnly:Ljava/lang/Boolean;

.field private detachedSignature:[B

.field private inputBytes:[B

.field private inputUri:Landroid/net/Uri;

.field private outputUri:Landroid/net/Uri;

.field private senderAddress:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 171
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 173
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;-><init>()V

    .line 174
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputBytes()[B

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputBytes:[B

    .line 175
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getInputUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputUri:Landroid/net/Uri;

    .line 176
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->outputUri:Landroid/net/Uri;

    .line 177
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAllowSymmetricDecryption()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowSymmetricDecryption:Ljava/lang/Boolean;

    .line 178
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isDecryptMetadataOnly()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->decryptMetadataOnly:Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->isAutocryptSetup()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->autocryptSetup:Ljava/lang/Boolean;

    .line 180
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowedKeyIds:Ljava/util/List;

    .line 181
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getDetachedSignature()[B

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->detachedSignature:[B

    .line 182
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->getSenderAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->senderAddress:Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;---><init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)V

    return-void
.end method


# virtual methods
.method autoBuild()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
    .locals 15

    move-object/16 v12, p0

    const-string v0, ""

    .line 236
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowSymmetricDecryption:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " allowSymmetricDecryption"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_0
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->decryptMetadataOnly:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " decryptMetadataOnly"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :cond_1
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->autocryptSetup:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " autocryptSetup"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 246
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_3
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;

    iget-object v3, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputBytes:[B

    iget-object v4, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputUri:Landroid/net/Uri;

    iget-object v5, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->outputUri:Landroid/net/Uri;

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowSymmetricDecryption:Ljava/lang/Boolean;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->decryptMetadataOnly:Ljava/lang/Boolean;

    .line 253
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->autocryptSetup:Ljava/lang/Boolean;

    .line 254
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowedKeyIds:Ljava/util/List;

    iget-object v10, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->detachedSignature:[B

    iget-object v11, v12, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->senderAddress:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_PgpDecryptVerifyInputParcel;-><init>([BLandroid/net/Uri;Landroid/net/Uri;ZZZLjava/util/List;[BLjava/lang/String;)V

    return-object v0

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->autoBuild()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 221
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowedKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->getAllowedKeyIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowSymmetricDecryption:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAllowedKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 216
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->allowedKeyIds:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setAllowedKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAutocryptSetup(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 211
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->autocryptSetup:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setAutocryptSetup(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDecryptMetadataOnly(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 206
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->decryptMetadataOnly:Ljava/lang/Boolean;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setDecryptMetadataOnly(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDetachedSignature([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 225
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->detachedSignature:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setDetachedSignature([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setInputBytes([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 186
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputBytes:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setInputBytes([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setInputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 191
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->inputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setInputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setOutputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 196
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->outputUri:Landroid/net/Uri;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setOutputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSenderAddress(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 230
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->senderAddress:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;--->setSenderAddress(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
