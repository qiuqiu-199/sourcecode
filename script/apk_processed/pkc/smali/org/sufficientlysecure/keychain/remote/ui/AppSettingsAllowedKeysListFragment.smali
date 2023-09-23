.class public Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "AppSettingsAllowedKeysListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;
    .locals 6

    move-object/16 v3, p0

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    .line 50
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;--->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 65
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "package_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->packageName:Ljava/lang/String;

    const v3, 0x7f110964

    .line 71
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->setEmptyText(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->hideList(Z)V

    .line 78
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v3

    .line 79
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 81
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment$$Lambda$0;->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment$$Lambda$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;)V

    invoke-virtual {v3, v2, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 58
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    return-void
.end method

.method public onLoadUnifiedKeyData(Ljava/util/List;)V
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

    .line 91
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->createMultiChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    .line 93
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getAllowedKeyIdsForApp(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    .line 95
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setSelectionByIds(Ljava/util/Set;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setUnifiedKeyInfoItems(Ljava/util/List;)V

    .line 100
    :goto_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->isResumed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 101
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->showList(Z)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;--->onLoadUnifiedKeyData(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public saveAllowedKeys()V
    .locals 6

    move-object/16 v3, p0

    .line 86
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getSelectionIds()Ljava/util/Set;

    move-result-object v0

    .line 87
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->saveAllowedKeyIdsForApp(Ljava/lang/String;Ljava/util/Set;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;--->saveAllowedKeys()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
