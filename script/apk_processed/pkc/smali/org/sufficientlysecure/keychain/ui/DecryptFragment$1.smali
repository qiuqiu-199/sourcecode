.class Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;
.super Ljava/lang/Object;
.source "DecryptFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->lookupUnknownKey(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

.field final synthetic val$keyList:Ljava/util/ArrayList;

.field final synthetic val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 149
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->val$keyList:Ljava/util/ArrayList;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/DecryptFragment;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    .line 153
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->val$keyList:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->val$keyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 170
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 149
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 158
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 160
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/DecryptFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment;->loadSignerKeyData()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 149
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptFragment$1;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
