.class public Lorg/sufficientlysecure/keychain/util/ParcelableCache;
.super Ljava/lang/Object;
.source "ParcelableCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NULL_UUID:Ljava/util/UUID;


# instance fields
.field private objectCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/util/UUID;",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->NULL_UUID:Ljava/util/UUID;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private dehydrateParcelable(Ljava/lang/Object;)Ljava/util/UUID;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    .line 51
    sget-object v3, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->NULL_UUID:Ljava/util/UUID;

    return-object v3

    .line 53
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 54
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;--->dehydrateParcelable(Ljava/lang/Object;)Ljava/util/UUID;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private rehydrateParcelable(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")TE;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 69
    sget-object v0, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->NULL_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return-object v3

    .line 72
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->objectCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;--->rehydrateParcelable(Ljava/util/UUID;)Ljava/lang/Object;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public cacheAndWriteToParcel(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 88
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->dehydrateParcelable(Ljava/lang/Object;)Ljava/util/UUID;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;--->cacheAndWriteToParcel(Ljava/lang/Object;Landroid/os/Parcel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public readFromParcelAndGetFromCache(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TE;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 79
    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 80
    invoke-virtual {v5}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 81
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 83
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/util/ParcelableCache;->rehydrateParcelable(Ljava/util/UUID;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ParcelableCache;--->readFromParcelAndGetFromCache(Landroid/os/Parcel;)Ljava/lang/Object;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
