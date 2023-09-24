.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;
.super Ljava/lang/Object;
.source "RemoteDeduplicatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;
    }
.end annotation


# instance fields
.field private autocryptInteractor:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

.field private final context:Landroid/content/Context;

.field private keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

.field private final lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

.field private viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->context:Landroid/content/Context;

    .line 48
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;---><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$onLoadKeyInfos$0$RemoteDeduplicatePresenter(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f110870

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f11086e

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_2

    const p0, 0x7f11086f

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_encrypt_key()Z

    move-result p0

    if-nez p0, :cond_3

    const p0, 0x7f11086c

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private onLoadKeyInfos(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 65
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->context:Landroid/content/Context;

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$1;->$instance:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    invoke-static {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->createSingleChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    .line 79
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->setKeyListAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setUnifiedKeyInfoItems(Ljava/util/List;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->onLoadKeyInfos(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$RemoteDeduplicatePresenter(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->onLoadKeyInfos(Ljava/util/List;)V

    return-void
.end method

.method public onCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 102
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 98
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->onClickCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickSelect()V
    .locals 7

    move-object/16 v4, p0

    .line 86
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getActiveItem()Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->showNoSelectionError()V

    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    .line 92
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->autocryptInteractor:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->getDuplicateAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->updateKeyGossipFromDedup(Ljava/lang/String;J)V

    .line 94
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->onClickSelect()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 52
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 56
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    .line 57
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->autocryptInteractor:Lorg/sufficientlysecure/keychain/remote/AutocryptInteractor;

    .line 59
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->getDuplicateAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$RemoteDeduplicateView;->setAddressText(Ljava/lang/String;)V

    .line 61
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->getKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;)V

    invoke-virtual {v3, v0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;--->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
