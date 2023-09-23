.class public Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManageSecurityTokenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;
    }
.end annotation


# static fields
.field private static final ARG_TOKEN_INFO:Ljava/lang/String; = "token_info"

.field public static final PERMISSION_READ_STORAGE:I = 0x0

.field public static final REQUEST_CODE_CHANGE_PIN:I = 0x2

.field public static final REQUEST_CODE_OPEN_FILE:I = 0x0

.field public static final REQUEST_CODE_RESET:I = 0x1


# instance fields
.field private actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

.field cryptoImportOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field cryptoPromoteOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/PromoteKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

.field currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

.field private latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

.field private statusLayoutGroup:Landroid/view/ViewGroup;

.field private unlockSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    move-object/16 v4, p0

    .line 78
    invoke-direct {v4}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 466
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoImportOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 494
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V

    const/4 v3, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoPromoteOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;---><init>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;
    .locals 6

    move-object/16 v3, p0

    .line 96
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "token_info"

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public finishAndShowKey(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 187
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 189
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 190
    instance-of v4, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    if-eqz v4, :cond_0

    .line 191
    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->finishWithFirstTimeHandling(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->finishAndShowKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hideAction()V
    .locals 5

    move-object/16 v2, p0

    .line 272
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChild(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->hideAction()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$showConfirmResetDialog$0$ManageSecurityTokenFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {p1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickConfirmReset()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 180
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onActivityCreated()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    const/4 v1, -0x1

    packed-switch v3, :pswitch_data_0

    .line 417
    invoke-super {v2, v3, v4, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "token_info"

    .line 408
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    :goto_0
    if-ne v4, v1, :cond_1

    .line 410
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onSecurityTokenChangePinSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    .line 412
    :cond_1
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onSecurityTokenChangePinCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    :pswitch_1
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "token_info"

    .line 398
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    :goto_1
    if-ne v4, v1, :cond_3

    .line 400
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onSecurityTokenResetSuccess(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    .line 402
    :cond_3
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onSecurityTokenResetCanceled(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    goto :goto_2

    :pswitch_2
    if-ne v4, v1, :cond_4

    if-eqz p0, :cond_4

    .line 390
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 391
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 392
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v4, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onFileSelected(Landroid/net/Uri;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 424
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v0, 0x7f090087

    if-eq v2, v0, :cond_5

    const v0, 0x7f09008a

    if-eq v2, v0, :cond_4

    const v0, 0x7f09009e

    if-eq v2, v0, :cond_3

    const v0, 0x7f0900a1

    if-eq v2, v0, :cond_2

    const v0, 0x7f0900a4

    if-eq v2, v0, :cond_1

    const v0, 0x7f0900aa

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickRetry()V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickResetToken()V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickViewKey()V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickUnlockTokenImpossible()V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickUnlockToken()V

    goto :goto_0

    .line 460
    :cond_3
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickSetupToken()V

    goto :goto_0

    .line 438
    :cond_4
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickLoadFile()V

    goto :goto_0

    .line 426
    :cond_5
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onClickImport()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090093
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 107
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/os/Bundle;

    const-string v0, "token_info"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 112
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;->setTokenInfo(Landroid/content/Context;Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    .line 115
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenPresenter;-><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenViewModel;)V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0017

    .line 158
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    .line 120
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->layoutInflater:Landroid/view/LayoutInflater;

    const p0, 0x7f0c0045

    const/4 v0, 0x0

    .line 121
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0902ed

    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->statusLayoutGroup:Landroid/view/ViewGroup;

    const v3, 0x7f09001b

    .line 124
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v3, 0x7f0900a5

    .line 125
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->unlockSubtitle:Landroid/widget/TextView;

    const v3, 0x7f090087

    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900aa

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090098

    .line 129
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090093

    .line 130
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090094

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090095

    .line 132
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090096

    .line 133
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f090097

    .line 134
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900a1

    .line 135
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900a4

    .line 136
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09008a

    .line 137
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f09009e

    .line 138
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    .line 140
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->setHasOptionsMenu(Z)V

    .line 142
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v3, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->setView(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpView;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDestroyView()V
    .locals 4

    move-object/16 v1, p0

    .line 149
    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onDestroyView()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->detach()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 153
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 163
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900d4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f090389

    if-eq v0, v1, :cond_0

    .line 173
    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 165
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onMenuClickViewLog()V

    return v2

    .line 169
    :cond_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onMenuClickChangePin()V

    return v2

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    if-eqz v1, :cond_0

    return-void

    .line 378
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget v1, p0, v2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 380
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onStoragePermissionGranted()V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onStoragePermissionDenied()V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public operationChangePinSecurityToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenChangePinOperationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;->createSecurityTokenUnlock(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/service/input/SecurityTokenChangePinParcel;

    move-result-object v4

    const-string v5, "change_pin_parcel"

    .line 313
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x2

    .line 314
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->operationChangePinSecurityToken(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public operationImportKey([B)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 277
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    if-eqz v0, :cond_0

    .line 278
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot trigger import operation twice!"

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    :cond_0
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    .line 283
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoImportOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->setOperationMinimumDelay(Ljava/lang/Long;)V

    .line 284
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoImportOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->operationImportKey([B)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public operationPromote(J[BLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-wide/16 v2, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 289
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentImportKeyringParcel:Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    if-eqz v0, :cond_0

    .line 290
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot trigger import operation twice!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    :cond_0
    invoke-static {v2, v3, p0, p1}, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;->createPromoteKeyringParcel(J[BLjava/util/List;)Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->currentPromoteKeyringParcel:Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    .line 295
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoPromoteOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const-wide/16 v3, 0x3e8

    invoke-static {v3, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->setOperationMinimumDelay(Ljava/lang/Long;)V

    .line 296
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->cryptoPromoteOperationHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->operationPromote(J[BLjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public operationResetSecurityToken()V
    .locals 6

    move-object/16 v3, p0

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createSecurityTokenReset()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    const-string v2, "required_input"

    .line 303
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "crypto_input"

    .line 304
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->operationResetSecurityToken()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public requestStoragePermission()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/16 v3, p0

    const/4 v0, 0x1

    .line 368
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v3, v0, v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->requestStoragePermission()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public resetStatusLines()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 228
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    .line 229
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->statusLayoutGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->resetStatusLines()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionEmptyToken()V
    .locals 5

    move-object/16 v2, p0

    .line 262
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09031d

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionEmptyToken()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionImport()V
    .locals 5

    move-object/16 v2, p0

    .line 234
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09031e

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionImport()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionLocked(I)V
    .locals 8

    move-object/16 v5, p0

    move/16 v6, p1

    if-lez v6, :cond_0

    .line 250
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f09031f

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    .line 252
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0022

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 252
    invoke-virtual {v0, v1, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 254
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->unlockSubtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v0, 0x7f090320

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    :goto_0
    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionLocked(I)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionRetryOrFromFile()V
    .locals 5

    move-object/16 v2, p0

    .line 244
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f090321

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionRetryOrFromFile()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionUnsupportedToken()V
    .locals 5

    move-object/16 v2, p0

    .line 267
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f090323

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionUnsupportedToken()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showActionViewKey()V
    .locals 5

    move-object/16 v2, p0

    .line 239
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->actionAnimator:Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;

    const v1, 0x7f090322

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ToolableViewAnimator;->setDisplayedChildId(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showActionViewKey()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showAdminPinDialog()V
    .locals 5

    move-object/16 v2, p0

    .line 333
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;->createAdminPinDialog(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showAdminPinDialog()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showConfirmResetDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 324
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110d18

    .line 325
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110d16

    .line 326
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11008d

    const/4 v2, 0x0

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;)V

    const v2, 0x7f110d17

    .line 328
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showConfirmResetDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showDisplayLogActivity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "log"

    .line 361
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 362
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showDisplayLogActivity(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorCannotReset(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v0, 0x7f110d0c

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v0, 0x7f110d0b

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showErrorCannotReset(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showErrorCannotUnlock()V
    .locals 6

    move-object/16 v3, p0

    .line 346
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    const v2, 0x7f110d0d

    invoke-static {v0, v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showErrorCannotUnlock()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showFileSelectDialog()V
    .locals 5

    move-object/16 v2, p0

    const-string v0, "*/*"

    const/4 v1, 0x0

    .line 319
    invoke-static {v2, v0, v1, v1}, Lorg/sufficientlysecure/keychain/util/FileHelper;->openDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;ZI)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->showFileSelectDialog()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public startCreateKeyForToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 340
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 341
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->startCreateKeyForSecurityToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->startCreateKeyForToken(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 200
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    if-eqz v0, :cond_0

    .line 201
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set next status line before completing previous!"

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00f5

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->statusLayoutGroup:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902ec

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    .line 207
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->PROGRESS:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    const v1, 0x7f0902ef

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;->access$000(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->statusLayoutGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->statusLineAdd(Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment$StatusLine;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public statusLineError()V
    .locals 5

    move-object/16 v2, p0

    .line 222
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->ERROR:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    const/4 v0, 0x0

    .line 223
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->statusLineError()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public statusLineOk()V
    .locals 5

    move-object/16 v2, p0

    .line 216
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;->OK:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;->setDisplayedChild(Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator$Status;)V

    const/4 v0, 0x0

    .line 217
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->latestStatusIndicator:Lorg/sufficientlysecure/keychain/ui/widget/StatusIndicator;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;--->statusLineOk()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
