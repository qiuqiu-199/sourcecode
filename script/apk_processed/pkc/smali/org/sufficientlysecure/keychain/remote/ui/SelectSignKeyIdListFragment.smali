.class public Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "SelectSignKeyIdListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARG_DATA:Ljava/lang/String; = "data"

.field private static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final ARG_PACKAGE_SIGNATURE:Ljava/lang/String; = "package_signature"

.field private static final ARG_PREF_UID:Ljava/lang/String; = "pref_uid"


# instance fields
.field private apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private packageName:Ljava/lang/String;

.field private packageSignature:[B

.field private prefUid:Ljava/lang/String;

.field private resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 48
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$onLoadUnifiedKeyData$1$SelectSignKeyIdListFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Ljava/lang/Integer;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f110870

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f11086e

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_2

    const p0, 0x7f11086f

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_sign_key()Z

    move-result p0

    if-nez p0, :cond_3

    const p0, 0x7f11086d

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move-object/16 p0, p3

    .line 66
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    .line 69
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package_signature"

    .line 70
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "data"

    .line 71
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "pref_uid"

    .line 72
    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->newInstance(Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onSelectKeyItemClicked(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 158
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->packageName:Ljava/lang/String;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->packageSignature:[B

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/model/ApiApp;->create(Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/model/ApiApp;

    move-result-object v0

    .line 159
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V

    .line 160
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->addAllowedKeyIdForApp(Ljava/lang/String;J)V

    .line 161
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->resultIntent:Landroid/content/Intent;

    const-string v1, "sign_key_id"

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 163
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 164
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->resultIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {v5, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onSelectKeyItemClicked(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$SelectSignKeyIdListFragment(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->onSelectKeyItemClicked(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$SelectSignKeyIdListFragment(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->onCreateKeyDummyClicked()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 106
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->resultIntent:Landroid/content/Intent;

    .line 109
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "pref_uid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->prefUid:Ljava/lang/String;

    .line 110
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "package_name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->packageName:Ljava/lang/String;

    .line 111
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "package_signature"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->packageSignature:[B

    const v3, 0x7f110964

    .line 113
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->setEmptyText(Ljava/lang/String;)V

    .line 114
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v3, 0x0

    .line 115
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->hideList(Z)V

    .line 117
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v0, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 119
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$1;->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v1

    .line 118
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    .line 120
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$2;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;)V

    invoke-virtual {v3, v2, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 81
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 83
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void
.end method

.method public onCreateKeyDummyClicked()V
    .locals 7

    move-object/16 v4, p0

    .line 148
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->prefUid:Ljava/lang/String;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    .line 150
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "name"

    .line 151
    iget-object v3, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "email"

    .line 152
    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x8884

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onCreateKeyDummyClicked()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    .line 88
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x7f0c00e5

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v6, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-super {v5, v6, v7, p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    .line 96
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v6, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$0;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadUnifiedKeyData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 124
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$3;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;)V

    sget-object v2, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment$$Lambda$4;->$instance:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;

    invoke-static {v0, v4, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->createSingleClickableAdapter(Landroid/content/Context;Ljava/util/List;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$OnKeyClickListener;Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter$KeyDisabledPredicate;)Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    .line 138
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->keyChoiceAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/KeyChoiceAdapter;->setUnifiedKeyInfoItems(Ljava/util/List;)V

    .line 143
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->isResumed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 144
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->showList(Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;--->onLoadUnifiedKeyData(Ljava/util/List;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
