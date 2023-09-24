.class public Lorg/sufficientlysecure/keychain/ui/EncryptActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "EncryptActivity.java"


# static fields
.field public static final EXTRA_ENCRYPTION_KEY_IDS:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_IDS"

.field public static final EXTRA_SIGNATURE_KEY_ID:Ljava/lang/String; = "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_ID"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setModeFragment(Z)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 88
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v4, :cond_0

    .line 91
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-static {v1, v2, v4}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->newInstance(J[J)Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;

    move-result-object v4

    :goto_0
    const v1, 0x7f090151

    .line 89
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;--->setModeFragment(Z)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;
    .locals 5

    move-object/16 v2, p0

    .line 101
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;--->getModeFragment()Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 39
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    if-nez v5, :cond_1

    .line 49
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_ID"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_IDS"

    .line 53
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 55
    invoke-static {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;->newInstance(J[J)Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;

    move-result-object v0

    const v1, 0x7f090151

    .line 56
    invoke-virtual {v5, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 77
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 80
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090151

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 81
    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;

    const v1, 0x7f0900db

    .line 82
    invoke-interface {v3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 84
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 63
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900db

    if-eq v0, v1, :cond_0

    .line 70
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 65
    :cond_0
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 66
    invoke-interface {v3}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptActivity;->setModeFragment(Z)V

    return v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
