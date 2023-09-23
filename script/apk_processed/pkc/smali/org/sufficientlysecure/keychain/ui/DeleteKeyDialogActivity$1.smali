.class Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;
.super Ljava/lang/Object;
.source "DeleteKeyDialogActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getRevocationCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;",
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

    .line 136
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->createOperationInput()Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;
    .locals 7

    move-object/16 v4, p0

    .line 139
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    .line 140
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_keyserver"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const/4 v3, 0x1

    .line 139
    invoke-static {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;->createRevokeKeyringParcel(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 5

    move-object/16 v2, p0

    .line 150
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->setResult(I)V

    .line 151
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;--->onCryptoOperationCancelled()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V

    return-void
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 156
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 136
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 145
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
