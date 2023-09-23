.class public Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "LinkedIdWizard.java"


# static fields
.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"

.field public static final FRAG_ACTION_START:I = 0x0

.field public static final FRAG_ACTION_TO_LEFT:I = 0x2

.field public static final FRAG_ACTION_TO_RIGHT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 36
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hideKeyboard()V
    .locals 6

    move-object/16 v3, p0

    const-string v0, "input_method"

    .line 109
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :cond_1
    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;--->hideKeyboard()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 71
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Linked Identities can only be added to secret keys!"

    const/4 v0, 0x0

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->finish()V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$LinkedIdWizard(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c003e

    .line 79
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 85
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900fc

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    goto :goto_0

    :pswitch_1
    const v7, 0x7f010021

    const v2, 0x7f010022

    const v3, 0x7f010020

    const v4, 0x7f010023

    .line 97
    invoke-virtual {v0, v7, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    const/4 v7, 0x0

    .line 99
    invoke-virtual {v0, v7}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 100
    invoke-virtual {v0, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 101
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x0

    .line 89
    invoke-virtual {v0, v7, v7}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {v0, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 105
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;--->loadFragment(Landroid/support/v4/app/Fragment;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 45
    invoke-super {v5, v6}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f110cf1

    .line 47
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "master_key_id"

    .line 50
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "master_key_id"

    .line 56
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 57
    invoke-static {v5}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v0, v4}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 58
    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->setMasterKeyId(J)V

    .line 59
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard$$Lambda$0;

    invoke-direct {v2, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;)V

    invoke-virtual {v0, v5, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 61
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->hideKeyboard()V

    if-nez v6, :cond_1

    .line 65
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdSelectFragment;

    move-result-object v6

    .line 66
    invoke-virtual {v5, v6, v1}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->loadFragment(Landroid/support/v4/app/Fragment;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v6, "Missing required extra master_key_id!"

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdWizard;->finish()V

    return-void
.end method
