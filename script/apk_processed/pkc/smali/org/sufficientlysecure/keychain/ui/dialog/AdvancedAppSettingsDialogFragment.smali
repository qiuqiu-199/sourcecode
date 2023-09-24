.class public Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "AdvancedAppSettingsDialogFragment.java"


# static fields
.field private static final ARG_CERTIFICATE:Ljava/lang/String; = "certificate"

.field private static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 36
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package_name"

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "certificate"

    .line 39
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;--->newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 50
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f110037

    .line 54
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 v5, 0x1

    .line 55
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 57
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment$1;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;)V

    const v1, 0x104000a

    invoke-virtual {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "package_name"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "certificate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11003e

    invoke-virtual {v4, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f11003d

    .line 68
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
