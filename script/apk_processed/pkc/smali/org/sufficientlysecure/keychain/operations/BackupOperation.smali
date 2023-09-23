.class public Lorg/sufficientlysecure/keychain/operations/BackupOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "BackupOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "[a-zA-Z0-9_-]+: [^\\n]+"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->HEADER_PATTERN:Ljava/util/regex/Pattern;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 82
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 87
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private addExtraHeadersToStream(Lorg/bouncycastle/bcpg/ArmoredOutputStream;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/bcpg/ArmoredOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 314
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad header format"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v1, 0x3a

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->addExtraHeadersToStream(Lorg/bouncycastle/bcpg/ArmoredOutputStream;Ljava/util/List;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encryptBackupData(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;Landroid/net/Uri;J)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-wide/16 p2, p5

    .line 164
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    iget-object v2, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 166
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    move-result-object v1

    .line 167
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->getPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v8

    .line 168
    invoke-virtual {v1, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setSymmetricPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 169
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getEnableAsciiArmorOutput()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setEnableAsciiArmorOutput(Z)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v8, :cond_0

    .line 170
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/util/Numeric9x4PassphraseUtil;->isNumeric9x4Passphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    const-string v4, "numeric9x4"

    .line 172
    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setPassphraseFormat(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 173
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/Passphrase;->getCharArray()[C

    move-result-object v8

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v5, v8, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v8, v8, v3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->setPassphraseBegin(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;

    .line 176
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v8

    .line 178
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 181
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    array-length v4, v1

    if-ne v4, v3, :cond_2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backup_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 186
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backup_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExportSecret()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ".sec.asc"

    goto :goto_2

    :cond_3
    const-string v1, ".pub.asc"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v2, Lorg/sufficientlysecure/keychain/util/InputData;

    invoke-direct {v2, p1, p2, p3, v1}, Lorg/sufficientlysecure/keychain/util/InputData;-><init>(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 194
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    if-nez p0, :cond_6

    .line 196
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "If output uri is not set, outputStream must not be null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    if-eqz p0, :cond_5

    .line 201
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "If output uri is set, outputStream must null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 203
    :cond_5
    iget-object p0, v6, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    .line 207
    :cond_6
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v7

    .line 206
    invoke-virtual {v0, v8, v7, v2, p0}, Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptOperation;->execute(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/util/InputData;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v7

    return-object v7

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->encryptBackupData(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;Landroid/net/Uri;J)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writePublicKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-wide/16 v5, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 273
    :try_start_0
    new-instance v3, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v3, p1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :try_start_1
    iget-object p1, v4, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {p1, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadPublicKeyRingData(J)[B

    move-result-object v5

    .line 275
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v5

    .line 276
    invoke-virtual {v5, p0, v1, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;

    .line 277
    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKeyRing;->encode(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v3, v2

    goto :goto_2

    .line 279
    :catch_1
    :goto_0
    :try_start_2
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 282
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    :cond_0
    :goto_1
    return v0

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 284
    :cond_1
    throw v5

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->writePublicKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;)Z"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeSecretKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-wide/16 v5, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 294
    :try_start_0
    new-instance v3, Lorg/bouncycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v3, p1}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    .line 296
    :try_start_1
    invoke-direct {v4, v3, p2}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->addExtraHeadersToStream(Lorg/bouncycastle/bcpg/ArmoredOutputStream;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-object v2, v3

    goto :goto_1

    .line 299
    :cond_0
    :goto_0
    iget-object p1, v4, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {p1, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->loadSecretKeyRingData(J)[B

    move-result-object v5

    .line 300
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v5

    .line 301
    invoke-virtual {v5, p0, v1, v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->canonicalize(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IZ)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    .line 302
    invoke-virtual {v5, v3}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->encode(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 307
    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v5

    move-object v3, v2

    goto :goto_3

    .line 304
    :catch_1
    :goto_1
    :try_start_2
    sget-object v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_UPLOAD_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v5, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 307
    invoke-virtual {v2}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    :cond_1
    :goto_2
    return v0

    :goto_3
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/bcpg/ArmoredOutputStream;->close()V

    .line 309
    :cond_2
    throw v5

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->writeSecretKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;Ljava/util/List;)Z"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x0

    .line 92
    invoke-virtual {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;
    .locals 16

    move-object/16 v13, p0

    move-object/16 v14, p1

    move-object/16 v15, p2

    move-object/16 p0, p3

    move-object v7, v13

    .line 99
    new-instance v8, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 100
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v8, v0, v9, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_ALL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v0, v9}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    :goto_0
    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getIsEncrypted()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v15, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Encrypted backup must supply cryptoInput parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->createFile(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    :goto_1
    move-object v11, v0

    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p0, :cond_3

    goto/16 :goto_3

    .line 120
    :cond_3
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_1

    .line 124
    :goto_2
    new-instance v12, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v12, v0}, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v2

    .line 126
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExportSecret()Z

    move-result v3

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExportPublic()Z

    move-result v4

    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getExtraHeaders()Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, v8

    move-object v5, v12

    .line 125
    invoke-virtual/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->exportKeysToStream(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[JZZLjava/io/OutputStream;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-direct {v0, v10, v8}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 133
    :cond_4
    invoke-virtual {v14}, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;->getIsEncrypted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v0, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 136
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-direct {v0, v9, v8}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 139
    :cond_5
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/util/CountingOutputStream;->getCount()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, p0

    move-object v4, v11

    .line 141
    invoke-direct/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->encryptBackupData(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;Landroid/net/Uri;J)Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/PgpSignEncryptResult;->success()Z

    move-result v1

    if-nez v1, :cond_6

    .line 144
    invoke-virtual {v8, v0, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->addByMerge(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 146
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-direct {v0, v10, v8}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 149
    :cond_6
    invoke-virtual {v8, v0, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 150
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_SUCCESS:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v0, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 151
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-direct {v0, v9, v8}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    .line 118
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unencrypted export to output stream is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_ERROR_URI_OPEN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v0, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 155
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    invoke-direct {v0, v10, v8}, Lorg/sufficientlysecure/keychain/operations/results/ExportResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Ljava/io/OutputStream;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 0

    .line 76
    check-cast p1, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->execute(Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/ExportResult;

    move-result-object p1

    return-object p1
.end method

.method exportKeysToStream(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[JZZLjava/io/OutputStream;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;",
            "[JZZ",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/16 v16, p0

    move-object/16 v17, p1

    move-object/16 v18, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v1, v18

    move-object/from16 v9, p2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    .line 219
    :try_start_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfo()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    .line 221
    :cond_0
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo([J)Ljava/util/List;

    move-result-object v1

    .line 223
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const v2, 0x7f110c04

    .line 225
    invoke-virtual {v7, v2, v11, v12}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->updateProgress(III)V

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object/from16 v6, p3

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 229
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_PUBLIC:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v8, v2, v10, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-direct {v7, v2, v3, v8, v9}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->writePublicKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;)Z

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    if-eqz p0, :cond_3

    .line 240
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v4, v10, [Ljava/lang/Object;

    move-object v15, v4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v11

    move-object v4, v15

    const/4 v3, 0x2

    invoke-virtual {v8, v2, v3, v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->writeSecretKeyToStream(JLorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;Ljava/io/OutputStream;Ljava/util/List;)Z

    move-result v1

    const/4 v1, 0x0

    move-object v6, v1

    :cond_3
    add-int/lit8 v1, v14, 0x1

    .line 249
    invoke-virtual {v7, v14, v12}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->updateProgress(II)V

    move v14, v1

    goto :goto_1

    :cond_4
    const v1, 0x7f110c00

    .line 252
    invoke-virtual {v7, v1, v12, v12}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;->updateProgress(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_5

    .line 260
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "error closing stream"

    .line 262
    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_3
    return v10

    .line 255
    :catch_1
    :try_start_2
    sget-object v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_BACKUP_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v8, v1, v10}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_6

    .line 260
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v1, "error closing stream"

    .line 262
    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    return v11

    :goto_5
    if-eqz v9, :cond_7

    .line 260
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v2, "error closing stream"

    .line 262
    new-array v3, v11, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_7
    :goto_6
    throw v1

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/BackupOperation;--->exportKeysToStream(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;[JZZLjava/io/OutputStream;Ljava/util/List;)Z"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
