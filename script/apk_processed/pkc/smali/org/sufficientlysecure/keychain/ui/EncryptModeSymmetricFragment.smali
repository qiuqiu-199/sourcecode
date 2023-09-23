.class public Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;
.super Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;
.source "EncryptModeSymmetricFragment.java"


# instance fields
.field private mPassphrase:Landroid/widget/EditText;

.field private mPassphraseAgain:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;
    .locals 5

    .line 38
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAsymmetricEncryptionKeyIds()[J
    .locals 5

    move-object/16 v2, p0

    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should never happen, this is a programming error!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->getAsymmetricEncryptionKeyIds()[J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAsymmetricEncryptionUserIds()[Ljava/lang/String;
    .locals 5

    move-object/16 v2, p0

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should never happen, this is a programming error!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->getAsymmetricEncryptionUserIds()[Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAsymmetricSigningKeyId()J
    .locals 5

    move-object/16 v2, p0

    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should never happen, this is a programming error!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->getAsymmetricSigningKeyId()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
    .locals 8

    move-object/16 v5, p0

    const/4 v0, 0x0

    .line 80
    :try_start_0
    new-instance v1, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->mPassphrase:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/text/Editable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 81
    :try_start_1
    new-instance v2, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->mPassphraseAgain:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/text/Editable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    :try_start_2
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    :cond_0
    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    :cond_1
    return-object v0

    .line 85
    :cond_2
    :try_start_3
    new-instance v0, Lorg/sufficientlysecure/keychain/util/Passphrase;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->mPassphrase:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/util/Passphrase;-><init>(Landroid/text/Editable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    :cond_3
    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    :cond_5
    if-eqz v2, :cond_6

    .line 91
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Passphrase;->removeFromMemory()V

    .line 93
    :cond_6
    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isAsymmetric()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->isAsymmetric()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0072

    const/4 v0, 0x0

    .line 48
    invoke-virtual {v2, p0, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090267

    .line 50
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->mPassphrase:Landroid/widget/EditText;

    const v3, 0x7f090268

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;->mPassphraseAgain:Landroid/widget/EditText;

    return-object v2

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeSymmetricFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
