.class public Ledu/cmu/cylab/starslinger/exchange/WebEngine;
.super Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;
.source "WebEngine.java"


# instance fields
.field private mConn:Ljavax/net/ssl/HttpsURLConnection;

.field private mHost:Ljava/lang/String;

.field private mUrlPrefix:Ljava/lang/String;

.field private mUrlSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ConnectionEngine;-><init>()V

    const-string v0, "https://"

    .line 57
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    return-void
.end method

.method private doPost(Ljava/lang/String;[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mCancelable:Z

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "TLS"

    .line 79
    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 80
    new-array v7, v5, [Ljavax/net/ssl/TrustManager;

    new-instance v8, Ledu/cmu/cylab/starslinger/exchange/CheckedX509TrustManager;

    invoke-direct {v8, v4}, Ledu/cmu/cylab/starslinger/exchange/CheckedX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v8, v7, v0

    invoke-virtual {v6, v4, v7, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 83
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 85
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 86
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 87
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "Content-Type"

    const-string v8, "application/octet-stream; charset=utf-8"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v7, "Expect"

    const-string v8, "100-continue"

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 90
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 93
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 94
    invoke-virtual {v6, p2}, Ljava/io/OutputStream;->write([B)V

    .line 95
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 96
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :try_start_1
    iget-object v6, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mCtx:Landroid/content/Context;

    sget v9, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_HttpCode:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 109
    :cond_0
    iget-object v7, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x2000

    .line 110
    new-array v8, v8, [B

    .line 112
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    :goto_0
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 114
    invoke-virtual {v9, v8, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 117
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v8

    .line 137
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    :cond_2
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b recv, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " code, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :catchall_0
    move-exception v3

    move-object v4, v8

    goto/16 :goto_13

    :catch_0
    move-exception v3

    move-object v4, v8

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v4, v8

    goto/16 :goto_7

    :catch_2
    move-exception v3

    move-object v4, v8

    goto/16 :goto_9

    :catch_3
    move-object v4, v8

    goto/16 :goto_a

    :catch_4
    move-exception v3

    move-object v4, v8

    goto/16 :goto_c

    :catch_5
    move-exception v3

    move-object v4, v8

    goto/16 :goto_e

    :catch_6
    move-exception v3

    move-object v4, v8

    goto/16 :goto_10

    :catch_7
    move-exception v3

    goto :goto_5

    :catch_8
    move-exception v3

    goto/16 :goto_7

    :catch_9
    move-exception v3

    goto/16 :goto_9

    :catch_a
    move-exception v3

    goto/16 :goto_c

    :catch_b
    move-exception v3

    goto/16 :goto_e

    :catch_c
    move-exception v3

    goto/16 :goto_10

    :catchall_1
    move-exception v3

    goto :goto_3

    :catch_d
    move-exception v3

    goto :goto_4

    :catch_e
    move-exception v3

    goto :goto_6

    :catch_f
    move-exception v3

    goto/16 :goto_8

    :catch_10
    move-exception v3

    goto/16 :goto_b

    :catch_11
    move-exception v3

    goto/16 :goto_d

    :catch_12
    move-exception v3

    goto/16 :goto_f

    :catchall_2
    move-exception v3

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_13

    :catch_13
    move-exception v3

    const/4 v5, 0x0

    :goto_4
    const/4 v6, 0x0

    .line 135
    :goto_5
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_14
    move-exception v3

    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    .line 133
    :goto_7
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_15
    move-exception v3

    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x0

    .line 131
    :goto_9
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/security/KeyManagementException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_16
    const/4 v5, 0x0

    :catch_17
    const/4 v6, 0x0

    .line 129
    :catch_18
    :goto_a
    :try_start_7
    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mCtx:Landroid/content/Context;

    sget v7, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_OutOfMemoryError:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_19
    move-exception v3

    const/4 v5, 0x0

    :goto_b
    const/4 v6, 0x0

    .line 127
    :goto_c
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_1a
    move-exception v3

    const/4 v5, 0x0

    :goto_d
    const/4 v6, 0x0

    .line 124
    :goto_e
    :try_start_9
    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 125
    sget-object v3, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mCtx:Landroid/content/Context;

    sget v7, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_CorrectYourInternetConnection:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    :catch_1b
    move-exception v3

    const/4 v5, 0x0

    :goto_f
    const/4 v6, 0x0

    .line 120
    :goto_10
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_3

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    array-length v0, v4

    goto/16 :goto_2

    .line 145
    :cond_3
    :goto_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v4, :cond_4

    goto :goto_12

    :cond_4
    return-object v4

    .line 146
    :cond_5
    :goto_12
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;

    invoke-direct {p1, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception v3

    .line 137
    :goto_13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v1

    if-eqz v5, :cond_7

    const-string v1, "SafeSlinger-Exchange"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b sent, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_6

    array-length v0, v4

    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "b recv, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " code, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_7
    throw v3
.end method


# virtual methods
.method protected assignUser([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mExchStartTimer:Ljava/util/Date;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/assignUser"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    return-void
.end method

.method public shutdownConnection()V
    .locals 1

    .line 153
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mConn:Ljavax/net/ssl/HttpsURLConnection;

    :cond_0
    return-void
.end method

.method protected syncData([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/syncData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected syncKeyNodes([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/syncKeyNodes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected syncMatch([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/syncMatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected syncSignatures([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/syncSignatures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected syncUsers([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ledu/cmu/cylab/starslinger/exchange/ExchangeException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/syncUsers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/WebEngine;->doPost(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method
