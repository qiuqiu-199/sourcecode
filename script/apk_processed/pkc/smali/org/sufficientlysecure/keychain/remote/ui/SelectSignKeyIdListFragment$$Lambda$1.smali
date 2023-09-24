.class final synthetic Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/daos/KeyRepository;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;---><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;
    .locals 4

    move-object/16 v1, p0

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;--->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
