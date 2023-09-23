.class public Lorg/piwik/sdk/dispatcher/DefaultPacketSender;
.super Ljava/lang/Object;
.source "DefaultPacketSender.java"

# interfaces
.implements Lorg/piwik/sdk/dispatcher/PacketSender;


# instance fields
.field private mGzip:Z

.field private mTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 21
    iput-wide v0, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mTimeout:J

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mGzip:Z

    return-void
.end method

.method public static checkResponseCode(I)Z
    .locals 1

    const/16 v0, 0xcc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public send(Lorg/piwik/sdk/dispatcher/Packet;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :try_start_0
    invoke-virtual {p1}, Lorg/piwik/sdk/dispatcher/Packet;->getTargetURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 28
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Connection open to %s"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-wide v3, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mTimeout:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 30
    iget-wide v3, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mTimeout:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 33
    invoke-virtual {p1}, Lorg/piwik/sdk/dispatcher/Packet;->getPostData()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 34
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "charset"

    const-string v4, "utf-8"

    .line 36
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lorg/piwik/sdk/dispatcher/Packet;->getPostData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    iget-boolean v3, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mGzip:Z

    if-eqz v3, :cond_3

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    .line 41
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 46
    :try_start_2
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v6, "UTF8"

    .line 47
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_0

    .line 51
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 56
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p1, :cond_6

    .line 61
    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto/16 :goto_5

    :catch_0
    move-exception p1

    :try_start_8
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 64
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Failed to close output stream after writing gzipped POST data."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_0
    if-eqz p1, :cond_1

    .line 61
    :try_start_9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_a
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 64
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Failed to close output stream after writing gzipped POST data."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_1
    :goto_1
    throw v0

    :catchall_2
    move-exception p1

    goto :goto_2

    :catchall_3
    move-exception p1

    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_2

    .line 51
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 52
    :cond_2
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 73
    :cond_3
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 74
    :try_start_c
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_6

    .line 78
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_5

    :catch_2
    move-exception p1

    :try_start_e
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 81
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Failed to close output stream after writing POST data."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4, v6}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_5

    :catchall_4
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catchall_5
    move-exception p1

    :goto_3
    if-eqz v0, :cond_4

    .line 78
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_10
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 81
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Failed to close output stream after writing POST data."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_4
    :goto_4
    throw p1

    .line 89
    :cond_5
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 92
    :cond_6
    :goto_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 93
    invoke-static {p1}, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->checkResponseCode(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "PIWIK:DefaultPacketSender"

    .line 96
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v4, "Transmission succesful (code=%d)."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-virtual {v0, v4, v5}, Ltimber/log/Timber$Tree;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 99
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 102
    :try_start_11
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 104
    :goto_6
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_6

    :cond_8
    if-eqz v6, :cond_9

    .line 108
    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto :goto_7

    :catch_4
    move-exception v0

    :try_start_14
    const-string v6, "PIWIK:DefaultPacketSender"

    .line 110
    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    const-string v7, "Failed to close the error stream."

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v7, v8}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_7
    const-string v0, "PIWIK:DefaultPacketSender"

    .line 114
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v6, "Transmission failed (code=%d, reason=%s)"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-virtual {v0, v6, v7}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :goto_8
    if-eqz v2, :cond_a

    .line 122
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return v3

    :catchall_6
    move-exception p1

    move-object v0, v6

    goto :goto_9

    :catchall_7
    move-exception p1

    :goto_9
    if-eqz v0, :cond_b

    .line 108
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_a

    :catch_5
    move-exception v0

    :try_start_16
    const-string v3, "PIWIK:DefaultPacketSender"

    .line 110
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Failed to close the error stream."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_b
    :goto_a
    throw p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :catchall_8
    move-exception p1

    goto :goto_c

    :catch_6
    move-exception p1

    move-object v0, v2

    goto :goto_b

    :catchall_9
    move-exception p1

    move-object v2, v0

    goto :goto_c

    :catch_7
    move-exception p1

    :goto_b
    :try_start_17
    const-string v2, "PIWIK:DefaultPacketSender"

    .line 119
    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Transmission failed unexpectedly."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3, v4}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    if-eqz v0, :cond_c

    .line 122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return v1

    :goto_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 123
    :cond_d
    throw p1
.end method

.method public setGzipData(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mGzip:Z

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lorg/piwik/sdk/dispatcher/DefaultPacketSender;->mTimeout:J

    return-void
.end method
