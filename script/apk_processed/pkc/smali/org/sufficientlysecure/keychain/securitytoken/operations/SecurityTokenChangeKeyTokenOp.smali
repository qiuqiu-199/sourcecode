.class public Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;
.super Ljava/lang/Object;
.source "SecurityTokenChangeKeyTokenOp.java"


# static fields
.field private static final BLANK_FINGERPRINT:[B


# instance fields
.field private final connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    .line 47
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->BLANK_FINGERPRINT:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;---><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;
    .locals 4

    move-object/16 v1, p0

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;-><init>(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->create(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createAttributesForSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 155
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFormatForKeyType(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object v0

    .line 158
    invoke-static {v2, v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->attributesFromSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;)[B

    move-result-object v2

    return-object v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->createAttributesForSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isSlotEmpty(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 201
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getKeyFingerprint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    return v2

    .line 205
    :cond_0
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->BLANK_FINGERPRINT:[B

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->keyMatchesFingerPrint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->isSlotEmpty(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private keyMatchesFingerPrint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 209
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getKeyFingerprint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)[B

    move-result-object v2

    .line 210
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->keyMatchesFingerPrint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private putData(Lorg/sufficientlysecure/keychain/util/Passphrase;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 180
    array-length v0, p0

    const/16 v1, 0xfe

    if-le v0, v1, :cond_0

    .line 181
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cannot PUT DATA with length > 254"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/16 v0, 0x101

    if-eq v4, v0, :cond_2

    const/16 v0, 0x103

    if-ne v4, v0, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    goto :goto_1

    .line 185
    :cond_2
    :goto_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyPinForOther()V

    .line 190
    :goto_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v3

    invoke-virtual {v3, v4, p0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createPutDataCommand(I[B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    .line 191
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    .line 194
    new-instance v4, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string p0, "Failed to put data."

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v3

    invoke-direct {v4, p0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_3
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->putData(Lorg/sufficientlysecure/keychain/util/Passphrase;I[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setKeyAttributes(Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 162
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->isAttributesChangable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->getAlgoAttributeSlot()I

    move-result v3

    invoke-direct {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->putData(Lorg/sufficientlysecure/keychain/util/Passphrase;I[B)V

    .line 168
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->refreshConnectionCapabilities()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->setKeyAttributes(Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public changeKey(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    .line 60
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/4 v2, 0x4

    .line 61
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 62
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->from(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)Lorg/sufficientlysecure/keychain/securitytoken/KeyType;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Inappropriate key flags for smart card key."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_0
    invoke-direct {v5, v1}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->isSlotEmpty(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 70
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getFingerprint()[B

    move-result-object v2

    invoke-direct {v5, v1, v2}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->keyMatchesFingerPrint(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 73
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Key slot occupied; card must be reset to put new %s key."

    new-array p0, v3, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v4

    .line 73
    invoke-static {v7, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 77
    :cond_3
    invoke-virtual {v5, v1, v6, v7, p0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->putKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 78
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->getFingerprintObjectId()I

    move-result v7

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getFingerprint()[B

    move-result-object v6

    invoke-direct {v5, p0, v7, v6}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->putData(Lorg/sufficientlysecure/keychain/util/Passphrase;I[B)V

    .line 79
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyType;->getTimestampObjectId()I

    move-result v6

    invoke-direct {v5, p0, v6, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->putData(Lorg/sufficientlysecure/keychain/util/Passphrase;I[B)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->changeKey(Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method putKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 97
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->verifyAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V

    .line 103
    :try_start_0
    invoke-virtual {v4, p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    .line 105
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->createAttributesForSecretKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;)[B

    move-result-object v0

    .line 106
    invoke-direct {v2, p1, v3, v0}, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->setKeyAttributes(Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;[B)V

    .line 108
    iget-object p1, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getOpenPgpCapabilities()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCapabilities;->getFormatForKeyType(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;)Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;

    move-result-object p1

    .line 110
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp$1;->$SwitchMap$org$sufficientlysecure$keychain$securitytoken$KeyFormat$KeyFormatType:[I

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat;->keyFormatType()Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/KeyFormat$KeyFormatType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v3, Ljava/io/IOException;

    goto :goto_1

    .line 127
    :pswitch_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isEC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Security Token not configured for EC key."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    invoke-virtual {v4, p0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->unlock(Lorg/sufficientlysecure/keychain/util/Passphrase;)Z

    .line 132
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getSecurityTokenECSecretKey()Ljava/security/interfaces/ECPrivateKey;

    move-result-object p0

    .line 133
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getSecurityTokenECPublicKey()Ljava/security/interfaces/ECPublicKey;

    move-result-object v4

    .line 135
    check-cast p1, Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;

    invoke-static {p0, v4, v3, p1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->createECPrivKeyTemplate(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/ECKeyFormat;)[B

    move-result-object v3

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->isRSA()Z

    move-result p0

    if-nez p0, :cond_1

    .line 113
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Security Token not configured for RSA key."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;->getSecurityTokenRSASecretKey()Ljava/security/interfaces/RSAPrivateCrtKey;

    move-result-object v4

    .line 118
    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "65537"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 119
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid public exponent for smart Security Token."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    :cond_2
    check-cast p1, Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;

    invoke-static {v4, v3, p1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenUtils;->createRSAPrivKeyTemplate(Ljava/security/interfaces/RSAPrivateCrtKey;Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/securitytoken/RSAKeyFormat;)[B

    move-result-object v3
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->getCommandFactory()Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/OpenPgpCommandApduFactory;->createPutKeyCommand([B)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;

    move-result-object v3

    .line 147
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;->connection:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;->communicate(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;

    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    .line 150
    new-instance v4, Lorg/sufficientlysecure/keychain/securitytoken/CardException;

    const-string p0, "Key export to Security Token failed"

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;->getSw()I

    move-result v3

    invoke-direct {v4, p0, v3}, Lorg/sufficientlysecure/keychain/securitytoken/CardException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_3
    return-void

    :goto_1
    :try_start_1
    const-string v4, "Key type unsupported by security token."

    .line 140
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    .line 143
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/operations/SecurityTokenChangeKeyTokenOp;--->putKey(Lorg/sufficientlysecure/keychain/securitytoken/KeyType;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
