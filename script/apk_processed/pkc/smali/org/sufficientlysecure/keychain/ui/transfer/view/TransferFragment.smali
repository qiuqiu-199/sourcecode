.class public Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;
.super Landroid/support/v4/app/Fragment;
.source "TransferFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;


# static fields
.field public static final EXTRA_OPENPGP_SKT_INFO:Ljava/lang/String; = "openpgp_skt_info"

.field public static final LOADER_ID:I = 0x1

.field public static final REQUEST_CODE_SCAN:I = 0x1


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private confirmationDialog:Landroid/support/v7/app/AlertDialog;

.field private currentCryptoOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

.field private presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

.field private showDoneIcon:Z

.field private vConnectionStatusText1:Landroid/widget/TextView;

.field private vConnectionStatusText2:Landroid/widget/TextView;

.field private vConnectionStatusView1:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

.field private vConnectionStatusView2:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

.field private vQrCodeImage:Landroid/widget/ImageView;

.field private vReceivedKeyList:Landroid/support/v7/widget/RecyclerView;

.field private vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

.field private vTransferKeyList:Landroid/support/v7/widget/RecyclerView;

.field private vTransferKeyListEmptyView:Landroid/view/View;

.field private vWifiErrorInstructions:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 76
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vQrCodeImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method


# virtual methods
.method public addFakeBackStackItem(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 359
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 363
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 364
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 366
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->addFakeBackStackItem(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public createCryptoOperationHelper(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            "S:",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
            ">(",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "TT;TS;>;)",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "TT;TS;>;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 317
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    .line 318
    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->currentCryptoOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->createCryptoOperationHelper(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public dismissConfirmationIfExists()V
    .locals 4

    move-object/16 v1, p0

    .line 423
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->dismissConfirmationIfExists()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public finishFragmentOrActivity()V
    .locals 5

    move-object/16 v2, p0

    .line 383
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    if-eqz v1, :cond_0

    .line 386
    check-cast v0, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onKeysSelected()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->finishFragmentOrActivity()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 155
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "openpgp_skt_info"

    .line 162
    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    const-string v1, "openpgp_skt_info"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiInitFromIntentUri(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 430
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->currentCryptoOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->currentCryptoOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 431
    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    .line 443
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v3, v2, :cond_2

    const-string v2, "SCAN_RESULT"

    .line 438
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 439
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiQrCodeScanned(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 199
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->showDoneIcon:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0018

    .line 200
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0102

    const/4 v0, 0x0

    .line 112
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09032f

    .line 114
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v3, 0x7f0900e5

    .line 116
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText1:Landroid/widget/TextView;

    const v3, 0x7f0900e6

    .line 117
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText2:Landroid/widget/TextView;

    const v3, 0x7f0900e7

    .line 118
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView1:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    const v3, 0x7f0900e8

    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView2:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    const v3, 0x7f09033a

    .line 120
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferKeyList:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f09033b

    .line 121
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferKeyListEmptyView:Landroid/view/View;

    const v3, 0x7f09027c

    .line 122
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vReceivedKeyList:Landroid/support/v7/widget/RecyclerView;

    const v3, 0x7f090343

    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vWifiErrorInstructions:Landroid/widget/TextView;

    const v3, 0x7f090278

    .line 125
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vQrCodeImage:Landroid/widget/ImageView;

    const v3, 0x7f09009a

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009b

    .line 136
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-static {v1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class p0, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v3, p0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 146
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1, v3, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;-><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;)V

    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    const/4 v3, 0x1

    .line 148
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->setHasOptionsMenu(Z)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 206
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v0, 0x7f090225

    if-ne v2, v0, :cond_0

    .line 207
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiClickDone()V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPause()V
    .locals 5

    move-object/16 v2, p0

    .line 185
    invoke-super {v2}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onPause()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    move-object/16 v3, p0

    .line 176
    invoke-super {v3}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onResume()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 4

    move-object/16 v1, p0

    .line 169
    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onStart()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    move-object/16 v1, p0

    .line 192
    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStop()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->onStop()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiStop()V

    return-void
.end method

.method public releaseCryptoOperationHelper()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 324
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->currentCryptoOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->releaseCryptoOperationHelper()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public scanQrCode()V
    .locals 6

    move-object/16 v3, p0

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/QrCodeCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->scanQrCode()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setQrImage(Landroid/graphics/Bitmap;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 269
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vQrCodeImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 282
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vQrCodeImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->setQrImage(Landroid/graphics/Bitmap;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setReceivedKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 312
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vReceivedKeyList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->setReceivedKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSecretKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 302
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferKeyList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->setSecretKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setShowDoneIcon(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 293
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->showDoneIcon:Z

    .line 294
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->setShowDoneIcon(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setShowSecretKeyEmptyView(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 307
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferKeyListEmptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->setShowSecretKeyEmptyView(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showConfirmSendDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 395
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 398
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110d23

    .line 399
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110d22

    .line 400
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110d21

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$7;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110d20

    const/4 v2, 0x0

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    .line 418
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->confirmationDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showConfirmSendDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showConnectionEstablished(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 232
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText1:Landroid/widget/TextView;

    const v0, 0x7f110d32

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 235
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView1:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setConnected(Z)V

    .line 236
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView2:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setConnected(Z)V

    .line 238
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v0, 0x7f09033c

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showConnectionEstablished(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorBadKey()V
    .locals 6

    move-object/16 v3, p0

    .line 329
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v2, 0x7f110d29

    invoke-static {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showErrorBadKey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorConnectionError(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    if-eqz v4, :cond_0

    const v0, 0x7f110d27

    const/4 v1, 0x1

    .line 345
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v0, 0x7f110d26

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showErrorConnectionError(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorConnectionFailed()V
    .locals 6

    move-object/16 v3, p0

    .line 334
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v2, 0x7f110d25

    invoke-static {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showErrorConnectionFailed()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorListenFailed()V
    .locals 6

    move-object/16 v3, p0

    .line 339
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v2, 0x7f110d28

    invoke-static {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showErrorListenFailed()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showEstablishingConnection()V
    .locals 5

    move-object/16 v2, p0

    .line 225
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09033d

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showEstablishingConnection()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showNotOnWifi()V
    .locals 5

    move-object/16 v2, p0

    .line 215
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09033e

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showNotOnWifi()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showReceivingKeys()V
    .locals 5

    move-object/16 v2, p0

    .line 255
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showReceivingKeys()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showResultNotification(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 354
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showResultNotification(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showViewDisconnected()V
    .locals 5

    move-object/16 v2, p0

    .line 260
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText1:Landroid/widget/TextView;

    const v1, 0x7f110d33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusText2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView1:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setConnected(Z)V

    .line 264
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vConnectionStatusView2:Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setConnected(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showViewDisconnected()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showWaitingForConnection()V
    .locals 5

    move-object/16 v2, p0

    .line 220
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f090340

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showWaitingForConnection()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showWifiError(Ljava/lang/String;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 243
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vTransferAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f090341

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 245
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vWifiErrorInstructions:Landroid/widget/TextView;

    .line 247
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110d2c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;->vWifiErrorInstructions:Landroid/widget/TextView;

    const v0, 0x7f110d2b

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;--->showWifiError(Ljava/lang/String;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
