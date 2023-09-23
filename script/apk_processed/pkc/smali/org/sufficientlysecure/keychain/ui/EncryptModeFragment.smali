.class public abstract Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;
.super Landroid/support/v4/app/Fragment;
.source "EncryptModeFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 26
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAsymmetricEncryptionKeyIds()[J
.end method

.method public abstract getAsymmetricEncryptionUserIds()[Ljava/lang/String;
.end method

.method public abstract getAsymmetricSigningKeyId()J
.end method

.method public abstract getSymmetricPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method

.method public abstract isAsymmetric()Z
.end method
