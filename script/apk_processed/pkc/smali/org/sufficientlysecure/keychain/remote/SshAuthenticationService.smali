.class public Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;
.super Landroid/app/Service;
.source "SshAuthenticationService.java"


# static fields
.field private static final HASHALGORITHM_NONE:I = -0xfd

.field private static final INVALID_API_VERSION:I = -0x1

.field private static final SUPPORTED_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

.field private mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

.field private mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private final mSSHAgent:Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->SUPPORTED_VERSIONS:Ljava/util/List;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 62
    invoke-direct {v1}, Landroid/app/Service;-><init>()V

    .line 83
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;-><init>(Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mSSHAgent:Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private authenticate(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 121
    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->checkForKeyId(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "key_id"

    .line 129
    invoke-virtual {v11, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 132
    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getHashAlgorithm(Landroid/content/Intent;)I

    move-result v2

    const/16 v3, -0xfd

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const-string v11, "No valid hash algorithm!"

    .line 134
    invoke-direct {v10, v4, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    :cond_1
    const-string v3, "challenge"

    .line 137
    invoke-virtual {v11, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_b

    .line 138
    array-length v5, v3

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 143
    :cond_2
    invoke-static {}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;->builder()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    move-result-object v4

    .line 144
    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setAuthenticationMasterKeyId(J)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    const/4 v5, 0x0

    .line 151
    :try_start_0
    iget-object v6, v10, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v6, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretAuthenticationId(J)J

    move-result-wide v6

    .line 153
    invoke-direct {v10, v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v8

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getAlgorithm()I

    move-result v8

    const/16 v9, 0x13

    if-ne v8, v9, :cond_3

    .line 155
    invoke-direct {v10, v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setAuthenticationSubKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    .line 164
    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getAllowedKeyIds()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setAllowedAuthenticationKeyIds(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    .line 166
    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->setHashAlgorithm(I)Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;

    .line 168
    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    if-nez v0, :cond_4

    .line 171
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    .line 175
    :cond_4
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->build()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;->createAuthenticationParcel(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;

    move-result-object v1

    .line 178
    new-instance v3, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;

    iget-object v6, v10, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-direct {v3, v10, v6}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    .line 179
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData$Builder;->build()Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationOperation;->execute(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/ssh/AuthenticationParcel;)Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->isPending()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    .line 183
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v2, v11, v1, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->requiredInputPi(Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 186
    invoke-direct {v10, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->packagePendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    .line 187
    :cond_5
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->success()Z

    move-result v11

    const/4 v1, 0x2

    if-eqz v11, :cond_a

    .line 188
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->getSignature()[B

    move-result-object v11

    const/4 v0, 0x1

    if-eq v8, v0, :cond_9

    const/4 v0, 0x3

    if-eq v8, v0, :cond_9

    const/16 v0, 0x11

    if-eq v8, v0, :cond_8

    if-eq v8, v9, :cond_7

    const/16 v0, 0x16

    if-eq v8, v0, :cond_6

    .line 206
    :try_start_1
    new-instance v11, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Unknown algorithm"

    invoke-direct {v11, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_0
    move-exception v11

    goto :goto_1

    .line 193
    :cond_6
    invoke-static {v11}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getSshSignatureEdDsa([B)[B

    move-result-object v11

    goto :goto_0

    .line 200
    :cond_7
    invoke-static {v11, v5}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getSshSignatureEcDsa([BLjava/lang/String;)[B

    move-result-object v11

    goto :goto_0

    .line 203
    :cond_8
    invoke-static {v11}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getSshSignatureDsa([B)[B

    move-result-object v11

    goto :goto_0

    .line 197
    :cond_9
    invoke-static {v11, v2}, Lorg/sufficientlysecure/keychain/ssh/signature/SshSignatureConverter;->getSshSignatureRsa([BI)[B

    move-result-object v11
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :goto_0
    new-instance v0, Lorg/openintents/ssh/authentication/response/SigningResponse;

    invoke-direct {v0, v11}, Lorg/openintents/ssh/authentication/response/SigningResponse;-><init>([B)V

    invoke-virtual {v0}, Lorg/openintents/ssh/authentication/response/SigningResponse;->toIntent()Landroid/content/Intent;

    move-result-object v11

    return-object v11

    :goto_1
    const-string v0, "Error converting signature"

    .line 209
    invoke-direct {v10, v1, v0, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    .line 214
    :cond_a
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ssh/AuthenticationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v11

    .line 215
    iget-object v11, v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->getMsgId()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v1, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    :catch_1
    move-exception v11

    const/16 v0, -0x82

    const-string v1, "Key for master key id not found"

    .line 158
    invoke-direct {v10, v0, v1, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    :cond_b
    :goto_2
    const-string v11, "No challenge given"

    .line 139
    invoke-direct {v10, v4, v11}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    return-object v11

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->authenticate(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkForKeyId(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 220
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getKeyId(Landroid/content/Intent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    const/16 v5, -0x81

    const-string v0, "No key id in request"

    .line 222
    invoke-direct {v4, v5, v0}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v5, 0x0

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->checkForKeyId(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 97
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->executeInternal(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->checkIntent(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    const-string v0, "No parameter bundle"

    .line 399
    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v0, "api_version"

    const/4 v1, -0x1

    .line 403
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 404
    sget-object v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->SUPPORTED_VERSIONS:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible API versions:\nused : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "api_version"

    .line 406
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nsupported : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->SUPPORTED_VERSIONS:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 409
    invoke-direct {v3, v0, v4}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    .line 413
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->isAllowedOrReturnIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const/4 v4, 0x0

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->checkRequirements(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createErrorResult(ILjava/lang/String;)Landroid/content/Intent;
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x0

    .line 422
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v6, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "error"

    .line 424
    new-instance v3, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;

    invoke-direct {v3, v5, v6}, Lorg/openintents/ssh/authentication/SshAuthenticationApiError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "result_code"

    .line 425
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private executeInternal(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 106
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x72a81707

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    const v2, -0x1b1dcf1d

    if-eq v1, v2, :cond_2

    const v2, 0x5c448364

    if-eq v1, v2, :cond_1

    const v2, 0x718ef3b0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "org.openintents.ssh.action.GET_SSH_PUBLIC_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v1, "org.openintents.ssh.action.SIGN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "org.openintents.ssh.action.SELECT_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "org.openintents.ssh.action.GET_PUBLIC_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/16 v6, -0x80

    const-string v0, "Unknown action"

    .line 116
    invoke-direct {v5, v6, v0}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 114
    :pswitch_0
    invoke-direct {v5, v6, v3}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getAuthenticationPublicKey(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 112
    :pswitch_1
    invoke-direct {v5, v6, v4}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getAuthenticationPublicKey(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 110
    :pswitch_2
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getAuthenticationKey(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 108
    :pswitch_3
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->authenticate(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->executeInternal(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAllowedKeyIds()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 390
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getAllowedKeyIdsForApp(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getAllowedKeyIds()Ljava/util/HashSet;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAuthenticationKey(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 263
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getKeyId(Landroid/content/Intent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 268
    :try_start_0
    invoke-direct {v5, v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getDescription(J)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    new-instance v2, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v6}, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/openintents/ssh/authentication/response/KeySelectionResponse;->toIntent()Landroid/content/Intent;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v6

    const/16 v0, -0x82

    const-string v1, "Could not create description"

    .line 270
    invoke-direct {v5, v0, v1, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    .line 276
    :cond_0
    invoke-direct {v5, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->redirectToKeySelection(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getAuthenticationKey(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAuthenticationPublicKey(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 295
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getKeyId(Landroid/content/Intent;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    if-eqz v6, :cond_0

    .line 299
    :try_start_0
    invoke-direct {v4, v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getSSHPublicKey(J)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_2

    .line 301
    :cond_0
    invoke-direct {v4, v0, v1}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getX509PublicKey(J)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_0
    const/16 v6, -0xfe

    const-string v0, "Algorithm not supported"

    .line 310
    invoke-direct {v4, v6, v0, v5}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :goto_1
    const/16 v6, -0x83

    const-string v0, "Authentication key for master key id not found in keychain"

    .line 307
    invoke-direct {v4, v6, v0, v5}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :goto_2
    const/16 v6, -0x82

    const-string v0, "Key for master key id not found"

    .line 304
    invoke-direct {v4, v6, v0, v5}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_1
    const/16 v5, -0x81

    const-string v6, "No key id in request"

    .line 314
    invoke-direct {v4, v5, v6}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createErrorResult(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getAuthenticationPublicKey(Landroid/content/Intent;Z)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getDescription(J)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 379
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    const-string v1, ""

    .line 382
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretAuthenticationId(J)J

    move-result-wide v4

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getDescription(J)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getHashAlgorithm(Landroid/content/Intent;)I
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "hash_algorithm"

    const/16 v1, -0xfd

    .line 242
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 v3, 0x3

    return v3

    :pswitch_1
    const/16 v3, 0xa

    return v3

    :pswitch_2
    const/16 v3, 0x9

    return v3

    :pswitch_3
    const/16 v3, 0x8

    return v3

    :pswitch_4
    const/16 v3, 0xb

    return v3

    :pswitch_5
    const/4 v3, 0x2

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getHashAlgorithm(Landroid/content/Intent;)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyId(Landroid/content/Intent;)J
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    const-string v0, "key_id"

    .line 229
    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v0, 0x0

    if-eqz v5, :cond_0

    .line 233
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    return-wide v0

    :cond_0
    :goto_0
    return-wide v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getKeyId(Landroid/content/Intent;)J"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 370
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 371
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 373
    new-instance v3, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;-><init>()V

    throw v3

    .line 375
    :cond_0
    invoke-virtual {v0, v3, v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v3

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_auth_key_int()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSSHPublicKey(J)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;,
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 356
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    .line 358
    new-instance v3, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;-><init>(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 360
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SshPublicKey;->getEncodedKey()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    new-instance v3, Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;

    invoke-direct {v3, v2}, Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/openintents/ssh/authentication/response/SshPublicKeyResponse;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const-string v0, "Error converting public key to SSH format"

    .line 362
    invoke-direct {v1, v3, v0, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getSSHPublicKey(J)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getX509PublicKey(J)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException;,
            Lorg/sufficientlysecure/keychain/pgp/exception/PgpKeyNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 325
    :try_start_0
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getJcaPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 332
    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->translateAlgorithm(Ljava/lang/String;)I

    move-result v2

    .line 334
    new-instance v0, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;

    invoke-direct {v0, v3, v2}, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;-><init>([BI)V

    invoke-virtual {v0}, Lorg/openintents/ssh/authentication/response/PublicKeyResponse;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    const-string v0, "Error converting public key"

    .line 327
    invoke-direct {v1, v3, v0, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->createExceptionErrorResult(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->getX509PublicKey(J)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private packagePendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    const/4 v2, 0x2

    .line 288
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "intent"

    .line 290
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->packagePendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private redirectToKeySelection(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 281
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;->getCurrentCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v1, v3, v0}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;->createSelectAuthenticationKeyIdPendingIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 283
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->packagePendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->redirectToKeySelection(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private translateAlgorithm(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 338
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x10992

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v1, :cond_3

    const v1, 0x13e20

    if-eq v0, v1, :cond_2

    const v1, 0x3ebd434

    if-eq v0, v1, :cond_1

    const v1, 0x3fad473

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EdDSA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "ECDSA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "RSA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "DSA"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 348
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error matching key algorithm to API supported algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v5

    :pswitch_2
    return v4

    :pswitch_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->translateAlgorithm(Ljava/lang/String;)I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 93
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mSSHAgent:Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->onBind(Landroid/content/Intent;)Landroid/os/IBinder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate()V
    .locals 5

    move-object/16 v2, p0

    .line 75
    invoke-super {v2}, Landroid/app/Service;->onCreate()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;--->onCreate()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/ApiAppDao;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPermissionHelper:Lorg/sufficientlysecure/keychain/remote/ApiPermissionHelper;

    .line 77
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 78
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 80
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->mApiPendingIntentFactory:Lorg/sufficientlysecure/keychain/remote/ApiPendingIntentFactory;

    return-void
.end method
