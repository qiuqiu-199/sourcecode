.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyAdvUserIdsFragment.java"


# instance fields
.field private mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

.field private mUserIdAddFabLayout:Landroid/widget/ViewAnimator;

.field private mUserIds:Landroid/widget/ListView;

.field private mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

.field private mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

.field private mUserIdsAddedLayout:Landroid/view/View;

.field private mUserIdsAddedList:Landroid/widget/ListView;

.field private unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-object p0
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-object p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)Landroid/widget/ViewAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdAddFabLayout:Landroid/widget/ViewAnimator;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/view/ActionMode;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->editKey(Landroid/view/ActionMode;)V

    return-void
.end method

.method private addUserId()V
    .locals 6

    move-object/16 v3, p0

    .line 169
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$2;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    .line 183
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v0, ""

    .line 186
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->newInstance(Landroid/os/Messenger;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    move-result-object v0

    .line 188
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addUserIdDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->addUserId()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editKey(Landroid/view/ActionMode;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 283
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$4;

    invoke-direct {v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/view/ActionMode;)V

    .line 313
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v1, 0x7f110c25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 314
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->editKey(Landroid/view/ActionMode;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editUserId(I)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 110
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getUserId(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v1, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getIsRevoked(I)Z

    move-result v1

    .line 112
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v2, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getIsRevokedPending(I)Z

    move-result v5

    .line 114
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;

    invoke-direct {v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 148
    sget-object v2, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;Landroid/os/Messenger;ZZ)V

    invoke-interface {v2, v3}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->editUserId(I)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUserIds(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 211
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->setData(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onLoadUserIds(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showOrEditUserIdInfo(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 102
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->editUserId(I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->showUserIdInfo(I)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->showOrEditUserIdInfo(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showUserIdInfo(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 157
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getIsRevoked(I)Z

    move-result v0

    .line 158
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v1, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;->getVerificationStatus(I)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v4

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 160
    :goto_0
    sget-object v1, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;

    invoke-direct {v2, v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;ZZ)V

    invoke-interface {v1, v2}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->showUserIdInfo(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyAdvUserIdsFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->onLoadUserIds(Ljava/util/List;)V

    return-void
.end method

.method public enterEditMode()V
    .locals 5

    move-object/16 v2, p0

    .line 235
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->enterEditMode()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$editUserId$2$ViewKeyAdvUserIdsFragment(Landroid/os/Messenger;ZZ)V
    .locals 0

    .line 150
    invoke-static {p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->newInstance(Landroid/os/Messenger;ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string p3, "editUserIdDialog"

    invoke-virtual {p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditUserIdDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$ViewKeyAdvUserIdsFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 80
    invoke-direct {p0, p3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->showOrEditUserIdInfo(I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$ViewKeyAdvUserIdsFragment(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->addUserId()V

    return-void
.end method

.method final synthetic lambda$showUserIdInfo$3$ViewKeyAdvUserIdsFragment(ZZ)V
    .locals 1

    .line 162
    invoke-static {p1, p2}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->newInstance(ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "userIdInfoDialog"

    invoke-virtual {p1, p2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 193
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    .line 196
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIds:Landroid/widget/ListView;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    invoke-virtual {v3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    .line 199
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    invoke-virtual {v0, v2, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 200
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUserIdLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$5;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    invoke-virtual {v3, v2, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 216
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 220
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c0110

    .line 74
    invoke-virtual {v5, v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090386

    .line 76
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIds:Landroid/widget/ListView;

    const v6, 0x7f090388

    .line 77
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedList:Landroid/widget/ListView;

    const v6, 0x7f090387

    .line 78
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedLayout:Landroid/view/View;

    .line 80
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIds:Landroid/widget/ListView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$0;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    new-instance v6, Landroid/view/View;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42900000    # 72.0f

    .line 83
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 86
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 90
    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdsAddedList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v6, 0x7f090381

    .line 93
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewAnimator;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->mUserIdAddFabLayout:Landroid/widget/ViewAnimator;

    const v6, 0x7f090380

    .line 94
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$1;

    invoke-direct {p0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->setHasOptionsMenu(Z)V

    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 207
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 225
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021e

    if-eq v0, v1, :cond_0

    .line 230
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 227
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;->enterEditMode()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvUserIdsFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method