.class public Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "SelectPublicKeyFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_PRESELECTED_KEY_IDS:Ljava/lang/String; = "preselected_key_ids"


# instance fields
.field private keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private selectedMasterKeyIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$onLoadUnifiedKeyData$1$SelectPublicKeyFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f110870

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f11086e

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_2

    const p0, 0x7f11086f

    .line 132
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_encrypt_key()Z

    move-result p0

    if-nez p0, :cond_3

    const p0, 0x7f11086c

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadSortedUnifiedKeyInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 84
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfo()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->sortKeysByPreselectionComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->loadSortedUnifiedKeyInfo()Ljava/util/List;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance([J)Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;
    .locals 6

    move-object/16 v3, p0

    .line 48
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;-><init>()V

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "preselected_key_ids"

    .line 51
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 52
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->newInstance([J)Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sortKeysByPreselectionComparator()Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 91
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->sortKeysByPreselectionComparator()Ljava/util/Comparator;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$SelectPublicKeyFragment()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->loadSortedUnifiedKeyInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMasterKeyIds()[J
    .locals 10

    move-object/16 v7, p0

    .line 111
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->getSelectionIds()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    add-int/lit8 v4, v2, 0x1

    .line 119
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->getSelectedMasterKeyIds()[J"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$sortKeysByPreselectionComparator$0$SelectPublicKeyFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)I
    .locals 4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->selectedMasterKeyIds:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    iget-object v1, p0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->selectedMasterKeyIds:Ljava/util/Set;

    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 100
    :cond_2
    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 71
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f110964

    .line 73
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->setEmptyText(Ljava/lang/String;)V

    .line 74
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->hideList(Z)V

    .line 77
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 78
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;)V

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    .line 79
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;)V

    invoke-virtual {v3, v2, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 59
    invoke-super {v5, v6}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v6

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 63
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->selectedMasterKeyIds:Ljava/util/Set;

    .line 64
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v0, "preselected_key_ids"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    array-length v0, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, v6, v1

    .line 65
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->selectedMasterKeyIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

    .line 125
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment$$Lambda$3;->$instance:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    invoke-static {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->createMultiChoiceAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    .line 139
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->selectedMasterKeyIds:Ljava/util/Set;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setSelectionByIds(Ljava/util/Set;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setUnifiedKeyInfoItems(Ljava/util/List;)V

    .line 145
    :goto_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->isResumed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 146
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;->showList(Z)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectPublicKeyFragment;--->onLoadUnifiedKeyData(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
