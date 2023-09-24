.class Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;
.super Ljava/lang/Object;
.source "ChangePinDialogHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

.field final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;Landroid/content/DialogInterface;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 57
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;---><init>(Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;Landroid/content/DialogInterface;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 60
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$adminPin:Landroid/widget/EditText;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$newPin:Landroid/widget/EditText;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$newPinRepeat:Landroid/widget/EditText;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->val$dialog:Landroid/content/DialogInterface;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;->this$0:Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1;->val$presenter:Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;

    invoke-static {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper;->access$000(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;Lorg/sufficientlysecure/keychain/ui/token/ManageSecurityTokenContract$ManageSecurityTokenMvpPresenter;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/token/ChangePinDialogHelper$1$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
