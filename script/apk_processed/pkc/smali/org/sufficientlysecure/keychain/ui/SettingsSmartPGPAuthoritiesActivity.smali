.class public Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "SettingsSmartPGPAuthoritiesActivity.java"


# static fields
.field public static final EXTRA_SMARTPGP_AUTHORITIES:Ljava/lang/String; = "smartpgp_authorities"

.field private static final KEYSTORE_FILE:Ljava/lang/String; = "smartpgp_authorities.keystore"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadFragment(Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    if-eqz v2, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;->newInstance([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthorityFragment;

    move-result-object v2

    .line 83
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v0, 0x7f0902d4

    .line 84
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 87
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->loadFragment(Landroid/os/Bundle;[Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;
    .locals 6

    move-object/16 v3, p0

    const/4 v0, 0x0

    .line 92
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v2, "smartpgp_authorities.keystore"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 95
    invoke-virtual {v3, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 99
    invoke-virtual {v3, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 100
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->readKeystore(Landroid/content/Context;)Ljava/security/KeyStore;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static final writeKeystore(Landroid/content/Context;Ljava/security/KeyStore;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v1, "smartpgp_authorities.keystore"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 118
    invoke-virtual {v3, v2, v0}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 119
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 120
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->writeKeystore(Landroid/content/Context;Ljava/security/KeyStore;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c00f0

    .line 68
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 46
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "smartpgp_authorities"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->loadFragment(Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 58
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 63
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 60
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;->finish()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsSmartPGPAuthoritiesActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
