.class public Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;
.super Ljava/lang/Object;
.source "KeyTransferInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;,
        Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_CIPHERSUITES:[Ljava/lang/String;

.field private static final CONNECTION_ERROR_CONNECT:I = 0x7

.field private static final CONNECTION_ERROR_LISTEN:I = 0x0

.field private static final CONNECTION_ERROR_NO_ROUTE_TO_HOST:I = 0x6

.field private static final CONNECTION_ERROR_WHILE_CONNECTED:I = 0x8

.field private static final CONNECTION_ESTABLISHED:I = 0x2

.field private static final CONNECTION_LISTENING:I = 0x1

.field private static final CONNECTION_LOST:I = 0x5

.field private static final CONNECTION_RECEIVE_OK:I = 0x4

.field private static final CONNECTION_SEND_OK:I = 0x3

.field private static final PSK_BYTE_LENGTH:I = 0x10

.field private static final TIMEOUT_CONNECTING:I = 0x5dc

.field private static final TIMEOUT_RECEIVING:I = 0x7d0

.field private static final TIMEOUT_WAITING:I = 0x1f4


# instance fields
.field private final delimiterEnd:Ljava/lang/String;

.field private final delimiterStart:Ljava/lang/String;

.field private transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TLS_DHE_PSK_WITH_AES_128_CBC_SHA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TLS_DHE_PSK_WITH_AES_256_CBC_SHA"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TLS_DHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->ALLOWED_CIPHERSUITES:[Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 88
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterStart:Ljava/lang/String;

    .line 90
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterEnd:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;---><init>(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Ljava/io/Closeable;)V
    .locals 0

    .line 55
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->ALLOWED_CIPHERSUITES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->intersectArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Z)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->getIPAddress(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    move-object/16 v0, p0

    if-eqz v0, :cond_0

    .line 429
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->closeQuietly(Ljava/io/Closeable;)V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static generatePresharedKey()[B
    .locals 5

    const/16 v0, 0x10

    .line 357
    new-array v0, v0, [B

    .line 358
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->generatePresharedKey()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getIPAddress(Z)Ljava/lang/String;
    .locals 8

    move/16 v5, p0

    .line 398
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 400
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 401
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 402
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v3, :cond_1

    return-object v2

    :cond_4
    const/16 v5, 0x25

    .line 412
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 414
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 416
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    :cond_6
    const-string v5, ""

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->getIPAddress(Z)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static intersectArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 437
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 438
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 439
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 441
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->intersectArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public closeConnection()V
    .locals 4

    move-object/16 v1, p0

    .line 363
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 367
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->closeConnection()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public connectToServer(Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    .line 94
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/network/SktUri;->parse(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;

    move-result-object v8

    .line 96
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterStart:Ljava/lang/String;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterEnd:Ljava/lang/String;

    .line 97
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPresharedKey()[B

    move-result-object v3

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/network/SktUri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/network/SktUri;->getPort()I

    move-result v5

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/network/SktUri;->getWifiSsid()Ljava/lang/String;

    move-result-object v6

    move-object v2, v9

    .line 96
    invoke-static/range {v0 .. v6}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->createClientTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;ILjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    move-result-object v8

    iput-object v8, v7, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    .line 98
    iget-object v8, v7, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->start()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->connectToServer(Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public sendData([BLjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 371
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->sendData([BLjava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->sendData([BLjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public startServer(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 102
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->generatePresharedKey()[B

    move-result-object v0

    .line 104
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterStart:Ljava/lang/String;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->delimiterEnd:Ljava/lang/String;

    invoke-static {v1, v2, v4, v0, v5}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->createServerTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    .line 105
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->transferThread:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->start()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;--->startServer(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
