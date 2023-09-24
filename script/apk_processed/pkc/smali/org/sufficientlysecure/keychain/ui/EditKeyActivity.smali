.class public Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "EditKeyActivity.java"


# static fields
.field public static final EXTRA_SAVE_KEYRING_PARCEL:Ljava/lang/String; = "save_keyring_parcel"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadFragment(Landroid/os/Bundle;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    if-eqz v2, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;->newInstance(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/ui/EditKeyFragment;

    move-result-object v2

    .line 64
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v0, 0x7f090145

    .line 65
    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 68
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;--->loadFragment(Landroid/os/Bundle;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c006a

    .line 48
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 34
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "save_keyring_parcel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    if-nez v0, :cond_0

    const-string v3, "Either a key Uri or EXTRA_SAVE_KEYRING_PARCEL is required!"

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->finish()V

    return-void

    .line 43
    :cond_0
    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/EditKeyActivity;->loadFragment(Landroid/os/Bundle;Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    return-void
.end method
