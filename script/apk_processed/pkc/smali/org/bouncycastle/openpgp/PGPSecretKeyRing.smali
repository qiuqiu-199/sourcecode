.class public Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
.super Lorg/bouncycastle/openpgp/PGPKeyRing;
.source "PGPSecretKeyRing.java"

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/openpgp/PGPKeyRing;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/openpgp/PGPSecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field extraPubKeys:Ljava/util/List;

.field keys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    .line 60
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/openpgp/PGPKeyRing;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    .line 64
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->wrap(Ljava/io/InputStream;)Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v10

    .line 66
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/4 v11, 0x7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    if-eq v1, v11, :cond_0

    .line 69
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "secret key ring doesn\'t start with secret key tag: tag 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/bouncycastle/bcpg/SecretKeyPacket;

    .line 79
    :goto_0
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v13, 0x3d

    if-ne v1, v13, :cond_1

    .line 81
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/bouncycastle/bcpg/BCPGInputStream;)Lorg/bouncycastle/bcpg/TrustPacket;

    move-result-object v3

    .line 87
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/bouncycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {v10, v5, v6, v7}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readUserIDs(Lorg/bouncycastle/bcpg/BCPGInputStream;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 94
    iget-object v14, v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v15, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v8, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v12}, Lorg/bouncycastle/bcpg/SecretKeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v2

    move-object v1, v8

    move-object v13, v8

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v15, v12, v13}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_1
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-eq v1, v11, :cond_3

    .line 99
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    return-void

    .line 101
    :cond_3
    :goto_2
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v1

    if-ne v1, v11, :cond_5

    .line 103
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;

    .line 108
    :goto_3
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->nextPacketTag()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 110
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    goto :goto_3

    .line 113
    :cond_4
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/bouncycastle/bcpg/BCPGInputStream;)Lorg/bouncycastle/bcpg/TrustPacket;

    move-result-object v2

    .line 114
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/bouncycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 116
    iget-object v5, v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    new-instance v6, Lorg/bouncycastle/openpgp/PGPSecretKey;

    new-instance v7, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/SecretSubkeyPacket;->getPublicKeyPacket()Lorg/bouncycastle/bcpg/PublicKeyPacket;

    move-result-object v8

    invoke-direct {v7, v8, v2, v4, v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-direct {v6, v1, v7}, Lorg/bouncycastle/openpgp/PGPSecretKey;-><init>(Lorg/bouncycastle/bcpg/SecretKeyPacket;Lorg/bouncycastle/openpgp/PGPPublicKey;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/16 v3, 0x3d

    .line 120
    invoke-virtual {v10}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/bcpg/PublicSubkeyPacket;

    .line 122
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readOptionalTrustPacket(Lorg/bouncycastle/bcpg/BCPGInputStream;)Lorg/bouncycastle/bcpg/TrustPacket;

    move-result-object v2

    .line 123
    invoke-static {v10}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->readSignaturesAndTrust(Lorg/bouncycastle/bcpg/BCPGInputStream;)Ljava/util/List;

    move-result-object v4

    .line 125
    iget-object v5, v0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    new-instance v6, Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-direct {v6, v1, v2, v4, v9}, Lorg/bouncycastle/openpgp/PGPPublicKey;-><init>(Lorg/bouncycastle/bcpg/PublicKeyPacket;Lorg/bouncycastle/bcpg/TrustPacket;Ljava/util/List;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyRing;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-void
.end method

.method public static constructDummyFromPublic(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->constructDummyFromPublic(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;[B)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    move-result-object p0

    return-object p0
.end method

.method public static constructDummyFromPublic(Lorg/bouncycastle/openpgp/PGPPublicKeyRing;[B)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 3

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 420
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 422
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPPublicKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPPublicKey;

    if-eqz p1, :cond_0

    .line 427
    invoke-static {v2, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;[B)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    goto :goto_1

    .line 429
    :cond_0
    invoke-static {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->constructGnuDummyKey(Lorg/bouncycastle/openpgp/PGPPublicKey;)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v2

    .line 432
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    new-instance p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static insertSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 11

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 343
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 347
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v6

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v8

    cmp-long v10, v6, v8

    const/4 v6, 0x1

    if-nez v10, :cond_0

    .line 350
    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 352
    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_5

    .line 360
    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->isMasterKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 364
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot add a master key to a ring that already has one"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    :cond_3
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 371
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_5
    :goto_1
    new-instance p1, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public static removeSecretKey(Lorg/bouncycastle/openpgp/PGPSecretKeyRing;Lorg/bouncycastle/openpgp/PGPSecretKey;)Lorg/bouncycastle/openpgp/PGPSecretKeyRing;
    .locals 8

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 393
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 395
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 397
    invoke-virtual {v3}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_2
    new-instance p1, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;

    iget-object p0, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 252
    iget-object v2, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 254
    invoke-virtual {v2, p1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 260
    invoke-virtual {v1, p1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    invoke-virtual {p0, v0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->encode(Ljava/io/OutputStream;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(J)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 5

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPPublicKey;

    .line 160
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKeys()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPPublicKey;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/openpgp/PGPSecretKey;

    invoke-virtual {v2}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->extraPubKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSecretKey()Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/openpgp/PGPSecretKey;

    return-object v0
.end method

.method public getSecretKey(J)Lorg/bouncycastle/openpgp/PGPSecretKey;
    .locals 5

    const/4 v0, 0x0

    .line 211
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/openpgp/PGPSecretKey;

    .line 215
    invoke-virtual {v1}, Lorg/bouncycastle/openpgp/PGPSecretKey;->getKeyID()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSecretKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/openpgp/PGPSecretKey;",
            ">;"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPSecretKeyRing;->getSecretKeys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
