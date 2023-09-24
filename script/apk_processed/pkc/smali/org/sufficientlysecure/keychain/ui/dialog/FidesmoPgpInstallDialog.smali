.class public Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FidesmoPgpInstallDialog.java"


# static fields
.field private static final FIDESMO_PGP_APPLICATION_ID:Ljava/lang/String; = "0cdc651e"

.field private static final FIDESMO_PGP_SERVICE_ID:Ljava/lang/String; = "OKC-install"

.field private static final FIDESMO_SERVICE_DELIVERY_CARD_ACTION:Ljava/lang/String; = "com.fidesmo.sec.DELIVER_SERVICE"

.field private static final FIDESMO_SERVICE_URI:Ljava/lang/String; = "https://api.fidesmo.com/service/"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->startFidesmoPgpAppletActivity()V

    return-void
.end method

.method private startFidesmoPgpAppletActivity()V
    .locals 6

    move-object/16 v3, p0

    .line 73
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.fidesmo.sec.DELIVER_SERVICE"

    const-string v2, "https://api.fidesmo.com/service/0cdc651e/OKC-install"

    .line 74
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error when parsing URI"

    const/4 v1, 0x0

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;--->startFidesmoPgpAppletActivity()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 43
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110c36

    .line 44
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c35

    .line 45
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c34

    .line 47
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$1;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$1;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;)V

    .line 46
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110c33

    .line 56
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog$2;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;)V

    .line 55
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/CustomAlertDialogBuilder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/FidesmoPgpInstallDialog;--->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
