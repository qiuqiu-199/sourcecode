.class public Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "RetryUploadDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadRetryDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 48
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance()Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;
    .locals 4

    .line 50
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;-><init>()V

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;--->newInstance()Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 57
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v3

    .line 59
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f110c47

    .line 60
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f110c46

    .line 61
    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 63
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$1;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;)V

    const v1, 0x7f110c44

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 72
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;

    invoke-direct {v3, v2}, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;)V

    const v1, 0x7f110c45

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity$UploadRetryDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
