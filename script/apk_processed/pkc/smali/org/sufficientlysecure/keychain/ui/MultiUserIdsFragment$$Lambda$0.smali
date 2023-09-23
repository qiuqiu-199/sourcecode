.class final synthetic Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

.field private final arg$2:Lorg/sufficientlysecure/keychain/daos/KeyRepository;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public loadData()Ljava/lang/Object;
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->lambda$onActivityCreated$0$MultiUserIdsFragment(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment$$Lambda$0;--->loadData()Ljava/lang/Object;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
