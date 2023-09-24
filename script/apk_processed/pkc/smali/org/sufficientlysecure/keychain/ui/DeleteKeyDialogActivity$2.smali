.class Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;
.super Ljava/lang/Object;
.source "DeleteKeyDialogActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getDeletionCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 168
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;---><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->createOperationInput()Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    .line 171
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$200(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->createDeleteSingleSecretKeyParcel(J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)[J

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;->createDeletePublicKeysParcel([J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 184
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->setResult(I)V

    .line 185
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;--->onCryptoOperationCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 190
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 168
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 179
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 168
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
