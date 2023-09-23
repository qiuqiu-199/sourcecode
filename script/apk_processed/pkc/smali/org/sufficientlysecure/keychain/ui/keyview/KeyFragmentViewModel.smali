.class public Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "KeyFragmentViewModel.java"


# instance fields
.field private identityInfo:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private keyserverStatus:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/KeyMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private subkeyStatus:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;",
            ">;"
        }
    .end annotation
.end field

.field private systemContactInfo:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 23
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getIdentityInfo$1$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;ZLorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;

    invoke-direct {v1, p1, p3, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$getKeyserverStatus$7$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$4;

    invoke-direct {v1, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$getSubkeyStatus$3$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$6;

    invoke-direct {v1, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$getSystemContactInfo$5$KeyFragmentViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$5;

    invoke-direct {v1, p1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$null$0$KeyFragmentViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Z)Ljava/util/List;
    .locals 2

    .line 35
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->getIdentityInfos(JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$null$2$KeyFragmentViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;
    .locals 2

    .line 45
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->getSubkeyStatus(J)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$null$4$KeyFragmentViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;
    .locals 2

    .line 55
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    .line 56
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result p1

    .line 55
    invoke-virtual {p0, v0, v1, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->getSystemContactInfo(JZ)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$null$6$KeyFragmentViewModel(Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/model/KeyMetadata;
    .locals 2

    .line 66
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->getKeyMetadata(J)Lorg/sufficientlysecure/keychain/model/KeyMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getIdentityInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;Z)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;Z)",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$IdentityInfo;",
            ">;>;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 31
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->identityInfo:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 32
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    move-result-object v0

    .line 33
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;

    invoke-direct {v1, v3, v0, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$0;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;Z)V

    invoke-static {v4, v1}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->identityInfo:Landroid/arch/lifecycle/LiveData;

    .line 37
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->identityInfo:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;--->getIdentityInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;Z)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getKeyserverStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/KeyMetadata;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 62
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->keyserverStatus:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 63
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$3;

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$3;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;)V

    invoke-static {v4, v1}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->keyserverStatus:Landroid/arch/lifecycle/LiveData;

    .line 68
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->keyserverStatus:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;--->getKeyserverStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSubkeyStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao$KeySubkeyStatus;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 41
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->subkeyStatus:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 42
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$1;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SubkeyStatusDao;)V

    invoke-static {v4, v1}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->subkeyStatus:Landroid/arch/lifecycle/LiveData;

    .line 47
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->subkeyStatus:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;--->getSubkeyStatus(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSystemContactInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 51
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->systemContactInfo:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 52
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;

    move-result-object v0

    .line 53
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$2;

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel$$Lambda$2;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;)V

    invoke-static {v4, v1}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->systemContactInfo:Landroid/arch/lifecycle/LiveData;

    .line 58
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;->systemContactInfo:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/KeyFragmentViewModel;--->getSystemContactInfo(Landroid/content/Context;Landroid/arch/lifecycle/LiveData;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
