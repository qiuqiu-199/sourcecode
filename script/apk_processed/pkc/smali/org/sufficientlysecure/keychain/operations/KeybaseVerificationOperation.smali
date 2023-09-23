.class public Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "KeybaseVerificationOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 62
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFlattenedProverLog(Lcom/textuality/keybase/lib/prover/Prover;)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const-string v0, ""

    .line 183
    invoke-virtual {v4}, Lcom/textuality/keybase/lib/prover/Prover;->getLog()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;--->getFlattenedProverLog(Lcom/textuality/keybase/lib/prover/Prover;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    .line 70
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->isOrbotInRequiredState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createOrbotRequiredOperation()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    invoke-direct {v10, v0, v1, v11}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-object v10

    .line 76
    :cond_0
    iget-object v11, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/Preferences;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v11

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getParcelableProxy()Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    move-result-object v11

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v11

    .line 81
    :goto_0
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mRequiredFingerprint:Ljava/lang/String;

    .line 83
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 84
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_VERIFICATION:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v5, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 87
    :try_start_0
    new-instance v2, Lcom/textuality/keybase/lib/KeybaseQuery;

    new-instance v4, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;-><init>()V

    invoke-direct {v2, v4}, Lcom/textuality/keybase/lib/KeybaseQuery;-><init>(Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;)V

    .line 88
    invoke-virtual {v2, v11}, Lcom/textuality/keybase/lib/KeybaseQuery;->setProxy(Ljava/net/Proxy;)V

    .line 90
    iget-object v10, v10, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;->mKeybaseProof:Ljava/lang/String;

    .line 91
    new-instance v11, Lcom/textuality/keybase/lib/Proof;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v4}, Lcom/textuality/keybase/lib/Proof;-><init>(Lorg/json/JSONObject;)V

    .line 92
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    const v4, 0x7f110858

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v6, 0x64

    invoke-interface {v10, v4, v5, v6}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    .line 94
    invoke-static {v11}, Lcom/textuality/keybase/lib/prover/Prover;->findProverFor(Lcom/textuality/keybase/lib/Proof;)Lcom/textuality/keybase/lib/prover/Prover;

    move-result-object v10

    if-nez v10, :cond_2

    .line 97
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_NO_PROVER:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v3, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v11}, Lcom/textuality/keybase/lib/Proof;->getPrettyName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v5

    .line 97
    invoke-virtual {v1, v10, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 99
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 102
    :cond_2
    invoke-virtual {v10, v2}, Lcom/textuality/keybase/lib/prover/Prover;->fetchProofData(Lcom/textuality/keybase/lib/KeybaseQuery;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 103
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_FETCH_PROOF:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 104
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 107
    :cond_3
    invoke-virtual {v10, v0}, Lcom/textuality/keybase/lib/prover/Prover;->checkFingerprint(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 108
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_FINGERPRINT_MISMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 109
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 112
    :cond_4
    invoke-virtual {v10}, Lcom/textuality/keybase/lib/prover/Prover;->dnsTxtCheckRequired()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 114
    new-instance v2, Lde/measite/minidns/Client;

    invoke-direct {v2}, Lde/measite/minidns/Client;-><init>()V

    new-instance v4, Lde/measite/minidns/Question;

    sget-object v6, Lde/measite/minidns/Record$TYPE;->TXT:Lde/measite/minidns/Record$TYPE;

    invoke-direct {v4, v11, v6}, Lde/measite/minidns/Question;-><init>(Ljava/lang/String;Lde/measite/minidns/Record$TYPE;)V

    invoke-virtual {v2, v4}, Lde/measite/minidns/Client;->query(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;

    move-result-object v11

    if-nez v11, :cond_5

    .line 116
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_DNS_FAIL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v11, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 117
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_SPECIFIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v0, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    .line 118
    invoke-direct {v9, v10}, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->getFlattenedProverLog(Lcom/textuality/keybase/lib/prover/Prover;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 117
    invoke-virtual {v1, v11, v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 119
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 121
    :cond_5
    invoke-virtual {v11}, Lde/measite/minidns/DNSMessage;->getAnswers()[Lde/measite/minidns/Record;

    move-result-object v11

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    array-length v4, v11

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_7

    aget-object v7, v11, v6

    .line 124
    invoke-virtual {v7}, Lde/measite/minidns/Record;->getPayload()Lde/measite/minidns/record/Data;

    move-result-object v7

    .line 125
    instance-of v8, v7, Lde/measite/minidns/record/TXT;

    if-eqz v8, :cond_6

    .line 126
    check-cast v7, Lde/measite/minidns/record/TXT;

    invoke-virtual {v7}, Lde/measite/minidns/record/TXT;->getExtents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 129
    :cond_7
    invoke-virtual {v10, v2}, Lcom/textuality/keybase/lib/prover/Prover;->checkDnsTxt(Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 130
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_SPECIFIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v3, [Ljava/lang/Object;

    .line 131
    invoke-direct {v9, v10}, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->getFlattenedProverLog(Lcom/textuality/keybase/lib/prover/Prover;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v5

    .line 130
    invoke-virtual {v1, v11, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 132
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 136
    :cond_8
    invoke-virtual {v10}, Lcom/textuality/keybase/lib/prover/Prover;->getPgpMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 137
    invoke-virtual {v10}, Lcom/textuality/keybase/lib/prover/Prover;->rawMessageCheckRequired()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 138
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lorg/bouncycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 141
    invoke-virtual {v10, v2}, Lcom/textuality/keybase/lib/prover/Prover;->checkRawMessageBytes(Ljava/io/InputStream;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 142
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_SPECIFIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v3, [Ljava/lang/Object;

    .line 143
    invoke-direct {v9, v10}, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->getFlattenedProverLog(Lcom/textuality/keybase/lib/prover/Prover;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v5

    .line 142
    invoke-virtual {v1, v11, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 144
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 148
    :cond_9
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v4, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    iget-object v7, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v2, v4, v6, v7}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 150
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v4

    .line 151
    invoke-virtual {v4, v11}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setInputBytes([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v11

    .line 152
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v11

    .line 154
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    move-result-object v11

    .line 156
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->success()Z

    move-result v2

    if-nez v2, :cond_a

    .line 157
    invoke-virtual {v1, v11, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 158
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 161
    :cond_a
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openintents/openpgp/OpenPgpSignatureResult;->getKeyId()J

    move-result-wide v6

    .line 162
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getFingerprintByKeyId(J)[B

    move-result-object v2

    .line 163
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertFingerprintToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 164
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_FINGERPRINT_MISMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 165
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 168
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;->getOutputBytes()[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v0}, Lcom/textuality/keybase/lib/prover/Prover;->validate(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 169
    sget-object v10, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_PAYLOAD_MISMATCH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v1, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 170
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    .line 173
    :cond_c
    new-instance v11, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v11, v5, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Lcom/textuality/keybase/lib/prover/Prover;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v10

    .line 176
    sget-object v11, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_KEYBASE_ERROR_SPECIFIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v5

    invoke-virtual {v1, v11, v3, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 177
    new-instance v10, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    invoke-direct {v10, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v10

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;--->execute(Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 58
    check-cast p1, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;->execute(Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/KeybaseVerificationResult;

    move-result-object p1

    return-object p1
.end method
