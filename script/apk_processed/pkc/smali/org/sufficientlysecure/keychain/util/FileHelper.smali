.class public Lorg/sufficientlysecure/keychain/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static hasOpenDocumentIntent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 84
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/FileHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x0

    .line 301
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 302
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 303
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x400

    .line 304
    :try_start_2
    new-array v2, v2, [B

    .line 306
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 307
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 312
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    if-eqz v3, :cond_2

    .line 315
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception v2

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 312
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 320
    :catch_1
    :cond_4
    throw v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static deleteFileSecurely(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v10, p0

    move-object/16 v11, p1

    .line 331
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    invoke-static {v10, v11}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v10, v1, v3

    if-nez v10, :cond_0

    .line 335
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Error opening file!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 338
    :cond_0
    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0x400

    .line 339
    new-array v3, v3, [B

    const-string v4, "w"

    .line 341
    invoke-virtual {v0, v11, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v4

    if-nez v4, :cond_1

    .line 343
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Error opening file!"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 345
    :cond_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-lez v4, :cond_3

    .line 347
    invoke-virtual {v10, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v4, 0x0

    .line 348
    array-length v6, v3

    int-to-long v6, v6

    cmp-long v8, v1, v6

    if-lez v8, :cond_2

    array-length v6, v3

    goto :goto_1

    :cond_2
    long-to-int v6, v1

    :goto_1
    invoke-virtual {v5, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 349
    array-length v4, v3

    int-to-long v6, v4

    sub-long v8, v1, v6

    move-wide v1, v8

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    const-string v10, "file"

    .line 353
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 354
    new-instance v10, Ljava/io/File;

    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    return v10

    :cond_4
    const/4 v10, 0x0

    .line 356
    invoke-virtual {v0, v11, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    return v10

    const-string v12, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->deleteFileSecurely(Landroid/content/Context;Landroid/net/Uri;)I"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-wide/16 v0, -0x1

    .line 188
    invoke-static {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J

    move-result-wide v2

    return-wide v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->getFileSize(Landroid/content/Context;Landroid/net/Uri;)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-wide/16 v9, p2

    const-string v0, "file"

    .line 192
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v7, Ljava/io/File;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    if-nez v2, :cond_0

    move-wide v7, v9

    :cond_0
    return-wide v7

    .line 202
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "_size"

    const/4 v6, 0x0

    aput-object v7, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 205
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v9, v0

    .line 208
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-wide v9

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->getFileSize(Landroid/content/Context;Landroid/net/Uri;J)J"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 169
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/String;

    const-string v9, "_display_name"

    const/4 v8, 0x0

    aput-object v9, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 175
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-nez v1, :cond_2

    .line 181
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 182
    array-length v10, v9

    sub-int/2addr v10, v0

    aget-object v1, v9, v10

    :cond_2
    return-object v1

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->getFilename(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5, v1}, Landroid/provider/DocumentsContract;->getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object v1

    :cond_0
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Point;)Landroid/graphics/Bitmap;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static hasOpenDocumentIntent(Landroid/content/Context;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v2, p0

    .line 156
    sget-object v0, Lorg/sufficientlysecure/keychain/util/FileHelper;->hasOpenDocumentIntent:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 160
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lorg/sufficientlysecure/keychain/util/FileHelper;->hasOpenDocumentIntent:Ljava/lang/Boolean;

    .line 163
    :cond_0
    sget-object v2, Lorg/sufficientlysecure/keychain/util/FileHelper;->hasOpenDocumentIntent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->hasOpenDocumentIntent(Landroid/content/Context;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isEncryptedFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 236
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 237
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "-----BEGIN PGP MESSAGE-----"

    .line 240
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 241
    new-array v2, v1, [C

    .line 242
    invoke-virtual {v5, v2, v0, v1}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 248
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v1, "Error closing file"

    .line 250
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v4

    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v4

    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_2

    .line 248
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v1, "Error closing file"

    .line 250
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_2
    :goto_3
    throw v4

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->isEncryptedFile(Landroid/content/Context;Landroid/net/Uri;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isStorageMounted(Ljava/lang/String;)Z
    .locals 4

    move-object/16 v1, p0

    .line 363
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v0, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->isStorageMounted(Ljava/lang/String;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 107
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->hasOpenDocumentIntent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocumentKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocumentPreKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static openDocumentKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.content.extra.SHOW_ADVANCED"

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "android.intent.extra.ALLOW_MULTIPLE"

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {v2, v0, p0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->openDocumentKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static openDocumentPreKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    move/16 p0, p3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 120
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_0
    invoke-virtual {v3, v0, p0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f110ba7

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->openDocumentPreKitKat(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static openInputStreamSafe(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 386
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/util/FileHelperLollipop;->openInputStreamSafe(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 388
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->openInputStreamSafe(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static readTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 268
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 269
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x100

    .line 270
    new-array v0, v0, [B

    .line 272
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v4, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 276
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v5, :cond_1

    .line 283
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 286
    :catch_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 289
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    :goto_1
    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->readTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static readableFileSize(J)Ljava/lang/String;
    .locals 11

    move-wide/16 v8, p0

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gtz v2, :cond_0

    const-string v8, "0"

    return-object v8

    :cond_0
    const/4 v0, 0x5

    .line 258
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    long-to-double v8, v8

    .line 259
    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.#"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v6, v1

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v8, v3

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->readableFileSize(J)Ljava/lang/String;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    const-string v0, "*/*"

    .line 90
    invoke-static {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.content.extra.SHOW_ADVANCED"

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.TITLE"

    .line 101
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v2, v0, p0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/FileHelper;--->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
