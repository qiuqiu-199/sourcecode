.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;
.super Lorg/sufficientlysecure/keychain/ui/BackupActivity;
.source "RemoteBackupActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"


# instance fields
.field private mPendingIntentData:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 31
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleBackupOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 67
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->mPendingIntentData:Landroid/content/Intent;

    invoke-static {v1, v0, v2}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->addCryptoInputParcel(Landroid/content/Context;Landroid/content/Intent;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    .line 68
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->mPendingIntentData:Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;--->handleBackupOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 39
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/BackupActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez v5, :cond_0

    .line 45
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "export_secret"

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "master_key_ids"

    .line 47
    invoke-virtual {v5, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 48
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->mPendingIntentData:Landroid/content/Intent;

    .line 51
    invoke-static {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;->newInstance([JZZ)Lorg/sufficientlysecure/keychain/ui/BackupCodeFragment;

    move-result-object v5

    .line 53
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteBackupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ee

    .line 56
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
