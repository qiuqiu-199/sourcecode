.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;
.super Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;
.source "RemoteSelectIdKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback<",
        "Landroid/os/Parcelable;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 457
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createOperationInput()Landroid/os/Parcelable;
    .locals 4

    move-object/16 v1, p0

    .line 460
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$600(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;--->createOperationInput()Landroid/os/Parcelable;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 465
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$602(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 466
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onImportOpError()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 457
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 471
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$602(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 472
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onImportOpSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 457
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method
