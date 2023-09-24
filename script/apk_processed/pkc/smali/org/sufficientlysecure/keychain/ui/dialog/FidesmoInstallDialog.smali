.class public Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FidesmoInstallDialog.java"


# static fields
.field private static final FIDESMO_APP_PACKAGE:Ljava/lang/String; = "com.fidesmo.sec.android"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id="

.field private static final PLAY_STORE_VIA_BROWSER_URI:Ljava/lang/String; = "http://play.google.com/store/apps/details?id="


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->startPlayStoreFidesmoAppActivity()V

    return-void
.end method

.method private startPlayStoreFidesmoAppActivity()V
    .locals 6

    move-object/16 v3, p0

    .line 68
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.fidesmo.sec.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://play.google.com/store/apps/details?id=com.fidesmo.sec.android"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;--->startPlayStoreFidesmoAppActivity()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 42
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110c32

    .line 43
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c31

    .line 44
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c30

    .line 46
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V

    .line 45
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c2f

    .line 55
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;)V

    .line 54
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoInstallDialog;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
