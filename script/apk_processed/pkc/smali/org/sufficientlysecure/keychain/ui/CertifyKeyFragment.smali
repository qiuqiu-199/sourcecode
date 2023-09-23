.class public Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;
.source "CertifyKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private multiUserIdsFragment:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

.field private uploadKeyCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 55
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
    .locals 6

    move-object/16 v3, p0

    .line 131
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->multiUserIdsFragment:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->getSelectedCertifyActions()Ljava/util/ArrayList;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No identities selected!"

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId()J

    move-result-wide v1

    .line 140
    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;->builder(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->addActions(Ljava/util/Collection;)V

    .line 143
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->uploadKeyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->setParcelableKeyServer(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;

    .line 148
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;

    move-result-object v0

    .line 149
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->cacheActionsParcel(Landroid/os/Parcelable;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreateView$0$CertifyKeyFragment(Landroid/view/View;)V
    .locals 4

    .line 116
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f110c9b

    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object p1

    .line 119
    invoke-interface {p1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 70
    invoke-super {v6, v7}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 73
    invoke-static {v6}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 75
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment$$Lambda$0;->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v3

    .line 74
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    .line 76
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment$$Lambda$1;->get$Lambda(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)Landroid/arch/lifecycle/Observer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    if-nez v7, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v1, "certify_key_id"

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {v7, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v7, v4, v2

    if-eqz v7, :cond_0

    .line 83
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v7, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 84
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->can_certify()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 85
    iget-object v7, v6, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v7, v4, v5}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setPreSelectedKeyId(J)V

    .line 90
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v1, "operation_result"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    if-eqz v7, :cond_1

    .line 93
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v7

    invoke-interface {v7}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 64
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CachingCryptoOperationFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c003b

    const/4 v0, 0x0

    .line 99
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900d3

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const v3, 0x7f0902d0

    .line 102
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->uploadKeyCheckbox:Landroid/widget/CheckBox;

    .line 104
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const p0, 0x7f090247

    invoke-virtual {v3, p0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->multiUserIdsFragment:Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    .line 106
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->certifyKeySpinner:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    const p0, 0x7f1100d0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->setShowNone(Ljava/lang/Integer;)V

    const v3, 0x7f0900d1

    .line 110
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 111
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f040088

    invoke-static {p0, v0}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->getColorFromAttr(Landroid/content/Context;I)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p0, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v3, 0x7f0900d2

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 115
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment$$Lambda$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 156
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 158
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "operation_result"

    .line 159
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 160
    invoke-virtual {v0, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;--->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 55
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/CertifyKeyFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/CertifyResult;)V

    return-void
.end method
