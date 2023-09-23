.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;
.super Landroid/support/v4/app/Fragment;
.source "ViewKeyAdvSubkeysFragment.java"


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

.field private mEditModeSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

.field private mSubkeyAddFabLayout:Landroid/widget/ViewAnimator;

.field private mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

.field private mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

.field private mSubkeysAddedLayout:Landroid/view/View;

.field private mSubkeysAddedList:Landroid/widget/ListView;

.field private mSubkeysList:Landroid/widget/ListView;

.field private unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditModeSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-object p0
.end method

.method static synthetic access$002(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditModeSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-object p1
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/widget/ListView;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Landroid/widget/ViewAnimator;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeyAddFabLayout:Landroid/widget/ViewAnimator;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/view/ActionMode;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editKey(Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editSubkeyExpiry(I)V

    return-void
.end method

.method private addSubkey()V
    .locals 6

    move-object/16 v3, p0

    .line 195
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 198
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->newInstance(Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    move-result-object v0

    .line 203
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$4;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    .line 204
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->setOnAlgorithmSelectedListener(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;)V

    .line 205
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addSubkeyDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->addSubkey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editKey(Landroid/view/ActionMode;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 290
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;

    invoke-direct {v0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/view/ActionMode;)V

    .line 320
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v1, 0x7f110c25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v4, v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 321
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->editKey(Landroid/view/ActionMode;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editSubkey(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 209
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;

    move-result-object v0

    .line 211
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;

    invoke-direct {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;ILorg/sufficientlysecure/keychain/model/SubKey;)V

    .line 246
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 248
    sget-object v0, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;)V

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->editSubkey(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editSubkeyExpiry(I)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 257
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->getItem(I)Lorg/sufficientlysecure/keychain/model/SubKey;

    move-result-object v5

    .line 258
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey;->key_id()J

    move-result-wide v0

    .line 259
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey;->creation()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 260
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey;->expiry()Ljava/lang/Long;

    move-result-object v5

    .line 262
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;

    invoke-direct {v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;J)V

    .line 278
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 280
    sget-object v1, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround;->INTERFACE:Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;

    invoke-direct {v3, v4, v0, v2, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {v1, v3}, Lorg/sufficientlysecure/keychain/compatibility/DialogFragmentWorkaround$SDKLevel17Interface;->runnableRunDelayed(Ljava/lang/Runnable;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->editSubkeyExpiry(I)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadSubKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;->setData(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onLoadSubKeys(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyAdvSubkeysFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->onLoadSubKeys(Ljava/util/List;)V

    return-void
.end method

.method public enterEditMode()V
    .locals 5

    move-object/16 v2, p0

    .line 148
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->enterEditMode()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$addSubkey$2$ViewKeyAdvSubkeysFragment(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$editSubkey$3$ViewKeyAdvSubkeysFragment(Landroid/os/Messenger;)V
    .locals 2

    .line 250
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->newInstance(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;

    move-result-object p1

    .line 252
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "editSubkeyDialog"

    invoke-virtual {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$editSubkeyExpiry$4$ViewKeyAdvSubkeysFragment(Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 282
    invoke-static {p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->newInstance(Landroid/os/Messenger;Ljava/lang/Long;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;

    move-result-object p1

    .line 284
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string p3, "editSubkeyExpiryDialog"

    invoke-virtual {p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/dialog/EditSubkeyExpiryDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$ViewKeyAdvSubkeysFragment(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 80
    invoke-direct {p0, p3}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editSubkey(I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$ViewKeyAdvSubkeysFragment(Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->addSubkey()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 103
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    .line 107
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysList:Landroid/widget/ListView;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    invoke-virtual {v3, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    .line 110
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    invoke-virtual {v0, v2, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 111
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getSubkeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$3;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    invoke-virtual {v3, v2, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 129
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mEditKeyHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 133
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c010e

    .line 74
    invoke-virtual {v5, v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090382

    .line 76
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysList:Landroid/widget/ListView;

    const v6, 0x7f090384

    .line 77
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedList:Landroid/widget/ListView;

    const v6, 0x7f090383

    .line 78
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedLayout:Landroid/view/View;

    .line 80
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysList:Landroid/widget/ListView;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    new-instance v6, Landroid/view/View;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getResources()Landroid/content/res/Resources;

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
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeysAddedList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, p0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    const v6, 0x7f090381

    .line 93
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ViewAnimator;

    iput-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->mSubkeyAddFabLayout:Landroid/widget/ViewAnimator;

    const v6, 0x7f090380

    .line 94
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;

    invoke-direct {p0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)V

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->setHasOptionsMenu(Z)V

    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadFinished(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 120
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onLoadFinished(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 138
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021e

    if-eq v0, v1, :cond_0

    .line 143
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 140
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->enterEditMode()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
