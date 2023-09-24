.class public Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "UnifiedKeyInfoViewModel.java"


# instance fields
.field private masterKeyId:Ljava/lang/Long;

.field private unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 15
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getMasterKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 27
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;--->getMasterKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 31
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 32
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "masterKeyId must be set to retrieve this!"

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_1

    .line 35
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 36
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriMasterKeyId(J)Landroid/net/Uri;

    move-result-object v1

    .line 37
    new-instance v2, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel$$Lambda$0;

    invoke-direct {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    invoke-direct {v2, v5, v1, v3}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 40
    :cond_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;--->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$getUnifiedKeyInfoLiveData$0$UnifiedKeyInfoViewModel(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object p1

    return-object p1
.end method

.method public setMasterKeyId(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 20
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 21
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "cannot change masterKeyId once set!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 23
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->masterKeyId:Ljava/lang/Long;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;--->setMasterKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
