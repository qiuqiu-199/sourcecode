.class Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;
.super Ljava/lang/Object;
.source "EncryptFilesFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/dialog/DeleteFileDialogFragment$OnDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

.field final synthetic val$result:Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 517
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->val$result:Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;---><init>(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onDeleted()V
    .locals 7

    move-object/16 v4, p0

    .line 521
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;->SHARE:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$AfterEncryptAction;

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    const v3, 0x7f110cf7

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->this$0:Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 531
    :cond_1
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;->val$result:Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/SignEncryptResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/EncryptFilesFragment$6;--->onDeleted()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
