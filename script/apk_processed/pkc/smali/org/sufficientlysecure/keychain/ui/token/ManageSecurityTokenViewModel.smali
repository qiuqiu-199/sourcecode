.class public Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "ManageSecurityTokenViewModel.java"


# static fields
.field private static final MIN_OPERATION_TIME_MILLIS:J = 0x2bcL


# instance fields
.field private keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation
.end field

.field private keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation
.end field

.field private keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation
.end field

.field private keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation
.end field

.field private publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

.field tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 15
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getKeyRetrievalContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 57
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;

    invoke-direct {v1, v2, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;Landroid/net/Uri;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 59
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->setMinLoadTime(Ljava/lang/Long;)V

    .line 61
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->getKeyRetrievalContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyRetrievalKeyserver(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 49
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$2;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 51
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->setMinLoadTime(Ljava/lang/Long;)V

    .line 53
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->getKeyRetrievalKeyserver(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyRetrievalLocal(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 33
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$0;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 35
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->setMinLoadTime(Ljava/lang/Long;)V

    .line 37
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->getKeyRetrievalLocal(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getKeyRetrievalUri(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 41
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel$$Lambda$1;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 43
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    const-wide/16 v0, 0x2bc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->setMinLoadTime(Ljava/lang/Long;)V

    .line 45
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->getKeyRetrievalUri(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$getKeyRetrievalContentUri$0$ManageSecurityTokenViewModel(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;->retrieveContentUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;

    move-result-object p1

    return-object p1
.end method

.method public resetLiveData(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 65
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 67
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalLocal:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 69
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 71
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalKeyserver:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 73
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 75
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    .line 77
    :cond_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;->removeObservers(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 79
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->keyRetrievalContentUri:Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    :cond_3
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->resetLiveData(Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 28
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 29
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->publicKeyRetriever:Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;--->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
