.class Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;
.super Ljava/lang/Object;
.source "AddUserIdDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 94
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 97
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->dismiss()V

    .line 100
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 101
    new-instance v5, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    .line 102
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/NameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;)Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/widget/EmailEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v2}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/pgp/KeyRing;->createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "user_id"

    .line 103
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5, v0, v4}, Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment;Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/AddUserIdDialogFragment$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
