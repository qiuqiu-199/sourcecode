.class public Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "SettingsKeyServerActivity.java"


# static fields
.field public static final EXTRA_KEY_SERVERS:Ljava/lang/String; = "key_servers"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadFragment(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    if-eqz v2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    move-result-object v2

    .line 73
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v0, 0x7f0901ba

    .line 74
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 77
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;--->loadFragment(Landroid/os/Bundle;Ljava/util/ArrayList;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0097

    .line 58
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 36
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_servers"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->loadFragment(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 48
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 53
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 50
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;->finish()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyServerActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
