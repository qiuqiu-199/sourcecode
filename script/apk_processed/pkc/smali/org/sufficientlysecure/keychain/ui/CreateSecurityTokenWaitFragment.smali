.class public Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateSecurityTokenWaitFragment.java"


# static fields
.field public static final REQUEST_CODE_SWEETSPOT:I

.field public static sDisableFragmentAnimations:Z


# instance fields
.field mBackButton:Landroid/view/View;

.field mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    return-void

    const-string v0, "M_InsDal"

    const-string v1, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;---><clinit>()V"

    invoke-static/range {v0 .. v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 54
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->checkDeviceConnection()V

    :cond_0
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    if-nez v1, :cond_1

    .line 121
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 122
    instance-of v2, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    const-string v2, "token_info"

    .line 123
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "token_info"

    .line 124
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    .line 125
    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->handleTokenInfo(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)V

    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-super {v0, v1, v2, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 136
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 145
    sget-boolean v0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->sDisableFragmentAnimations:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$3;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V

    const-wide/16 v3, 0x0

    .line 147
    invoke-virtual {v2, v3, p0}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v2

    .line 150
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onCreateAnimation(IZI)Landroid/view/animation/Animation;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0016

    .line 65
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const/4 p0, 0x0

    const v0, 0x7f0c0047

    .line 93
    invoke-virtual {v2, v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 95
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/ShowNfcSweetspotActivity;->hasSweetspotData()Z

    move-result v3

    const v0, 0x7f09008b

    .line 96
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 97
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 98
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;

    invoke-direct {v3, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900f3

    .line 106
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mBackButton:Landroid/view/View;

    .line 108
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mBackButton:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 70
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 73
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->newInstanceDebugUri()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 85
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->newInstanceDebugLockedHard()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v1

    .line 84
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 81
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->newInstanceDebugLocked()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    goto :goto_0

    .line 76
    :pswitch_3
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    .line 77
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;->newInstanceDebugKeyserver()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;

    move-result-object v1

    .line 76
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenFragment;->newInstance(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    .line 88
    :goto_0
    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x7f09023e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
