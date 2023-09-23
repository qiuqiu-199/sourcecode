.class public Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "RedirectImportKeysActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startQrCodeCaptureActivity()V
    .locals 6

    move-object/16 v3, p0

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_QR_CODE"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110c3b

    .line 42
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f110c39

    .line 43
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity$2;

    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;Landroid/content/Intent;)V

    const v0, 0x7f110c3c

    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;)V

    const v2, 0x7f110c3a

    .line 51
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;--->startQrCodeCaptureActivity()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 32
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/RedirectImportKeysActivity;->startQrCodeCaptureActivity()V

    return-void
.end method
