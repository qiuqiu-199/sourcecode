.class public Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ImportKeysAdapter.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;,
        Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;",
        ">;",
        "Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

.field private mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

.field private mNonInteractive:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;Z)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 71
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 73
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 74
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

    .line 75
    iput-boolean p0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mNonInteractive:Z

    .line 77
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;---><init>(Landroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mNonInteractive:Z

    return p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->getKeyWithProgress(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->changeShowed(IZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method private changeProgress(IZ)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 338
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    aget-object v0, v0, v2

    .line 339
    iput-boolean v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mProgress:Z

    .line 340
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->notifyItemChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->changeProgress(IZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private changeShowed(IZ)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 327
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    aget-object v0, v0, v2

    .line 328
    iput-boolean v3, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mShowed:Z

    .line 329
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->notifyItemChanged(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->changeShowed(IZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKey(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 212
    invoke-direct {v2, v4, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->prepareKeyOperation(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v4

    if-eqz p0, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mListener:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;

    .line 214
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p0, v4, v3}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysOperationCallback;-><init>(Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysResultListener;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;Ljava/lang/Integer;)V

    .line 215
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v4, 0x1

    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-direct {v3, v4, p0, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    .line 216
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->getKey(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyWithProgress(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    .line 203
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->isLoading(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 207
    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->changeProgress(IZ)V

    .line 208
    invoke-direct {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->getKey(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->getKeyWithProgress(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isLoading(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 333
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    aget-object v2, v0, v2

    .line 334
    iget-boolean v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mProgress:Z

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->isLoading(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private mergeEntryWithKey(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 290
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isRevoked()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setRevoked(Z)V

    .line 291
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isExpired()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setExpired(Z)V

    .line 292
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isSecure()Z

    move-result v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setSecure(Z)V

    .line 294
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getAlgorithm()I

    move-result v0

    .line 296
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v1

    .line 297
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setAlgorithm(Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 304
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setDate(Ljava/util/Date;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Creation date doesn\'t match the expected one"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 310
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyId(J)V

    .line 312
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getUnorderedUserIds()Ljava/util/ArrayList;

    move-result-object v5

    .line 313
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeybaseUserIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUserIds(Ljava/util/ArrayList;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->mergeEntryWithKey(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private prepareKeyOperation(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 220
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getParcelableKeyRing()Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->getBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 228
    :try_start_0
    new-instance v4, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "key_import.pcl"

    invoke-direct {v4, v1, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableFileCache;->writeCache(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "Problem writing cache file"

    const/4 v1, 0x0

    .line 232
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v0, "Problem writing cache file!"

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    if-eqz v5, :cond_0

    .line 237
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createFromFileCacheWithSkipSave()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v4

    return-object v4

    .line 239
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createFromFileCache()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v4

    return-object v4

    .line 242
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v4

    if-eqz v5, :cond_2

    .line 248
    invoke-static {v1, v4}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createWithSkipSave(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v4

    return-object v4

    .line 250
    :cond_2
    invoke-static {v1, v4}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->prepareKeyOperation(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearData()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 114
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    .line 115
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    .line 116
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->clearData()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEntries()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation

    move-object/16 v5, p0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    if-nez v2, :cond_0

    return-object v0

    .line 131
    :cond_0
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 133
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isSecretKey()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->getEntries()Ljava/util/List;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 199
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    if-nez v8, :cond_0

    .line 258
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "position parameter must be non-null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    :cond_0
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->success()Z

    move-result v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKey result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 266
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key ID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->getMasterKeyId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "| isRev: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isRevoked()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "| isExp: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isExpired()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "| isSec: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;->isSecure()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 267
    invoke-static {v1, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 272
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->isOkUpdated()Z

    move-result v7

    invoke-virtual {v1, v7}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUpdated(Z)V

    .line 274
    invoke-direct {v6, v1, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mergeEntryWithKey(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;)V

    .line 276
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v7, v7, v0

    iput-boolean v3, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mDownloaded:Z

    .line 277
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->changeShowed(IZ)V

    goto :goto_0

    .line 279
    :cond_1
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKey retrieved more than one key ("

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    :cond_2
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 286
    :goto_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->changeProgress(IZ)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->handleResult(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;Ljava/lang/Integer;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 58
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 158
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;->b:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    .line 159
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 160
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    .line 162
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    aget-object v1, v1, v6

    .line 164
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->card:Landroid/support/v7/widget/CardView;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;

    invoke-direct {v3, v4, v1, v6, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;

    invoke-direct {v3, v4, v6, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$2;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    iget-object v6, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->showKey:Landroid/widget/Button;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;

    invoke-direct {v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$3;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extraContainer:Landroid/widget/FrameLayout;

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mShowed:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 193
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->progress:Landroid/widget/ProgressBar;

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mProgress:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 194
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->importKey:Landroid/widget/Button;

    iget-boolean v6, v1, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mProgress:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 152
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 153
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;

    const v1, 0x7f0c0088

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Landroid/view/View;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;)V"
        }
    .end annotation

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 81
    iput-object v8, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    .line 83
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    iput-object v8, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 84
    :goto_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    array-length v1, v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 85
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 87
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    const/4 v4, 0x0

    invoke-direct {v3, v7, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;)V

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getKeyIdHex()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdHexToKeyId(Ljava/lang/String;)J

    move-result-wide v5

    .line 91
    :try_start_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isSecretKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getCanonicalizedSecretKeyRing(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKeyRing;->getVerified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v1

    goto :goto_1

    .line 94
    :cond_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1, v5, v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v4

    :cond_1
    move-object v1, v4

    .line 97
    :goto_1
    iput-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mAlreadyPresent:Z

    if-eqz v1, :cond_2

    .line 98
    sget-object v4, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->UNVERIFIED:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mVerified:Z
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mKeyStates:[Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 107
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-direct {v7, v8, v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->getKeyWithProgress(ILorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)V

    .line 110
    :cond_4
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;->notifyDataSetChanged()V

    return-void

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
