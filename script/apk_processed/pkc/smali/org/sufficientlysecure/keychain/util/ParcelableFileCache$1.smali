.class Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;
.super Ljava/lang/Object;
.source "ParcelableFileCache.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/util/IteratorWithSize;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->readCache(Z)Lorg/sufficientlysecure/keychain/util/IteratorWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/util/IteratorWithSize<",
        "TE;>;"
    }
.end annotation


# instance fields
.field buf:[B

.field closed:Z

.field mRing:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

.field final synthetic val$deleteAfterRead:Z

.field final synthetic val$numEntries:I

.field final synthetic val$ois:Ljava/io/DataInputStream;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;ILjava/io/DataInputStream;ZLjava/io/File;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    .line 137
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->this$0:Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

    iput v2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$numEntries:I

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$ois:Ljava/io/DataInputStream;

    iput-boolean p1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$deleteAfterRead:Z

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$tempFile:Ljava/io/File;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 139
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->closed:Z

    const/16 v1, 0x200

    .line 141
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;---><init>(Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;ILjava/io/DataInputStream;ZLjava/io/File;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private close()V
    .locals 4

    move-object/16 v1, p0

    .line 202
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->closed:Z

    if-nez v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$ois:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 205
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$deleteAfterRead:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 213
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->closed:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->close()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private readNext()V
    .locals 7

    move-object/16 v4, p0

    .line 148
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    if-nez v0, :cond_2

    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 154
    :try_start_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$ois:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 155
    :goto_0
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 156
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$ois:Ljava/io/DataInputStream;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 161
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->buf:[B

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 162
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 163
    const-class v1, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    .line 164
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Encountered IOException during cache read!"

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 167
    :catch_1
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->close()V

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->readNext()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/16 v0, p0

    .line 197
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->close()V

    .line 198
    invoke-super {v0}, Ljava/lang/Object;->finalize()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->finalize()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSize()I
    .locals 4

    move-object/16 v1, p0

    .line 144
    iget v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->val$numEntries:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->getSize()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasNext()Z
    .locals 4

    move-object/16 v1, p0

    .line 176
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->readNext()V

    .line 177
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->hasNext()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public next()Landroid/os/Parcelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 182
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->readNext()V

    const/4 v0, 0x0

    .line 184
    :try_start_0
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    return-object v1

    :catchall_0
    move-exception v1

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->mRing:Landroid/os/Parcelable;

    .line 187
    throw v1

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->next()Landroid/os/Parcelable;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;->next()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 4

    move-object/16 v1, p0

    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableFileCache$1;--->remove()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
