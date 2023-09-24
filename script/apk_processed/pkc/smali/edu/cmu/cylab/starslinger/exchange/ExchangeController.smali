.class public Ledu/cmu/cylab/starslinger/exchange/ExchangeController;
.super Ljava/lang/Object;
.source "ExchangeController.java"


# instance fields
.field private mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

.field private mCtx:Landroid/content/Context;

.field private mErrMsg:Ljava/lang/String;

.field private mError:Z

.field private mHost:Ljava/lang/String;

.field private protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mError:Z

    .line 45
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mHost:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mCtx:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mHost:Ljava/lang/String;

    const-string p2, ""

    .line 52
    iput-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mError:Z

    .line 56
    new-instance p2, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/CommType;->BATCH:Ledu/cmu/cylab/starslinger/exchange/CommType;

    invoke-direct {p2, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;-><init>(Ledu/cmu/cylab/starslinger/exchange/CommType;)V

    iput-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    .line 57
    iget-object p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mHost:Ljava/lang/String;

    invoke-static {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->getServerInstance(Landroid/content/Context;Ljava/lang/String;)Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    return-void
.end method

.method private static fibonacci(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, p0, -0x1

    .line 84
    invoke-static {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->fibonacci(I)I

    move-result v0

    add-int/lit8 p0, p0, -0x2

    invoke-static {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->fibonacci(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private handleError(I)Z
    .locals 1

    .line 61
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mError:Z

    const/4 p1, 0x0

    return p1
.end method

.method private handleError(Ljava/lang/Exception;)Z
    .locals 0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mError:Z

    const/4 p1, 0x0

    return p1
.end method

.method private syncCommitments()Z
    .locals 12

    .line 148
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    :goto_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isCommitPhaseComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v8

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-int/lit8 v10, v0, 0x1

    .line 159
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageCommit(Z)[B

    move-result-object v0

    .line 164
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_commits([B)[B

    move-result-object v0

    .line 168
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageCommit([B)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v0, v6

    const-wide/32 v0, 0x1d4c0

    cmp-long v11, v4, v0

    if-lez v11, :cond_1

    .line 172
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 175
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isCommitPhaseComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, v10

    move-wide v4, v6

    .line 176
    invoke-virtual/range {v0 .. v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ledu/cmu/cylab/starslinger/exchange/AllMembersMustUpgradeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/HashValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v9

    .line 190
    :catch_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 188
    :catch_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_AllMembersMustUpgrade:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 186
    :catch_2
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 184
    :catch_3
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_NoDataToExchange:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    .line 182
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_5
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private syncData()Z
    .locals 12

    .line 198
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 200
    :goto_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isDataPhaseComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v8

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-int/lit8 v10, v0, 0x1

    .line 209
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageData(Z)[B

    move-result-object v0

    .line 214
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_data([B)[B

    move-result-object v0

    .line 218
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageData([B)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v0, v6

    const-wide/32 v0, 0x1d4c0

    cmp-long v11, v4, v0

    if-lez v11, :cond_1

    .line 222
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 225
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isDataPhaseComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, v10

    move-wide v4, v6

    .line 226
    invoke-virtual/range {v0 .. v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ledu/cmu/cylab/starslinger/exchange/HashValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/AssignDecoysException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v9

    .line 241
    :catch_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 239
    :catch_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_InvalidCommitVerify:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 237
    :catch_2
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 235
    :catch_3
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    .line 233
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_5
    move-exception v0

    .line 231
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private syncHalfKeysAndGenerateSecretKey()Z
    .locals 12

    .line 366
    :try_start_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nodesPrep()V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 370
    :goto_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isNodePhaseComplete()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 371
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 375
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-int/lit8 v9, v1, 0x1

    .line 378
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageNode()[B

    move-result-object v1

    .line 380
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v2, v1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_keynodes([B)[B

    move-result-object v1

    .line 383
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageNode([B)V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    sub-long v10, v1, v7

    const-wide/32 v1, 0x1d4c0

    cmp-long v3, v10, v1

    if-lez v3, :cond_1

    .line 387
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 392
    :cond_1
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nodeMustBackoff()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move v2, v9

    move-wide v3, v4

    move-wide v5, v7

    .line 393
    invoke-virtual/range {v1 .. v6}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V

    :cond_2
    move v1, v9

    goto :goto_0

    .line 397
    :cond_3
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->nodesFinal()V
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 410
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 408
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_2
    move-exception v0

    .line 406
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_3
    move-exception v0

    .line 404
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    .line 402
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_5
    move-exception v0

    .line 400
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private syncMatchNonce()Z
    .locals 12

    .line 419
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 421
    :goto_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isMatchPhaseComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v8

    .line 426
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-int/lit8 v10, v0, 0x1

    .line 430
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageMatch(Z)[B

    move-result-object v0

    .line 435
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_match([B)[B

    move-result-object v0

    .line 439
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageMatch([B)V

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v0, v6

    const-wide/32 v0, 0x1d4c0

    cmp-long v11, v4, v0

    if-lez v11, :cond_1

    .line 443
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 446
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isMatchPhaseComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, v10

    move-wide v4, v6

    .line 447
    invoke-virtual/range {v0 .. v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ledu/cmu/cylab/starslinger/exchange/HashValidationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v9

    .line 472
    :catch_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_InvalidCommitVerify:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 470
    :catch_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 468
    :catch_2
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    :catch_3
    move-exception v0

    .line 466
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    .line 464
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_5
    move-exception v0

    .line 462
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_6
    move-exception v0

    .line 460
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_7
    move-exception v0

    .line 458
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_8
    move-exception v0

    .line 456
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_9
    move-exception v0

    .line 454
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_a
    move-exception v0

    .line 452
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method private syncSigs()Z
    .locals 12

    .line 311
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 313
    :goto_0
    iget-object v2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isSigsPhaseComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    return v8

    .line 318
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-int/lit8 v10, v0, 0x1

    .line 322
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, v1, v9}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageSig(ZZ)[B

    move-result-object v0

    .line 327
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_signatures([B)[B

    move-result-object v0

    .line 331
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageSig([B)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v0, v6

    const-wide/32 v0, 0x1d4c0

    cmp-long v11, v4, v0

    if-lez v11, :cond_1

    .line 335
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 338
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isSigsPhaseComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, v10

    move-wide v4, v6

    .line 339
    invoke-virtual/range {v0 .. v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ledu/cmu/cylab/starslinger/exchange/MoreDataThanUsersException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ledu/cmu/cylab/starslinger/exchange/HashValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ledu/cmu/cylab/starslinger/exchange/OtherGroupCommitDifferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/InvalidCommitVerifyException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v10

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v9

    .line 354
    :catch_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_InvalidCommitVerify:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 352
    :catch_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_OtherGroupCommitDiffer:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 350
    :catch_2
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 348
    :catch_3
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MoreDataThanUsers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    :catch_4
    move-exception v0

    .line 346
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_5
    move-exception v0

    .line 344
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cancelProtocol()V
    .locals 2

    .line 577
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public decryptMemData()[[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->endProtocol()[[B

    move-result-object v0

    return-object v0
.end method

.method public doCreateSharedSecretGetNodesAndMatchNonces()Z
    .locals 2

    .line 494
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->syncHalfKeysAndGenerateSecretKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 502
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->syncMatchNonce()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public doGenerateCommitment(I[B)Z
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->startProtocol(I[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 123
    :catch_0
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_NoDataToExchange:I

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result p1

    return p1

    :catch_1
    move-exception p1

    .line 121
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_2
    move-exception p1

    .line 119
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_3
    move-exception p1

    .line 117
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_4
    move-exception p1

    .line 115
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_5
    move-exception p1

    .line 113
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_6
    move-exception p1

    .line 111
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1

    :catch_7
    move-exception p1

    .line 109
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public doGetCommitmentsGetData()Z
    .locals 2

    .line 250
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->syncCommitments()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->syncData()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public doRequestUserId()Z
    .locals 2

    .line 130
    :try_start_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageAssign()[B

    move-result-object v0

    .line 133
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->assign_user([B)[B

    move-result-object v0

    .line 136
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->inMessageAssign([B)Z

    move-result v0
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ledu/cmu/cylab/starslinger/exchange/NoDataToExchangeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 141
    :catch_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_NoDataToExchange:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 139
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public doSendInvalidSignature()Z
    .locals 11

    .line 267
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isSigsBadPhaseComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v8

    .line 274
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    add-int/lit8 v9, v0, 0x1

    .line 278
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, v1, v8}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->outMessageSig(ZZ)[B

    move-result-object v0

    .line 283
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v1, v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->sync_signatures([B)[B

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long v4, v0, v6

    const-wide/32 v0, 0x1d4c0

    cmp-long v10, v4, v0

    if-lez v10, :cond_1

    .line 290
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_TimeoutWaitingForAllMembers:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0

    return v0

    .line 293
    :cond_1
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->isSigsBadPhaseComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move v1, v9

    move-wide v4, v6

    .line 294
    invoke-virtual/range {v0 .. v5}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doSleepBackoff(IJJ)V

    :cond_2
    move v0, v9

    goto :goto_0

    .line 299
    :cond_3
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_LocalGroupCommitDiffer:I

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(I)Z

    move-result v0
    :try_end_0
    .catch Ledu/cmu/cylab/starslinger/exchange/ExchangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 304
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0

    :catch_1
    move-exception v0

    .line 302
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->handleError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public doSendValidSignatureGetSignatures()Z
    .locals 1

    .line 481
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->syncSigs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public doSleepBackoff(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p2

    sub-long p2, v0, p4

    .line 94
    invoke-static {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->fibonacci(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p4, p1

    add-long v0, p2, p4

    const-wide/32 v4, 0x1d4c0

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    sub-long p4, v4, p2

    :cond_0
    cmp-long p1, v2, p4

    if-gez p1, :cond_1

    sub-long p1, p4, v2

    .line 100
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    return-void
.end method

.method public endProtocol()V
    .locals 1

    .line 591
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->shutdownConnection()V

    :cond_0
    return-void
.end method

.method public getDecoyHash(I)[B
    .locals 1

    .line 517
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getDecoyHash(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()[B
    .locals 1

    .line 525
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getHash()[B

    move-result-object v0

    return-object v0
.end method

.method public getNumUsers()I
    .locals 1

    .line 529
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsers()I

    move-result v0

    return v0
.end method

.method public getNumUsersCommit()I
    .locals 1

    .line 557
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsersCommit()I

    move-result v0

    return v0
.end method

.method public getNumUsersData()I
    .locals 1

    .line 561
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsersData()I

    move-result v0

    return v0
.end method

.method public getNumUsersKeyNodes()I
    .locals 1

    .line 569
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsersKeyNodes()I

    move-result v0

    return v0
.end method

.method public getNumUsersMatchNonces()I
    .locals 1

    .line 573
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsersMatchNonces()I

    move-result v0

    return v0
.end method

.method public getNumUsersSigs()I
    .locals 1

    .line 565
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getNumUsersSigs()I

    move-result v0

    return v0
.end method

.method public getRandomPos(I)I
    .locals 1

    .line 597
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getRandomPos(I)I

    move-result p1

    return p1
.end method

.method public getStatusBanner(Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 1

    .line 613
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getStatusBanner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId()I
    .locals 1

    .line 537
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getUserId()I

    move-result v0

    return v0
.end method

.method public getUserIdLink()I
    .locals 1

    .line 553
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->getUserIdLink()I

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 583
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mConnect:Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;->isCancelable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->mError:Z

    return v0
.end method

.method public setHashSelection(I)V
    .locals 1

    .line 609
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->setHashSelection(I)V

    return-void
.end method

.method public setNumUsers(I)V
    .locals 1

    .line 533
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->setNumUsers(I)V

    return-void
.end method

.method public setUserIdLink(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->protocol:Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;

    invoke-virtual {v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeProtocol;->setUserIdLink(I)V

    return-void
.end method
