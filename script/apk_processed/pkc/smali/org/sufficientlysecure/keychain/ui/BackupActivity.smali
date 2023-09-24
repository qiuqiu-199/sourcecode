.class public Lorg/sufficientlysecure/keychain/ui/BackupActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "BackupActivity.java"


# static fields
.field public static final EXTRA_MASTER_KEY_IDS:Ljava/lang/String; = "master_key_ids"

.field public static final EXTRA_SECRET:Ljava/lang/String; = "export_secret"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/BackupActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleBackupOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupActivity;--->handleBackupOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c002e

    .line 39
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/BackupActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 44
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez v5, :cond_0

    .line 50
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "export_secret"

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "master_key_ids"

    .line 52
    invoke-virtual {v5, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 54
    invoke-static {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->newInstance([JZZ)Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    move-result-object v5

    .line 56
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v2, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ee

    .line 59
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 67
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 76
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 69
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->finish()V

    :cond_1
    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/BackupActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
