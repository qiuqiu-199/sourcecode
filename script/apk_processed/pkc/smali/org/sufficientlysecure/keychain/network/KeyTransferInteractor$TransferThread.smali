.class Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;
.super Ljava/lang/Thread;
.source "KeyTransferInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferThread"
.end annotation


# instance fields
.field private callback:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

.field private final clientHost:Ljava/lang/String;

.field private final clientPort:Ljava/lang/Integer;

.field private dataToSend:[B

.field private final delimiterEnd:Ljava/lang/String;

.field private final delimiterStart:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final isServer:Z

.field private final presharedKey:[B

.field private sendPassthrough:Ljava/lang/String;

.field private serverSocket:Ljavax/net/ssl/SSLServerSocket;

.field private final wifiSsid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    const-string v0, "TLS-PSK Key Transfer Thread"

    .line 137
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 139
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->delimiterStart:Ljava/lang/String;

    .line 140
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->delimiterEnd:Ljava/lang/String;

    .line 142
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->callback:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    .line 143
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->presharedKey:[B

    .line 144
    iput-object p3, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->clientHost:Ljava/lang/String;

    .line 145
    iput-object p4, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->clientPort:Ljava/lang/Integer;

    .line 146
    iput-object p5, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->wifiSsid:Ljava/lang/String;

    .line 147
    iput-boolean p2, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->isServer:Z

    .line 149
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->handler:Landroid/os/Handler;

    return-void

    const-string p6, "M_InsDal"

    const-string p7, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;---><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->callback:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->wifiSsid:Ljava/lang/String;

    return-object p0
.end method

.method static createClientTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;ILjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    .line 126
    new-instance v9, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v9

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->createClientTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;ILjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createServerTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;
    .locals 13

    move-object/16 v10, p0

    move-object/16 v11, p1

    move-object/16 v12, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 131
    new-instance v9, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v9

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->createServerTransferThread(Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSocketListenOrConnect(Ljavax/net/ssl/SSLContext;)Ljava/net/Socket;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 182
    iget-boolean v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->isServer:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLServerSocket;

    iput-object v7, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    .line 185
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLServerSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v7

    .line 186
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 187
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v0, v7}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 189
    invoke-static {v7}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$300(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLServerSocket;->getLocalPort()I

    move-result v3

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->presharedKey:[B

    iget-object v5, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->wifiSsid:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lorg/sufficientlysecure/keychain/network/SktUri;->create(Ljava/lang/String;I[BLjava/lang/String;)Lorg/sufficientlysecure/keychain/network/SktUri;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/network/SktUri;->toUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    .line 192
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "error while listening!"

    .line 194
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-direct {v6, v2, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    return-object v1

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocket;

    .line 201
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$100()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$200([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {v7, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->clientHost:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->clientPort:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v3, 0x5dc

    invoke-virtual {v7, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v7

    :catch_1
    move-exception v7

    const-string v0, "error while connecting!"

    .line 208
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    instance-of v7, v7, Ljava/net/NoRouteToHostException;

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    .line 210
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->wifiSsid:Ljava/lang/String;

    invoke-direct {v6, v7, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x7

    .line 212
    invoke-direct {v6, v7, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    :goto_1
    return-object v1

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->getSocketListenOrConnect(Ljavax/net/ssl/SSLContext;)Ljava/net/Socket;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private handleOpenConnection(Ljava/net/Socket;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 221
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 222
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v4, v3, v2}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    const/16 v2, 0x1f4

    .line 226
    invoke-virtual {v5, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 227
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    invoke-direct {v4, v5, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->sendDataIfAvailable(Ljava/net/Socket;Ljava/io/OutputStream;)Z

    .line 229
    invoke-direct {v4, v5, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->receiveDataIfAvailable(Ljava/net/Socket;Ljava/io/BufferedReader;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const-string v5, "disconnected"

    const/4 v0, 0x0

    .line 234
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 235
    invoke-direct {v4, v5, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->handleOpenConnection(Ljava/net/Socket;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private invokeListener(ILjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 298
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;-><init>(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;ILjava/lang/String;)V

    .line 340
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->invokeListener(ILjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private receiveDataIfAvailable(Ljava/net/Socket;Ljava/io/BufferedReader;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    const/4 v0, 0x0

    .line 241
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    return v4

    .line 250
    :cond_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->delimiterStart:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v4, "bad beginning of key block?"

    .line 252
    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/16 v2, 0x7d0

    .line 256
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 257
    invoke-direct {v3, v5, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->receiveLinesUntilEndDelimiter(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x1f4

    .line 258
    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v4, 0x4

    .line 260
    invoke-direct {v3, v4, v5}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    return v0

    :catch_0
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->receiveDataIfAvailable(Ljava/net/Socket;Ljava/io/BufferedReader;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private receiveLinesUntilEndDelimiter(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    :cond_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->delimiterEnd:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 294
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->receiveLinesUntilEndDelimiter(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendDataIfAvailable(Ljava/net/Socket;Ljava/io/OutputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 265
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->dataToSend:[B

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->dataToSend:[B

    const/4 v1, 0x0

    .line 267
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->dataToSend:[B

    const/16 v2, 0x7d0

    .line 269
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 270
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    const/16 v5, 0x1f4

    .line 272
    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v4, 0x3

    .line 274
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->sendPassthrough:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    .line 275
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->sendPassthrough:Ljava/lang/String;

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v4, 0x0

    return v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->sendDataIfAvailable(Ljava/net/Socket;Ljava/io/OutputStream;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public interrupt()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 350
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->callback:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    .line 351
    invoke-super {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->interrupt()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    return-void
.end method

.method public run()V
    .locals 9

    move-object/16 v6, p0

    .line 154
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->presharedKey:[B

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/TlsPskCompat;->createTlsPskSslContext([B)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->getSocketListenOrConnect(Ljavax/net/ssl/SSLContext;)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 174
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    .line 175
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 164
    :try_start_1
    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->handleOpenConnection(Ljava/net/Socket;)V

    const-string v3, "connection closed ok!"

    .line 165
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "communication error!"

    .line 170
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v4, "ssl handshake error!"

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    .line 168
    invoke-direct {v6, v2, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    :goto_0
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    .line 175
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 174
    :goto_1
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    .line 175
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->serverSocket:Ljavax/net/ssl/SSLServerSocket;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->access$000(Ljava/io/Closeable;)V

    .line 176
    throw v1

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->run()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method declared-synchronized sendData([BLjava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->dataToSend:[B

    .line 345
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->sendPassthrough:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 343
    monitor-exit v0

    throw v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;--->sendData([BLjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
