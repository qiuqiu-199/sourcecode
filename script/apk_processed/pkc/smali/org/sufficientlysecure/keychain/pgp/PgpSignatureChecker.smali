.class Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;
.super Ljava/lang/Object;
.source "PgpSignatureChecker.java"


# instance fields
.field private mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

.field private final securityProblemBuilder:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

.field private signature:Lorg/bouncycastle/openpgp/PGPSignature;

.field private signatureIndex:I

.field private final signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

.field private signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 64
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 67
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    .line 68
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSenderAddress(Ljava/lang/String;)V

    .line 70
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->securityProblemBuilder:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;---><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Ljava/lang/String;Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkKeySecurity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 143
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 144
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkForSecurityProblems(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_KEY:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v4, v1, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 147
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->securityProblemBuilder:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addSigningKeyProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$KeySecurityProblem;)V

    .line 148
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setInsecure(Z)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->checkKeySecurity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private findAvailableSignature(Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 161
    :try_start_0
    invoke-virtual {v9, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->getKeyID()J

    move-result-wide v2

    .line 162
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v4, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canSign()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    iput v1, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureIndex:I

    .line 172
    iput-object v2, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 173
    invoke-virtual {v9, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v2

    iput-object v2, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v2, "key not found, trying next signature..."

    .line 176
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->findAvailableSignature(Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private findAvailableSignature(Lorg/bouncycastle/openpgp/PGPSignatureList;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-virtual {v9}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 186
    :try_start_0
    invoke-virtual {v9, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v2

    .line 187
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v4, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedPublicKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->getPublicKey(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->canSign()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 196
    :cond_1
    iput v1, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureIndex:I

    .line 197
    iput-object v2, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    .line 198
    invoke-virtual {v9, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v2

    iput-object v2, v8, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v2, "key not found, trying next signature..."

    .line 201
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->findAvailableSignature(Lorg/bouncycastle/openpgp/PGPSignatureList;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getLengthWithoutWhiteSpace([B)I
    .locals 5

    move-object/16 v2, p0

    .line 373
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 375
    aget-byte v1, v2, v0

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->isWhiteSpace(B)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->getLengthWithoutWhiteSpace([B)I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static isWhiteSpace(B)Z
    .locals 4

    move/16 v1, p0

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    const/16 v0, 0x20

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->isWhiteSpace(B)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 315
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->getLengthWithoutWhiteSpace([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 317
    invoke-virtual {v2, v3, v1, v0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 341
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v3

    .line 346
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 348
    :cond_2
    :goto_0
    invoke-static {v2, v0, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v3

    :goto_1
    if-gez v0, :cond_3

    const/4 v3, -0x1

    :cond_3
    return v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 323
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 328
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2

    .line 329
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 331
    :cond_1
    invoke-static {v2, v0, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    return v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 362
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    if-ne v3, v1, :cond_0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 365
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 366
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_0
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->readPastEOL(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;
    .locals 4

    move-object/16 v1, p0

    .line 306
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->build()Lorg/openintents/openpgp/OpenPgpSignatureResult;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->getSignatureResult()Lorg/openintents/openpgp/OpenPgpSignatureResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSigningFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 302
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getFingerprint()[B

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->getSigningFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method initializeOnePassSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 108
    instance-of v0, v4, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {v5, v0, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 114
    check-cast v4, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;

    .line 115
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->findAvailableSignature(Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;)V

    .line 117
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 120
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->initValid(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 122
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v0, "BC"

    .line 124
    invoke-virtual {v4, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v4

    .line 125
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 127
    invoke-direct {v3, v5, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->checkKeySecurity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 131
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureAvailable(Z)V

    .line 132
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKnownKey(Z)V

    .line 133
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/openpgp/PGPOnePassSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKeyId(J)V

    :cond_2
    :goto_0
    return v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->initializeOnePassSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method initializeSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 75
    instance-of v0, v4, Lorg/bouncycastle/openpgp/PGPSignatureList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast v4, Lorg/bouncycastle/openpgp/PGPSignatureList;

    .line 80
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->findAvailableSignature(Lorg/bouncycastle/openpgp/PGPSignatureList;)V

    .line 82
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 85
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->initValid(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;)V

    .line 87
    new-instance v4, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v0, "BC"

    .line 89
    invoke-virtual {v4, v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v4

    .line 90
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/bouncycastle/openpgp/PGPSignature;->init(Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    .line 91
    invoke-direct {v3, v5, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->checkKeySecurity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSignatureList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v2}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureAvailable(Z)V

    .line 97
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKnownKey(Z)V

    .line 98
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v4, v1}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/openpgp/PGPSignature;->getKeyID()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setKeyId(J)V

    :cond_2
    :goto_0
    return v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->initializeSignature(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isInitialized()Z
    .locals 4

    move-object/16 v1, p0

    .line 153
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signingKey:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->isInitialized()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateSignatureData([BII)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 228
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0, v2, v3, p0}, Lorg/bouncycastle/openpgp/PGPSignature;->update([BII)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    invoke-virtual {v0, v2, v3, p0}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->update([BII)V

    :cond_1
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->updateSignatureData([BII)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateSignatureWithCleartext([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 208
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    invoke-static {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->readInputLine(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;)I

    move-result v1

    .line 214
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 217
    invoke-static {v5, v1, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->readInputLine(Ljava/io/ByteArrayOutputStream;ILjava/io/InputStream;)I

    move-result v1

    .line 219
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 220
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/bouncycastle/openpgp/PGPSignature;->update(B)V

    .line 222
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->processLine(Lorg/bouncycastle/openpgp/PGPSignature;[B)V

    goto :goto_0

    :cond_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->updateSignatureWithCleartext([B)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignature(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 237
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_CHECK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5, v0, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 240
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSignature;->verify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v5, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 244
    :cond_0
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v5, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 248
    :goto_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    .line 249
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSignature;->getHashAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkSignatureAlgorithmForSecurityProblems(I)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 251
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_HASH_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    const/4 v3, 0x1

    add-int/2addr v6, v3

    invoke-virtual {v5, v2, v6}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 252
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->securityProblemBuilder:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-virtual {v5, v1}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V

    .line 253
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setInsecure(Z)V

    .line 256
    :cond_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    iget-object v6, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signature:Lorg/bouncycastle/openpgp/PGPSignature;

    invoke-virtual {v6}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureTimestamp(Ljava/util/Date;)V

    .line 257
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setValidSignature(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->verifySignature(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method verifySignatureOnePass(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move/16 p0, p3

    .line 263
    instance-of v0, v5, Lorg/bouncycastle/openpgp/PGPSignatureList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_SIGNATURE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v5, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v1

    .line 267
    :cond_0
    check-cast v5, Lorg/bouncycastle/openpgp/PGPSignatureList;

    .line 268
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v0

    iget v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureIndex:I

    if-gt v0, v2, :cond_1

    .line 269
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_ERROR_NO_SIGNATURE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v6, v5, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return v1

    .line 275
    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignatureList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureIndex:I

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/openpgp/PGPSignatureList;->get(I)Lorg/bouncycastle/openpgp/PGPSignature;

    move-result-object v5

    .line 278
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    invoke-virtual {v0, v5}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->verify(Lorg/bouncycastle/openpgp/PGPSignature;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_OK:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_0

    .line 282
    :cond_2
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_CLEAR_SIGNATURE_BAD:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 286
    :goto_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->onePassSignature:Lorg/bouncycastle/openpgp/PGPOnePassSignature;

    .line 287
    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPOnePassSignature;->getHashAlgorithm()I

    move-result v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSecurityConstants;->checkSignatureAlgorithmForSecurityProblems(I)Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 289
    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DC_INSECURE_HASH_ALGO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    add-int/2addr p0, v1

    invoke-virtual {v6, v3, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 290
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->securityProblemBuilder:Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;

    invoke-virtual {v6, v2}, Lorg/sufficientlysecure/keychain/pgp/DecryptVerifySecurityProblem$DecryptVerifySecurityProblemBuilder;->addSignatureSecurityProblem(Lorg/sufficientlysecure/keychain/pgp/SecurityProblem$InsecureSigningAlgorithm;)V

    .line 291
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setInsecure(Z)V

    .line 294
    :cond_3
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSignature;->getCreationTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setSignatureTimestamp(Ljava/util/Date;)V

    .line 295
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;->signatureResultBuilder:Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/pgp/OpenPgpSignatureResultBuilder;->setValidSignature(Z)V

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/pgp/PgpSignatureChecker;--->verifySignatureOnePass(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
