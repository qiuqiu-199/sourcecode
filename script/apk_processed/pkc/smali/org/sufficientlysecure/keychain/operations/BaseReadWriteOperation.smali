.class public abstract Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;
.super Lorg/sufficientlysecure/keychain/operations/BaseOperation;
.source "BaseReadWriteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lorg/sufficientlysecure/keychain/operations/BaseOperation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 35
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    .line 37
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 42
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 44
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;->mKeyWritableRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/operations/BaseReadWriteOperation;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
