.class public Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PassphraseDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_CRYPTO_INPUT:Ljava/lang/String; = "crypto_input"

.field public static final EXTRA_REQUIRED_INPUT:Ljava/lang/String; = "required_input"

.field public static final RESULT_CRYPTO_INPUT:Ljava/lang/String; = "result_data"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 82
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_data"

    .line 673
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, -0x1

    .line 674
    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;--->handleResult(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 91
    invoke-super {v4, v5}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt v5, v0, :cond_0

    .line 96
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v0, 0x2000

    invoke-virtual {v5, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 102
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "crypto_input"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    if-nez v5, :cond_1

    .line 104
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel()Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v5

    .line 105
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "crypto_input"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    :cond_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "required_input"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 110
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->PASSPHRASE:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v1, v2, :cond_2

    return-void

    .line 116
    :cond_2
    :try_start_0
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v1

    .line 118
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v1

    sget-object v2, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->PASSPHRASE_EMPTY:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    if-ne v1, v2, :cond_3

    .line 120
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 121
    new-instance v2, Lorg/sufficientlysecure/keychain/util/Passphrase;

    const-string v3, ""

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->getSubKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->withPassphrase(Lorg/sufficientlysecure/keychain/util/Passphrase;Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v5

    const-string v0, "result_data"

    .line 122
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, -0x1

    .line 123
    invoke-virtual {v4, v5, v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->finish()V
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "Key not found?!"

    const/4 v1, 0x0

    .line 127
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->setResult(I)V

    .line 129
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    move-object/16 v2, p0

    .line 149
    invoke-super {v2}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;--->onPause()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "passphraseDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onResumeFragments()V
    .locals 6

    move-object/16 v3, p0

    .line 136
    invoke-super {v3}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;--->onResumeFragments()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;-><init>()V

    .line 143
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "passphraseDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity$PassphraseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
