.class public abstract Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.super Ljava/lang/Object;
.source "BaseOperation.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface;"
    }
.end annotation


# instance fields
.field public final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public final mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field public final mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mContext:Landroid/content/Context;

    .line 69
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    .line 70
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    const/4 v1, 0x0

    .line 71
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mContext:Landroid/content/Context;

    .line 77
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    .line 78
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 79
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected checkCancelled()Z
    .locals 4

    move-object/16 v1, p0

    .line 98
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->checkCancelled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;",
            ")",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"
        }
    .end annotation
.end method

.method public getCachedPassphrase(J)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
        }
    .end annotation

    move-object/16 v3, p0

    move-wide/16 v4, p1

    const-wide/16 v0, -0x1

    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 110
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getMasterKeyIdBySubkeyId(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 112
    new-instance v4, Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;-><init>()V

    throw v4

    .line 114
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v4

    return-object v4

    .line 116
    :cond_1
    invoke-virtual {v3, v0, v1, v0, v1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->getCachedPassphrase(J)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-wide/16 p0, p3

    .line 122
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v3, p0, p1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->getCachedPassphrase(Landroid/content/Context;JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v2
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$KeyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 125
    :catch_0
    new-instance v2, Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;-><init>()V

    throw v2

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected setPreventCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 102
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setPreventCancel()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->setPreventCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateProgress(II)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 92
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v0, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(II)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->updateProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public updateProgress(III)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(Ljava/lang/Integer;II)V

    :cond_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BaseOperation;--->updateProgress(III)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
