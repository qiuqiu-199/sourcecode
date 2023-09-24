.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "ViewKeyAdvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewKeyAdvViewModel"
.end annotation


# instance fields
.field private masterKeyId:Ljava/lang/Long;

.field private subKeyLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private userIdsLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 117
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getSubkeyLiveData$2$ViewKeyAdvActivity$ViewKeyAdvViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$4;

    invoke-direct {v1, p1, p2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$getUserIdLiveData$4$ViewKeyAdvActivity$ViewKeyAdvViewModel(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Landroid/arch/lifecycle/LiveData;
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$3;

    invoke-direct {v1, p1, p2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    invoke-direct {v0, p0, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static final synthetic lambda$null$1$ViewKeyAdvActivity$ViewKeyAdvViewModel(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/util/List;
    .locals 2

    .line 147
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSubKeysByMasterKeyId(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$null$3$ViewKeyAdvActivity$ViewKeyAdvViewModel(Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/util/List;
    .locals 3

    const/4 v0, 0x1

    .line 157
    new-array v0, v0, [J

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    const/4 p1, 0x0

    aput-wide v1, v0, p1

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUserIds([J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getSubkeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;>;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 143
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->subKeyLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 144
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 145
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$1;

    invoke-direct {v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$1;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    invoke-static {v1, v2}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->subKeyLiveData:Landroid/arch/lifecycle/LiveData;

    .line 149
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->subKeyLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;--->getSubkeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 8
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

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 131
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->masterKeyId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 132
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v0, "masterKeyId must be set to retrieve this!"

    invoke-direct {v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_1

    .line 135
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$0;

    invoke-direct {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    invoke-direct {v1, v6, v2, v3, v4}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;JLorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v1, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 139
    :cond_1
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->unifiedKeyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;--->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getUserIdLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;>;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 153
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->userIdsLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 154
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 155
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$2;

    invoke-direct {v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel$$Lambda$2;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;)V

    invoke-static {v1, v2}, Landroid/arch/lifecycle/Transformations;->switchMap(Landroid/arch/lifecycle/LiveData;Landroid/arch/core/util/Function;)Landroid/arch/lifecycle/LiveData;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->userIdsLiveData:Landroid/arch/lifecycle/LiveData;

    .line 159
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->userIdsLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;--->getUserIdLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$getUnifiedKeyInfoLiveData$0$ViewKeyAdvActivity$ViewKeyAdvViewModel(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object p1

    return-object p1
.end method

.method setMasterKeyId(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->masterKeyId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 125
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot change masterKeyId once set!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->masterKeyId:Ljava/lang/Long;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;--->setMasterKeyId(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
