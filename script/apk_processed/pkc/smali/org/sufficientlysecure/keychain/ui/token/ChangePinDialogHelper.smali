.class Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;
.super Ljava/lang/Object;
.source "ChangePinDialogHelper.java"


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;->checkAndHandleInput(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V

    return-void
.end method

.method private static checkAndHandleInput(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 71
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 76
    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110d0a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, 0x6

    if-ge v5, v3, :cond_1

    .line 81
    invoke-virtual {v6}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f110d0e

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 85
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    invoke-virtual {v7}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110d0f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 90
    :cond_2
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 91
    invoke-interface {p1, v0, v1}, Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;->onInputAdminPin(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;--->checkAndHandleInput(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static createAdminPinDialog(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)Landroid/support/v7/app/AlertDialog;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 42
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->getDialogThemeWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v6

    .line 45
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0020

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090043

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f09026f

    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f090270

    .line 48
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 50
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v5, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const v0, 0x7f11008d

    .line 52
    invoke-virtual {v6, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const v0, 0x7f110d1f

    .line 53
    invoke-virtual {v6, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    .line 54
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    invoke-direct {v0, v2, v3, v4, v7}, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v6

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;--->createAdminPinDialog(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)Landroid/support/v7/app/AlertDialog;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
