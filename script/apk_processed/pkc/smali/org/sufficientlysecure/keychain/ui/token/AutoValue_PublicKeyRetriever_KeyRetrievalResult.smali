.class final Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;
.super Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
.source "AutoValue_PublicKeyRetriever_KeyRetrievalResult.java"


# instance fields
.field private final keyData:[B

.field private final masterKeyId:Ljava/lang/Long;

.field private final operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

.field private final secretKeyAvailable:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    .line 21
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;-><init>()V

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Null operationResult"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    .line 26
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    .line 27
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    .line 28
    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->secretKeyAvailable:Z

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;---><init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V"

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

    .line 69
    :cond_0
    instance-of v1, v5, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 70
    check-cast v5, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    .line 71
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 72
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    instance-of v3, v5, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    if-eqz v3, :cond_2

    move-object v3, v5

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getKeyData()[B

    move-result-object v3

    :goto_1
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->secretKeyAvailable:Z

    .line 74
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->isSecretKeyAvailable()Z

    move-result v5

    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->equals(Ljava/lang/Object;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getKeyData()[B
    .locals 4

    move-object/16 v1, p0

    .line 46
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->getKeyData()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getMasterKeyId()Ljava/lang/Long;
    .locals 4

    move-object/16 v1, p0

    .line 39
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->getMasterKeyId()Ljava/lang/Long;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;
    .locals 4

    move-object/16 v1, p0

    .line 33
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 6

    move-object/16 v3, p0

    .line 83
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 85
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 87
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 89
    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->secretKeyAvailable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    xor-int/2addr v0, v1

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->hashCode()I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isSecretKeyAvailable()Z
    .locals 4

    move-object/16 v1, p0

    .line 51
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->secretKeyAvailable:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->isSecretKeyAvailable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyRetrievalResult{operationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->operationResult:Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", masterKeyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->keyData:[B

    .line 59
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", secretKeyAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;->secretKeyAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;--->toString()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
