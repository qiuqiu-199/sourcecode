.class abstract Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
.super Ljava/lang/Object;
.source "PublicKeyRetriever.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KeyRetrievalResult"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 236
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 6

    move-object/16 v3, p0

    .line 251
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;--->createWithError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createWithKeyringdata(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J[B)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    move-object/16 p0, p3

    .line 257
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 259
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3, p0, v2}, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;--->createWithKeyringdata(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J[B)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createWithMasterKeyId(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 269
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;--->createWithMasterKeyId(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createWithMasterKeyIdAndSecretAvailable(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 263
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/token/AutoValue_PublicKeyRetriever_KeyRetrievalResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;Ljava/lang/Long;[BZ)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;--->createWithMasterKeyIdAndSecretAvailable(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;J)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract getKeyData()[B
.end method

.method abstract getMasterKeyId()Ljava/lang/Long;
.end method

.method abstract getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;
.end method

.method abstract isSecretKeyAvailable()Z
.end method

.method isSuccess()Z
    .locals 4

    move-object/16 v1, p0

    .line 247
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getKeyData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;--->isSuccess()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
