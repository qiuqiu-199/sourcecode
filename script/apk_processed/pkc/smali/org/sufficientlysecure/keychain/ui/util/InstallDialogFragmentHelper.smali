.class public Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;
.super Ljava/lang/Object;
.source "InstallDialogFragmentHelper.java"


# static fields
.field private static final ARG_INSTALL_PATH:Ljava/lang/String; = "installPath"

.field private static final ARG_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final ARG_MIDDLE_BUTTON:Ljava/lang/String; = "middleButton"

.field private static final ARG_TITLE:Ljava/lang/String; = "title"

.field private static final ARG_USE_MIDDLE_BUTTON:Ljava/lang/String; = "useMiddleButton"

.field private static final PLAY_STORE_PATH:Ljava/lang/String; = "market://search?q=pname:"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstallDialogFromArgs(Landroid/os/Bundle;Landroid/app/Activity;II)Landroid/support/v7/app/AlertDialog;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move/16 v9, p2

    move/16 p0, p3

    const-string v0, "messenger"

    .line 60
    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const-string v1, "title"

    .line 62
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    .line 63
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "middleButton"

    .line 64
    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "installPath"

    .line 65
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "useMiddleButton"

    .line 66
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 68
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v5

    .line 69
    new-instance v6, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-direct {v6, v5}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v6, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 73
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$1;

    invoke-direct {v1, p0, v0}, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$1;-><init>(ILandroid/os/Messenger;)V

    const v2, 0x7f110bbc

    invoke-virtual {v6, v2, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 89
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;

    invoke-direct {v1, v4, v8, p0, v0}, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;-><init>(Ljava/lang/String;Landroid/app/Activity;ILandroid/os/Messenger;)V

    const v8, 0x7f110bbf

    invoke-virtual {v6, v8, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    if-eqz v7, :cond_0

    .line 111
    new-instance v7, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$3;

    invoke-direct {v7, v9, v0}, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$3;-><init>(ILandroid/os/Messenger;)V

    invoke-virtual {v6, v3, v7}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 129
    :cond_0
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;--->getInstallDialogFromArgs(Landroid/os/Bundle;Landroid/app/Activity;II)Landroid/support/v7/app/AlertDialog;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static wrapIntoArgs(Landroid/os/Messenger;IILjava/lang/String;IZLandroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    const-string v0, "messenger"

    .line 48
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "title"

    .line 50
    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "message"

    .line 51
    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "middleButton"

    .line 52
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "installPath"

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://search?q=pname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "useMiddleButton"

    .line 54
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;--->wrapIntoArgs(Landroid/os/Messenger;IILjava/lang/String;IZLandroid/os/Bundle;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
