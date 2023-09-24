.class public Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;
.super Ljava/lang/Object;
.source "ParcelableFileCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 51
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mContext:Landroid/content/Context;

    .line 53
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mFilename:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;---><init>(Landroid/content/Context;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getOutputStream()Ljava/io/DataOutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 90
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cache dir is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->getOutputStream()Ljava/io/DataOutputStream;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeParcelable(Landroid/os/Parcelable;Ljava/io/DataOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/io/DataOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 84
    array-length v1, v3

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 85
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->writeParcelable(Landroid/os/Parcelable;Ljava/io/DataOutputStream;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public delete()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v3, p0

    .line 221
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cache dir is null!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->delete()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public readCache()Lorg/sufficientlysecure/keychain/util/IteratorWithSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/util/IteratorWithSize<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    const/4 v0, 0x1

    .line 107
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->readCache(Z)Lorg/sufficientlysecure/keychain/util/IteratorWithSize;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->readCache()Lorg/sufficientlysecure/keychain/util/IteratorWithSize;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public readCache(Z)Lorg/sufficientlysecure/keychain/util/IteratorWithSize;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/sufficientlysecure/keychain/util/IteratorWithSize<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v7, p0

    move/16 v8, p1

    .line 120
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    new-instance v8, Ljava/io/IOException;

    const-string v0, "cache dir is null!"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->mFilename:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 137
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;

    move-object v1, v0

    move-object v2, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;-><init>(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;ILjava/io/DataInputStream;ZLjava/io/File;)V

    return-object v0

    :catch_0
    move-exception v8

    const-string v0, "parcel import file not existing"

    const/4 v1, 0x0

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->readCache(Z)Lorg/sufficientlysecure/keychain/util/IteratorWithSize;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeCache(ILjava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    .line 57
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->writeParcelable(Landroid/os/Parcelable;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 66
    throw v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->writeCache(ILjava/util/Iterator;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeCache(Landroid/os/Parcelable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 70
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->getOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->writeParcelable(Landroid/os/Parcelable;Ljava/io/DataOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 77
    throw v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;--->writeCache(Landroid/os/Parcelable;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
