.class Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;
.super Ljava/lang/Object;
.source "ViewKeyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->changePassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 375
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 4

    move-object/16 v1, p0

    .line 378
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$300(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 395
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$400(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 375
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 383
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$400(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    .line 384
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->access$500(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    .line 385
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1, v0, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->clearCachedPassphrase(Landroid/content/Context;JJ)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 375
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
