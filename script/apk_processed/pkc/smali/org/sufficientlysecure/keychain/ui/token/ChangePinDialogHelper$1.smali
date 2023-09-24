.class final Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;
.super Ljava/lang/Object;
.source "ChangePinDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;->createAdminPinDialog(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adminPin:Landroid/widget/EditText;

.field final synthetic val$newPin:Landroid/widget/EditText;

.field final synthetic val$newPinRepeat:Landroid/widget/EditText;

.field final synthetic val$presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$adminPin:Landroid/widget/EditText;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$newPin:Landroid/widget/EditText;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$newPinRepeat:Landroid/widget/EditText;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;---><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 57
    move-object v0, v3

    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;-><init>(Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;--->onShow(Landroid/content/DialogInterface;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
