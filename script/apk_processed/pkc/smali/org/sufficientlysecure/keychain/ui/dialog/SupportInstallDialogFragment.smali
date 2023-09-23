.class public Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SupportInstallDialogFragment.java"


# static fields
.field public static final MESSAGE_DIALOG_DISMISSED:I = 0x2

.field public static final MESSAGE_MIDDLE_CLICKED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;
    .locals 9

    move/16 v6, p0

    move/16 v7, p1

    move-object/16 v8, p2

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v1, v6

    move v2, v7

    move-object v3, v8

    .line 68
    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;->newInstance(Landroid/os/Messenger;IILjava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;

    move-result-object v6

    return-object v6

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;--->newInstance(IILjava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Landroid/os/Messenger;IILjava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;
    .locals 12

    move-object/16 v9, p0

    move/16 v10, p1

    move/16 v11, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 47
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;-><init>()V

    .line 48
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v1, v9

    move v2, v10

    move v3, v11

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v7, v8

    .line 50
    invoke-static/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;->wrapIntoArgs(Landroid/os/Messenger;IILjava/lang/String;IZLandroid/os/Bundle;)V

    .line 53
    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;--->newInstance(Landroid/os/Messenger;IILjava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 75
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;->getInstallDialogFromArgs(Landroid/os/Bundle;Landroid/app/Activity;II)Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/SupportInstallDialogFragment;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
