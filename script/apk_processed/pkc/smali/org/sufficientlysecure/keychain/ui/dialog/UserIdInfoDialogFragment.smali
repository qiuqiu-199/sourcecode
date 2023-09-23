.class public Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "UserIdInfoDialogFragment.java"


# static fields
.field private static final ARG_IS_REVOKED:Ljava/lang/String; = "is_revoked"

.field private static final ARG_IS_VERIFIED:Ljava/lang/String; = "is_verified"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;
    .locals 6

    move/16 v3, p0

    move/16 v4, p1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;-><init>()V

    .line 38
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_revoked"

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "is_verified"

    .line 40
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;--->newInstance(ZZ)Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 52
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 54
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_verified"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 55
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_revoked"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 57
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const v4, 0x7f110d42

    .line 62
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110d41

    .line 63
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v4, 0x7f110d40

    .line 66
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110d3f

    .line 67
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v4, 0x7f110d44

    .line 69
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110d43

    .line 70
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v4, 0x104000a

    .line 77
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment$1;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;)V

    invoke-virtual {v2, v4, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 85
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/UserIdInfoDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
