.class public Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;
.super Landroid/support/v4/app/Fragment;
.source "EditKeyFragment.java"


# static fields
.field private static final ARG_SAVE_KEYRING_PARCEL:Ljava/lang/String; = "save_keyring_parcel"


# instance fields
.field private mAddSubkey:Landroid/view/View;

.field private mAddUserId:Landroid/view/View;

.field private mChangePassphrase:Landroid/view/View;

.field private mPrimaryUserId:Ljava/lang/String;

.field private mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

.field private mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

.field private mSubkeysAddedList:Landroid/widget/ListView;

.field private mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

.field private mUserIdsAddedList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 47
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    return-object p0
.end method

.method private addSubkey()V
    .locals 6

    move-object/16 v3, p0

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->newInstance(Z)Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;

    move-result-object v0

    .line 182
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    .line 183
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->setOnAlgorithmSelectedListener(Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment$OnAlgorithmSelectedListener;)V

    .line 191
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addSubkeyDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddSubkeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->addSubkey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private addUserId()V
    .locals 6

    move-object/16 v3, p0

    .line 155
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    .line 169
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 172
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mPrimaryUserId:Ljava/lang/String;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    .line 173
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->newInstance(Landroid/os/Messenger;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    move-result-object v0

    .line 175
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addUserIdDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->addUserId()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private changePassphrase()V
    .locals 6

    move-object/16 v3, p0

    .line 131
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    .line 146
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const v0, 0x7f110cdd

    .line 148
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->newInstance(Landroid/os/Messenger;I)Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    move-result-object v0

    .line 151
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "setPassphraseDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->changePassphrase()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initView()V
    .locals 5

    move-object/16 v2, p0

    .line 125
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mChangePassphrase:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mAddUserId:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$3;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mAddSubkey:Landroid/view/View;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->initView()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 114
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildUpon(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 115
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mPrimaryUserId:Ljava/lang/String;

    .line 117
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddUserIds()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    .line 118
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mUserIdsAddedList:Landroid/widget/ListView;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mUserIdsAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/UserIdsAddedAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 120
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddSubKeys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    .line 121
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSubkeysAddedList:Landroid/widget/ListView;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSubkeysAddedAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/SubkeysAddedAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->loadSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;
    .locals 6

    move-object/16 v3, p0

    .line 65
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;-><init>()V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "save_keyring_parcel"

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->newInstance(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$initView$2$EditKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->changePassphrase()V

    return-void
.end method

.method final synthetic lambda$initView$3$EditKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->addUserId()V

    return-void
.end method

.method final synthetic lambda$initView$4$EditKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->addSubkey()V

    return-void
.end method

.method final synthetic lambda$onActivityCreated$0$EditKeyFragment(Landroid/view/View;)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->returnKeyringParcel()V

    return-void
.end method

.method final synthetic lambda$onActivityCreated$1$EditKeyFragment(Landroid/view/View;)V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 99
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 90
    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$0;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;)V

    const v2, 0x7f11007c

    invoke-virtual {v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->setFullScreenDialogDoneClose(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "save_keyring_parcel"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    if-nez v4, :cond_0

    const-string v4, "Either a key Uri or ARG_SAVE_KEYRING_PARCEL is required!"

    const/4 v0, 0x0

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    .line 109
    :cond_0
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->initView()V

    .line 110
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->loadSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c006b

    const/4 v0, 0x0

    .line 77
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090147

    .line 79
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mUserIdsAddedList:Landroid/widget/ListView;

    const v3, 0x7f090146

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSubkeysAddedList:Landroid/widget/ListView;

    const v3, 0x7f090144

    .line 81
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mChangePassphrase:Landroid/view/View;

    const v3, 0x7f090143

    .line 82
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mAddUserId:Landroid/view/View;

    const v3, 0x7f090142

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mAddSubkey:Landroid/view/View;

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected returnKeyringParcel()V
    .locals 6

    move-object/16 v3, p0

    .line 195
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddUserIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110146

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 199
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddSubKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f110147

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 204
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->getMutableAddUserIds()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setChangePrimaryUserId(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "save_keyring_parcel"

    .line 208
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->mSkpBuilder:Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 210
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;--->returnKeyringParcel()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
