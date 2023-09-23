.class Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;
.super Ljava/lang/Object;
.source "ManageSecurityTokenPresenter.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;


# instance fields
.field private checkedKeyStatus:Z

.field private final context:Landroid/content/Context;

.field private importKeyData:[B

.field private final lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

.field private masterKeyId:Ljava/lang/Long;

.field private searchedAtUri:Z

.field private searchedKeyservers:Z

.field private searchedLocally:Z

.field private selectedContentUri:Landroid/net/Uri;

.field private view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

.field private final viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 58
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    .line 60
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 61
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    .line 63
    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    .line 64
    invoke-virtual {p0, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->resetLiveData(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;---><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private continueSearch()V
    .locals 6

    move-object/16 v3, p0

    .line 105
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    if-nez v0, :cond_3

    .line 106
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyRetries()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    :goto_0
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->isEmpty()Z

    move-result v2

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 114
    :cond_1
    iput-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    goto :goto_2

    .line 110
    :cond_2
    :goto_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->CHECK_KEY:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 111
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->delayPerformKeyCheck()V

    return-void

    .line 118
    :cond_3
    :goto_2
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedLocally:Z

    if-nez v0, :cond_4

    .line 119
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_LOCAL:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 120
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->getKeyRetrievalLocal(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$0;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 124
    :cond_4
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedAtUri:Z

    if-nez v0, :cond_5

    .line 125
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 126
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->getKeyRetrievalUri(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$1;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 130
    :cond_5
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedKeyservers:Z

    if-nez v0, :cond_6

    .line 131
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_KEYSERVER:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 132
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->getKeyRetrievalKeyserver(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$2;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 136
    :cond_6
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionRetryOrFromFile()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->continueSearch()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private continueSearchAfterError()V
    .locals 4

    move-object/16 v1, p0

    .line 87
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineError()V

    .line 88
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->continueSearch()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->continueSearchAfterError()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private delayPerformKeyCheck()V
    .locals 7

    move-object/16 v4, p0

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->delayPerformKeyCheck()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private performKeyCheck()V
    .locals 6

    move-object/16 v3, p0

    .line 150
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->isEmpty()Z

    move-result v0

    .line 151
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->isPutKeySupported()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 154
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 155
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionUnsupportedToken()V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyAdminRetries()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 162
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineError()V

    .line 163
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionLocked(I)V

    return-void

    .line 167
    :cond_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 168
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionEmptyToken()V

    return-void

    .line 172
    :cond_3
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyRetries()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 174
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineError()V

    .line 176
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyAdminRetries()I

    move-result v0

    .line 177
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionLocked(I)V

    return-void

    .line 181
    :cond_5
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 183
    iput-boolean v2, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    .line 184
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->continueSearch()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->performKeyCheck()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processContentUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 233
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processContentUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processKeyserverResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedKeyservers:Z

    .line 229
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processKeyserverResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processLocalResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedLocally:Z

    .line 218
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processLocalResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 237
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 239
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processResultSuccess(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->continueSearchAfterError()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processResultSuccess(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 247
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 249
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getKeyData()[B

    move-result-object v0

    .line 250
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 252
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionImport()V

    .line 253
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->importKeyData:[B

    .line 254
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->masterKeyId:Ljava/lang/Long;

    return-void

    :cond_0
    if-eqz v3, :cond_1

    .line 259
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->masterKeyId:Ljava/lang/Long;

    .line 260
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_CHECK:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 262
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->promoteKeyWithTokenInfo(Ljava/lang/Long;)V

    return-void

    .line 266
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Method can only be called with successful result!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processResultSuccess(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedAtUri:Z

    .line 224
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->processUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private promoteKeyWithTokenInfo(Ljava/lang/Long;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 270
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getAid()[B

    move-result-object v5

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v5, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->operationPromote(J[BLjava/util/List;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->promoteKeyWithTokenInfo(Ljava/lang/Long;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private resetAndContinueSearch()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    .line 93
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedLocally:Z

    .line 94
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedAtUri:Z

    .line 95
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedKeyservers:Z

    .line 97
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->resetLiveData(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 99
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->hideAction()V

    .line 100
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->resetStatusLines()V

    .line 101
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->continueSearch()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->resetAndContinueSearch()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startLoadingFile(Landroid/net/Uri;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 390
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->resetStatusLines()V

    .line 391
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->SEARCH_CONTENT_URI:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 393
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->getKeyRetrievalContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;)V

    invoke-virtual {v3, v0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->startLoadingFile(Landroid/net/Uri;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ManageSecurityTokenPresenter(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processLocalResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void
.end method

.method final synthetic bridge$lambda$1$ManageSecurityTokenPresenter(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void
.end method

.method final synthetic bridge$lambda$2$ManageSecurityTokenPresenter(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processKeyserverResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void
.end method

.method final synthetic bridge$lambda$3$ManageSecurityTokenPresenter(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->processContentUriResult(Lorg/sufficientlysecure/keychain/ui/token/PublicKeyRetriever$KeyRetrievalResult;)V

    return-void
.end method

.method public detach()V
    .locals 5

    move-object/16 v2, p0

    const/4 v0, 0x0

    .line 74
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    .line 76
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->resetLiveData(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->detach()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$delayPerformKeyCheck$0$ManageSecurityTokenPresenter()V
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->performKeyCheck()V

    return-void
.end method

.method public onActivityCreated()V
    .locals 4

    move-object/16 v1, p0

    .line 81
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedLocally:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedAtUri:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->searchedKeyservers:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->continueSearch()V

    :cond_1
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onActivityCreated()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickConfirmReset()V
    .locals 4

    move-object/16 v1, p0

    .line 336
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->operationResetSecurityToken()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickConfirmReset()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickImport()V
    .locals 5

    move-object/16 v2, p0

    .line 275
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->IMPORT:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 276
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->hideAction()V

    .line 277
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->importKeyData:[B

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->operationImportKey([B)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickImport()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickLoadFile()V
    .locals 4

    move-object/16 v1, p0

    .line 374
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showFileSelectDialog()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickLoadFile()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickResetToken()V
    .locals 5

    move-object/16 v2, p0

    .line 323
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->isResetSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getTokenType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    move-result-object v0

    .line 325
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->GNUK_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;->NITROKEY_START_OLD:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 327
    :goto_1
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showErrorCannotReset(Z)V

    return-void

    .line 331
    :cond_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showConfirmResetDialog()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickResetToken()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickRetry()V
    .locals 3

    move-object/16 v0, p0

    .line 313
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->resetAndContinueSearch()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickRetry()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickSetupToken()V
    .locals 5

    move-object/16 v2, p0

    .line 355
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->startCreateKeyForToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickSetupToken()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickUnlockToken()V
    .locals 4

    move-object/16 v1, p0

    .line 189
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showAdminPinDialog()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickUnlockToken()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickUnlockTokenImpossible()V
    .locals 4

    move-object/16 v1, p0

    .line 213
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showErrorCannotUnlock()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickUnlockTokenImpossible()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickViewKey()V
    .locals 6

    move-object/16 v3, p0

    .line 318
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->masterKeyId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->finishAndShowKey(J)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onClickViewKey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onFileSelected(Landroid/net/Uri;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 379
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkReadPermission(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->selectedContentUri:Landroid/net/Uri;

    .line 382
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->requestStoragePermission()V

    return-void

    .line 386
    :cond_0
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->startLoadingFile(Landroid/net/Uri;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onFileSelected(Landroid/net/Uri;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onImportError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 291
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 293
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineError()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onImportError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onImportSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 282
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 284
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 285
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    sget-object v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->TOKEN_PROMOTE:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V

    .line 286
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->masterKeyId:Ljava/lang/Long;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->promoteKeyWithTokenInfo(Ljava/lang/Long;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onImportSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onInputAdminPin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 208
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->operationChangePinSecurityToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onInputAdminPin(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuClickChangePin()V
    .locals 4

    move-object/16 v1, p0

    .line 194
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->checkedKeyStatus:Z

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->tokenInfo:Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->getVerifyAdminRetries()I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showErrorCannotUnlock()V

    return-void

    .line 203
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showAdminPinDialog()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onMenuClickChangePin()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuClickViewLog()V
    .locals 6

    move-object/16 v3, p0

    .line 410
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/GenericOperationResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)V

    .line 411
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showDisplayLogActivity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onMenuClickViewLog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPromoteError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 306
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 308
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineError()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onPromoteError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPromoteSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 298
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->log:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V

    .line 300
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->statusLineOk()V

    .line 301
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;->showActionViewKey()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onPromoteSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenChangePinCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-eqz v3, :cond_0

    .line 367
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    .line 368
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->resetAndContinueSearch()V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onSecurityTokenChangePinCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenChangePinSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 360
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    .line 361
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->resetAndContinueSearch()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onSecurityTokenChangePinSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenResetCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-eqz v3, :cond_0

    .line 348
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    .line 349
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->resetAndContinueSearch()V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onSecurityTokenResetCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSecurityTokenResetSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 341
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    .line 342
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->resetAndContinueSearch()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onSecurityTokenResetSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStoragePermissionDenied()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 405
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->selectedContentUri:Landroid/net/Uri;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onStoragePermissionDenied()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStoragePermissionGranted()V
    .locals 5

    move-object/16 v2, p0

    .line 398
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->selectedContentUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 399
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->selectedContentUri:Landroid/net/Uri;

    .line 400
    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->startLoadingFile(Landroid/net/Uri;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->onStoragePermissionGranted()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;->view:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;--->setView(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
