.class public Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "CertifyFingerprintActivity.java"


# static fields
.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startFragment()V
    .locals 6

    move-object/16 v3, p0

    .line 63
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintFragment;

    move-result-object v0

    .line 64
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;--->startFragment()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0037

    .line 59
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$CertifyFingerprintActivity(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 37
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "master_key_id"

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity$$Lambda$0;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;)V

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    const-string v1, "master_key_id"

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 50
    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->setMasterKeyId(J)V

    if-nez v5, :cond_1

    .line 53
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->startFragment()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v5, "Missing required extra master_key_id!"

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;->finish()V

    return-void
.end method
