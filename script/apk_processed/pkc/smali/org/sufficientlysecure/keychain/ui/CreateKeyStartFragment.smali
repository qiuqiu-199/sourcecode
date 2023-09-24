.class public Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;
.super Landroid/support/v4/app/Fragment;
.source "CreateKeyStartFragment.java"


# static fields
.field public static final REQUEST_CODE_IMPORT_KEY:I = 0x7012


# instance fields
.field mCreateKey:Landroid/view/View;

.field mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

.field mImportKey:Landroid/view/View;

.field mSecureDeviceSetup:Landroid/view/View;

.field mSecurityToken:Landroid/view/View;

.field mSkipOrCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 41
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;
    .locals 5

    .line 58
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$CreateKeyStartFragment(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CreateKeyNameFragment;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$CreateKeyStartFragment(Landroid/view/View;)V
    .locals 2

    .line 89
    new-instance p1, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;

    invoke-direct {p1}, Lorg/sufficientlysecure/keychain/ui/CreateSecurityTokenWaitFragment;-><init>()V

    .line 90
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$CreateKeyStartFragment(Landroid/view/View;)V
    .locals 2

    .line 94
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE_AND_RETURN"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7012

    .line 96
    invoke-virtual {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$CreateKeyStartFragment(Landroid/view/View;)V
    .locals 2

    .line 101
    new-instance p1, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {p1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;-><init>()V

    .line 102
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;->TO_RIGHT:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;

    invoke-virtual {v0, p1, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->loadFragment(Landroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$FragAction;)V

    return-void
.end method

.method final synthetic lambda$onCreateView$4$CreateKeyStartFragment(Landroid/view/View;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-boolean p1, p1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setResult(I)V

    .line 112
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 120
    invoke-super {v2, v3, v4, p0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x7012

    if-ne v3, v1, :cond_1

    const/4 v3, -0x1

    if-ne v4, v3, :cond_2

    .line 124
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-boolean v4, v4, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    if-eqz v4, :cond_0

    .line 125
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v3

    .line 126
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->setFirstTime(Z)V

    .line 127
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->finish()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {v4, v3, p0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v3, "No valid request code!"

    .line 135
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 141
    invoke-super {v0, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0044

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0900f7

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKey:Landroid/view/View;

    const v3, 0x7f0900fd

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mImportKey:Landroid/view/View;

    const v3, 0x7f090101

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSecurityToken:Landroid/view/View;

    const v3, 0x7f0900f6

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSkipOrCancel:Landroid/widget/TextView;

    const v3, 0x7f090100

    .line 75
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSecureDeviceSetup:Landroid/view/View;

    .line 77
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKeyActivity:Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    iget-boolean v3, v3, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;->mFirstTime:Z

    if-eqz v3, :cond_0

    .line 78
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSkipOrCancel:Landroid/widget/TextView;

    const p0, 0x7f110426

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSkipOrCancel:Landroid/widget/TextView;

    const p0, 0x7f110067

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    .line 83
    :goto_0
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mCreateKey:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$0;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSecurityToken:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$1;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mImportKey:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$2;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p0, 0x15

    if-lt v3, p0, :cond_1

    .line 100
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSecureDeviceSetup:Landroid/view/View;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$3;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSecureDeviceSetup:Landroid/view/View;

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_1
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;->mSkipOrCancel:Landroid/widget/TextView;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$4;

    invoke-direct {p0, v1}, Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/CreateKeyStartFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
