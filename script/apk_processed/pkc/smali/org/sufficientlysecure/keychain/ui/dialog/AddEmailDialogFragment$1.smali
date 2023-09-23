.class Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;
.super Ljava/lang/Object;
.source "AddEmailDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 84
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 87
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->dismiss()V

    .line 90
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "email"

    .line 92
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddEmailDialogFragment$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
