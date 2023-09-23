.class public Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;
.super Ljava/lang/Object;
.source "SecurityTokenConnection.java"


# static fields
.field private static final AID_PREFIX_FIDESMO:Ljava/lang/String; = "A000000617"

.field private static final APDU_SW1_RESPONSE_AVAILABLE:I = 0x61

.field private static sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# instance fields
.field private final cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

.field private cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

.field private final commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

.field private isPw1ValidatedForOther:Z

.field private isPw1ValidatedForSignature:Z

.field private isPw3Validated:Z

.field private openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

.field private secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

.field private tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

.field private final transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 83
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    .line 85
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 87
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static clearCachedConnections()V
    .locals 4

    const/4 v0, 0x0

    .line 77
    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->clearCachedConnections()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstanceForTransport(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 68
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPersistentConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    .line 69
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_1

    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    .line 70
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;-><init>()V

    invoke-direct {v0, v2, v3, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    .line 73
    :cond_1
    sget-object v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->sCachedInstance:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->getInstanceForTransport(Lorg/sufficientlysecure/keychain/securitytoken/Transport;Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static parseHolderName([B)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    .line 433
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x3

    aget-byte v2, v3, v2

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    const/16 v3, 0x3c

    const/16 v1, 0x20

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v0, "Couldn\'t get holder name, returning empty string!"

    const/4 v1, 0x0

    .line 439
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, ""

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->parseHolderName([B)Ljava/lang/String;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readChainedResponseIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 232
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    return-object v4

    .line 236
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 241
    :cond_1
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGetResponseCommand(I)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4

    .line 242
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 244
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 246
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 247
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw2()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->readChainedResponseIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readData(II)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 372
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createGetDataCommand(II)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v2

    .line 373
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v0, "Failed to get pw status bytes"

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v2

    invoke-direct {v3, v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 376
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getData()[B

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->readData(II)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    const/16 v0, 0x5f

    const/16 v1, 0x50

    .line 381
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readData(II)[B

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->readUrl()Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readUserId()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 386
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readData(II)[B

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->readUserId()[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private smDecryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 285
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    invoke-interface {v0, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->verifyAndDecrypt(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v4
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    .line 291
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    .line 292
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secure messaging verify/decrypt failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->smDecryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private smEncryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 273
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    invoke-interface {v0, v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->encryptAndSign(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v4
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    .line 279
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->clearSecureMessaging()V

    .line 280
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secure messaging encrypt/sign failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->smEncryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private smEstablishIfAvailable(Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 257
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isHasScp11bSm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 263
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-static {v7, v8, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SCP11bSecureMessaging;->establish(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;)Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    move-result-object v8

    iput-object v8, v7, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v8, 0x0

    sub-long v5, v3, v1

    const-string v8, "Established Secure Messaging in %d ms"

    const/4 v1, 0x1

    .line 265
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v8, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v1, 0x0

    .line 267
    iput-object v1, v7, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    const-string v1, "failed to establish secure messaging"

    .line 268
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v8, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->smEstablishIfAvailable(Landroid/content/Context;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private transceiveWithChaining(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 200
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->hasExtended()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0, v7}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v7

    return-object v7

    .line 202
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->isSuitableForShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v0, v7}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createShortApdu(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v7

    .line 204
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0, v7}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v7

    return-object v7

    .line 205
    :cond_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->hasChaining()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 208
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v1, v7}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createChainedApdus(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Ljava/util/List;

    move-result-object v7

    .line 209
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 210
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    .line 211
    iget-object v4, v6, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    if-ne v0, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 214
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    .line 215
    new-instance v7, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to chain apdu ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", last SW: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    .line 221
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    :cond_5
    return-object v3

    .line 226
    :cond_6
    new-instance v7, Ljava/io/IOException;

    const-string v0, "Command too long, and chaining unavailable"

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->transceiveWithChaining(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearSecureMessaging()V
    .locals 4

    move-object/16 v1, p0

    .line 297
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->clearSession()V

    :cond_0
    const/4 v0, 0x0

    .line 300
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->clearSecureMessaging()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 186
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->smEncryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v1

    .line 190
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transceiveWithChaining(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v1

    .line 191
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readChainedResponseIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v1

    .line 193
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->smDecryptIfAvailable(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public connectIfNecessary(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 93
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->refreshConnectionCapabilities()V

    return-void

    .line 98
    :cond_0
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->connectToDevice(Landroid/content/Context;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->connectIfNecessary(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method connectToDevice(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 108
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->connect()V

    .line 111
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;-><init>()V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->determineTokenType()V

    .line 115
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createSelectFileOpenPgpCommand()Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Initialization failed!"

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    invoke-direct {v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 122
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->refreshConnectionCapabilities()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForSignature:Z

    .line 125
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForOther:Z

    .line 126
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw3Validated:Z

    .line 128
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->smEstablishIfAvailable(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    .line 130
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->release()V

    .line 131
    throw v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->connectToDevice(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method determineTokenType()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    .line 137
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    .line 138
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    const-string v1, "A000000617"

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createSelectFileCommand(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 143
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->FIDESMO:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-void

    .line 157
    :cond_1
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->UNKNOWN:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->determineTokenType()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;
    .locals 4

    move-object/16 v1, p0

    .line 427
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;
    .locals 4

    move-object/16 v1, p0

    .line 423
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
    .locals 4

    move-object/16 v1, p0

    .line 419
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidatePw3()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw3Validated:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->invalidatePw3()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateSingleUsePw1()V
    .locals 4

    move-object/16 v1, p0

    .line 360
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isPw1ValidForMultipleSignatures()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 361
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForSignature:Z

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->invalidateSingleUsePw1()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isConnected()Z
    .locals 4

    move-object/16 v1, p0

    .line 415
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->isConnected()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->isConnected()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isPersistentConnectionAllowed()Z
    .locals 4

    move-object/16 v1, p0

    .line 410
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->isPersistentConnectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->secureMessaging:Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;

    .line 411
    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;->isEstablished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->isPersistentConnectionAllowed()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v10, p0

    const/4 v0, 0x3

    .line 390
    new-array v3, v0, [[B

    .line 391
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintSign()[B

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    .line 392
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintEncrypt()[B

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    .line 393
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFingerprintAuth()[B

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 395
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getAid()[B

    move-result-object v4

    .line 396
    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readUserId()[B

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->parseHolderName([B)Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-direct {v10}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readUrl()Ljava/lang/String;

    move-result-object v6

    .line 398
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw1TriesLeft()I

    move-result v7

    .line 399
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getPw3TriesLeft()I

    move-result v8

    .line 400
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->hasLifeCycleManagement()Z

    move-result v9

    .line 402
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->transport:Lorg/sufficientlysecure/keychain/securitytoken/Transport;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/securitytoken/Transport;->getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;

    move-result-object v1

    .line 404
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->tokenType:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    invoke-static/range {v1 .. v9}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;[[B[BLjava/lang/String;Ljava/lang/String;IIZ)Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v0

    return-object v0

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->readTokenInfo()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public refreshConnectionCapabilities()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    const/4 v0, 0x0

    const/16 v1, 0x6e

    .line 161
    invoke-direct {v2, v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->readData(II)[B

    move-result-object v0

    .line 163
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->fromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    .line 164
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->setConnectionCapabilities(Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->refreshConnectionCapabilities()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setConnectionCapabilities(Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 169
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->openPgpCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    .line 170
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getHistoricalBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;-><init>([B)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cardCapabilities:Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->setConnectionCapabilities(Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 346
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw3Validated:Z

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createVerifyPw3Command([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v1, "Bad PIN!"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v3

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v3, 0x1

    .line 356
    iput-boolean v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw3Validated:Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyPinForOther()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 327
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForOther:Z

    if-eqz v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v0, :cond_1

    .line 331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not initialized with Pin!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 336
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createVerifyPw1ForOtherCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 337
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 339
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v2, "Bad PIN!"

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    const/4 v0, 0x1

    .line 342
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForOther:Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->verifyPinForOther()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verifyPinForSignature()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 308
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForSignature:Z

    if-eqz v0, :cond_0

    return-void

    .line 311
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection not initialized with Pin!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->cachedPin:Lorg/sufficientlysecure/keychain/util/Passphrase;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 317
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->commandFactory:Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createVerifyPw1ForSignatureCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v0

    .line 318
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string v2, "Bad PIN!"

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_2
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->isPw1ValidatedForSignature:Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;--->verifyPinForSignature()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
