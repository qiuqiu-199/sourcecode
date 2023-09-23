.class Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;
.super Ljava/lang/Object;
.source "ViewKeyAdvSubkeysFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->editKey(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/view/ActionMode;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 291
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;Landroid/view/ActionMode;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
    .locals 4

    move-object/16 v1, p0

    .line 295
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 4

    move-object/16 v1, p0

    .line 306
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;--->onCryptoOperationCancelled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 311
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 312
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 291
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 300
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 301
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 291
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvSubkeysFragment$4;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
