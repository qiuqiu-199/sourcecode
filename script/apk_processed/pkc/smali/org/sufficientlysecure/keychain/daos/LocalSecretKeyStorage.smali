.class public Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;
.super Ljava/lang/Object;
.source "LocalSecretKeyStorage.java"


# static fields
.field private static final FORMAT_STR_SECRET_KEY:Ljava/lang/String; = "0x%016x.sec"

.field private static final SECRET_KEYS_DIR_NAME:Ljava/lang/String; = "secret_keys"


# instance fields
.field private final localSecretKeysDir:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->localSecretKeysDir:Ljava/io/File;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;---><init>(Ljava/io/File;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;
    .locals 5

    move-object/16 v2, p0

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v1, "secret_keys"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    new-instance v2, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;-><init>(Ljava/io/File;)V

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSecretKeyFile(J)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 51
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->localSecretKeysDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->localSecretKeysDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 54
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->localSecretKeysDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed creating public key directory!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v0, "0x%016x.sec"

    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    new-instance v5, Ljava/io/File;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->localSecretKeysDir:Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->getSecretKeyFile(J)Ljava/io/File;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static readIntoByteArray(Ljava/io/FileInputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 85
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x80

    .line 87
    new-array v1, v1, [B

    .line 89
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 90
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->readIntoByteArray(Ljava/io/FileInputStream;)[B"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method deleteSecretKey(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 97
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getSecretKeyFile(J)Ljava/io/File;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File exists, but could not be deleted!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->deleteSecretKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method readSecretKey(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 74
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getSecretKeyFile(J)Ljava/io/File;

    move-result-object v1

    .line 77
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->readIntoByteArray(Ljava/io/FileInputStream;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v1, 0x0

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->readSecretKey(J)[B"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeSecretKey(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    .line 63
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;->getSecretKeyFile(J)Ljava/io/File;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 67
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    throw v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/daos/LocalSecretKeyStorage;--->writeSecretKey(J[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
