.class public Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
.super Ljava/lang/Object;
.source "ImportKeysListEntry.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6c37f65000b52a96L


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mBitStrength:Ljava/lang/Integer;

.field private mCurveOid:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mExpired:Z

.field private mFbUsername:Ljava/lang/String;

.field private mFingerprint:[B

.field private mHashCode:Ljava/lang/Integer;

.field private mKeyIdHex:Ljava/lang/String;

.field private mKeybaseName:Ljava/lang/String;

.field private mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private mMergedUserIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

.field private mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

.field private mQuery:Ljava/lang/String;

.field private mRevoked:Z

.field private mSecretKey:Z

.field private mSecure:Z

.field private mSortedUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mUpdated:Z

.field private mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 384
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$2;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 272
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mHashCode:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    .line 282
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mHashCode:Ljava/lang/Integer;

    .line 283
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->isSecret()Z

    move-result v0

    iput-boolean v0, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    .line 285
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setPrimaryUserId(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getKeyId()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setKeyId(J)V

    .line 288
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getFingerprint()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setFingerprint([B)V

    const/4 v1, 0x0

    .line 291
    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    .line 292
    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecure:Z

    .line 295
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getBitStrength()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    .line 296
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getCurveOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mCurveOid:Ljava/lang/String;

    .line 297
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getAlgorithm()I

    move-result v1

    .line 298
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mCurveOid:Ljava/lang/String;

    invoke-static {v5, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->getAlgorithmInfo(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mAlgorithm:Ljava/lang/String;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mHashCode:Ljava/lang/Integer;

    .line 301
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getUnorderedUserIds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->setUserIds(Ljava/util/ArrayList;)V

    .line 304
    :try_start_0
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v5

    .line 305
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    return-object p1
.end method

.method static synthetic access$1002(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mAlgorithm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    return p1
.end method

.method static synthetic access$1302(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeybaseName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFbUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$302(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$402(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    return p1
.end method

.method static synthetic access$502(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    return p1
.end method

.method static synthetic access$602(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUpdated:Z

    return p1
.end method

.method static synthetic access$702(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$802(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;[B)[B
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    return-object p1
.end method

.method static synthetic access$902(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyIdHex:Ljava/lang/String;

    return-object p1
.end method

.method private sortMergedUserIds()V
    .locals 5

    move-object/16 v2, p0

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSortedUserIds:Ljava/util/ArrayList;

    .line 342
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSortedUserIds:Ljava/util/ArrayList;

    new-instance v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry$1;-><init>(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->sortMergedUserIds()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateMergedUserIds()V
    .locals 7

    move-object/16 v4, p0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    .line 312
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v2

    .line 317
    iget-object v3, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 318
    iget-object v1, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    iget-object v3, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 321
    iget-object v3, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    iget-object v2, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    iget-object v3, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iget-object v2, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    iget-object v2, v2, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :cond_2
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 336
    iput-object v0, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSortedUserIds:Ljava/util/ArrayList;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->updateMergedUserIds()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addUserIds(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 247
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 248
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 255
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->updateMergedUserIds()V

    :cond_2
    return v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->addUserIds(Ljava/util/List;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 165
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mAlgorithm:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getAlgorithm()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getBitStrength()Ljava/lang/Integer;
    .locals 4

    move-object/16 v1, p0

    .line 153
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getBitStrength()Ljava/lang/Integer;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getCurveOid()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 157
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mCurveOid:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getCurveOid()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    move-object/16 v1, p0

    .line 129
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getDate()Ljava/util/Date;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFbUsername()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 209
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFbUsername:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getFbUsername()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFingerprint()[B
    .locals 4

    move-object/16 v1, p0

    .line 149
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getFingerprint()[B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyIdHex()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 89
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyIdHex:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getKeyIdHex()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeybaseName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 201
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeybaseName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getKeybaseName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeybaseUserIds()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getKeybaseUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
    .locals 4

    move-object/16 v1, p0

    .line 193
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getParcelableKeyRing()Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 74
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getParcelableKeyRing()Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPrimaryUserId()Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;
    .locals 4

    move-object/16 v1, p0

    .line 181
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getPrimaryUserId()Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getQuery()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 217
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mQuery:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getQuery()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSortedUserIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 234
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSortedUserIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 235
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->sortMergedUserIds()V

    .line 237
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSortedUserIds:Ljava/util/ArrayList;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getSortedUserIds()Ljava/util/ArrayList;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUserIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 230
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->getUserIds()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasSameKeyAs(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 82
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->hasSameKeyAs(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hashCode()I
    .locals 4

    move-object/16 v1, p0

    .line 225
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->hashCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isExpired()Z
    .locals 4

    move-object/16 v1, p0

    .line 101
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isExpired()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevoked()Z
    .locals 4

    move-object/16 v1, p0

    .line 109
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isRevoked()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isRevokedOrExpiredOrInsecure()Z
    .locals 4

    move-object/16 v1, p0

    .line 125
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecure:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isRevokedOrExpiredOrInsecure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSecretKey()Z
    .locals 4

    move-object/16 v1, p0

    .line 173
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isSecretKey()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isSecure()Z
    .locals 4

    move-object/16 v1, p0

    .line 117
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecure:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isSecure()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isUpdated()Z
    .locals 4

    move-object/16 v1, p0

    .line 133
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUpdated:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->isUpdated()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 169
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mAlgorithm:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setAlgorithm(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setBitStrength(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setBitStrength(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 141
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setDate(Ljava/util/Date;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setExpired(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 105
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setExpired(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFbUsername(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 213
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFbUsername:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setFbUsername(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFingerprint([B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 145
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setFingerprint([B)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyId(J)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 97
    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyIdHex:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyIdHex(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 93
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyIdHex:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setKeyIdHex(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeybaseName(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 205
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeybaseName:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setKeybaseName(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 197
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setParcelableKeyRing(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 78
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setParcelableKeyRing(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrimaryUserId(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 185
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setPrimaryUserId(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPrimaryUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 189
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setPrimaryUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 221
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mQuery:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setQuery(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setRevoked(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 113
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setRevoked(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecretKey(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 177
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setSecretKey(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecure(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 121
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecure:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setSecure(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUpdated(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 137
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUpdated:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setUpdated(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setUserIds(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 241
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    .line 242
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->updateMergedUserIds()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->setUserIds(Ljava/util/ArrayList;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 360
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mParcelableKeyRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 361
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mPrimaryUserId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 362
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 363
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mMergedUserIds:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 364
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mRevoked:Z

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 365
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mExpired:Z

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 366
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mUpdated:Z

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 367
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 371
    :cond_1
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFingerprint:[B

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 372
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyIdHex:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mBitStrength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    :cond_3
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mSecretKey:Z

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 379
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 380
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mKeybaseName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->mFbUsername:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
