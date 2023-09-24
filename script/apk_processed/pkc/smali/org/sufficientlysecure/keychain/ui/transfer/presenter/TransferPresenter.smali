.class public Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;
.super Ljava/lang/Object;
.source "TransferPresenter.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;
.implements Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;
.implements Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;
    }
.end annotation


# static fields
.field private static final BACKSTACK_TAG_TRANSFER:Ljava/lang/String; = "transfer"

.field private static final DELIMITER_END:Ljava/lang/String; = "-----END PGP PRIVATE KEY BLOCK-----"

.field private static final DELIMITER_START:Ljava/lang/String; = "-----BEGIN PGP PRIVATE KEY BLOCK-----"


# instance fields
.field private confirmingMasterKeyId:Ljava/lang/Long;

.field private final context:Landroid/content/Context;

.field private final keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

.field private keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

.field private final lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

.field private final secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

.field private sentData:Z

.field private final view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

.field private final viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

.field private waitingForWifi:Z

.field private wasConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 92
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    .line 86
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->sentData:Z

    .line 87
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->waitingForWifi:Z

    .line 93
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->context:Landroid/content/Context;

    .line 94
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    .line 95
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 96
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 97
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 99
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-direct {v3, v2, p0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;)V

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    .line 100
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-interface {p1, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setSecretKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-direct {v3, v2, p0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;)V

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    .line 103
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    invoke-interface {p1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setReceivedKeyAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;---><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    return-object p0
.end method

.method private checkWifiResetAndStartListen()V
    .locals 4

    move-object/16 v1, p0

    .line 356
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->waitingForWifi:Z

    .line 358
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showNotOnWifi()V

    return-void

    .line 362
    :cond_0
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->resetAndStartListen()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->checkWifiResetAndStartListen()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private connectionClear()V
    .locals 5

    move-object/16 v2, p0

    .line 409
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->closeConnection()V

    .line 411
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    .line 413
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->closeConnection()V

    .line 415
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    :cond_1
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->connectionClear()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private connectionSend([BLjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->sentData:Z

    .line 432
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->sendData([BLjava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v0, v2, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->sendData([BLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->connectionSend([BLjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private connectionStartConnect(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 343
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 345
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showEstablishingConnection()V

    .line 347
    new-instance v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    const-string v1, "-----BEGIN PGP PRIVATE KEY BLOCK-----"

    const-string v2, "-----END PGP PRIVATE KEY BLOCK-----"

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    .line 349
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v0, v4, v3}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->connectToServer(Ljava/lang/String;Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorConnectionFailed()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->connectionStartConnect(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getConnectedWifiSsid()Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    .line 392
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 401
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 402
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    return-object v1

    .line 405
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->getConnectedWifiSsid()Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isWifiConnected()Z
    .locals 5

    move-object/16 v2, p0

    .line 381
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->isWifiConnected()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadSecretUnifiedKeyInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 122
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->setData(Ljava/util/List;)V

    .line 123
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setShowSecretKeyEmptyView(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onLoadSecretUnifiedKeyInfo(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private prepareAndSendKey(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 421
    :try_start_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0, v4, v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyRingAsArmoredData(J)[B

    move-result-object v0

    .line 422
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 423
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionSend([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 426
    invoke-static {v4}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->prepareAndSendKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private resetAndStartListen()V
    .locals 8

    move-object/16 v5, p0

    const/4 v0, 0x0

    .line 366
    iput-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->waitingForWifi:Z

    .line 367
    iput-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    .line 368
    iput-boolean v0, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->sentData:Z

    .line 369
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 371
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->getConnectedWifiSsid()Ljava/lang/String;

    move-result-object v1

    .line 373
    new-instance v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    const-string v3, "-----BEGIN PGP PRIVATE KEY BLOCK-----"

    const-string v4, "-----END PGP PRIVATE KEY BLOCK-----"

    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    .line 374
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    invoke-virtual {v2, v5, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;->startServer(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;Ljava/lang/String;)V

    .line 376
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showWaitingForConnection()V

    .line 377
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setShowDoneIcon(Z)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->resetAndStartListen()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$TransferPresenter(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onLoadSecretUnifiedKeyInfo(Ljava/util/List;)V

    return-void
.end method

.method final synthetic lambda$onDataSentOk$0$TransferPresenter(J)V
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 299
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->addToFinishedItems(J)V

    return-void
.end method

.method public onConnectionError(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 333
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorConnectionError(Ljava/lang/String;)V

    .line 335
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 336
    iget-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showViewDisconnected()V

    .line 338
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->setAllDisabled(Z)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionError(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConnectionErrorConnect()V
    .locals 4

    move-object/16 v1, p0

    .line 305
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showWaitingForConnection()V

    .line 306
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorConnectionFailed()V

    .line 308
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->resetAndStartListen()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionErrorConnect()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConnectionErrorListen()V
    .locals 4

    move-object/16 v1, p0

    .line 328
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorListenFailed()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionErrorListen()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConnectionErrorNoRouteToHost(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 313
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 315
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->getConnectedWifiSsid()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showWifiError(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showWaitingForConnection()V

    .line 320
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorConnectionFailed()V

    .line 322
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->resetAndStartListen()V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionErrorNoRouteToHost(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConnectionEstablished(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    .line 240
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->clearFinishedItems()V

    .line 241
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 242
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->setAllDisabled(Z)V

    .line 243
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->clear()V

    .line 245
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v1, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showConnectionEstablished(Ljava/lang/String;)V

    .line 246
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v4, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setShowDoneIcon(Z)V

    .line 247
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    const-string v0, "transfer"

    invoke-interface {v4, v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->addFakeBackStackItem(Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionEstablished(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConnectionLost()V
    .locals 5

    move-object/16 v2, p0

    .line 252
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    if-nez v0, :cond_0

    .line 253
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->checkWifiResetAndStartListen()V

    .line 255
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorConnectionFailed()V

    goto :goto_0

    .line 257
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 259
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->dismissConfirmationIfExists()V

    .line 260
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showViewDisconnected()V

    .line 261
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->setAllDisabled(Z)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onConnectionLost()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDataReceivedOk(Ljava/lang/String;)V
    .locals 14

    move-object/16 v11, p0

    move-object/16 v12, p1

    .line 267
    iget-boolean v0, v11, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->sentData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v12, "received data, but we already sent a key! race condition, or other side misbehaving?"

    .line 268
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v12, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "received data"

    .line 272
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :try_start_0
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->decodeFromData([B)Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v0
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/pgp/exception/PgpGeneralException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getPublicKey()Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/UncachedPublicKey;->getPrimaryUserIdWithFallback()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Lorg/openintents/openpgp/util/OpenPgpUtils;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v1

    .line 285
    new-instance v10, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getMasterKeyId()J

    move-result-wide v4

    .line 286
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getCreationTime()J

    move-result-wide v6

    iget-object v8, v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    iget-object v9, v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    move-object v2, v10

    move-object v3, v12

    invoke-direct/range {v2 .. v9}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    invoke-virtual {v12, v10}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->addItem(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V

    .line 289
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v12}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showReceivingKeys()V

    return-void

    :catch_0
    move-exception v12

    const-string v0, "error parsing incoming key"

    .line 277
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v12, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v12, v11, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v12}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showErrorBadKey()V

    return-void

    const-string v13, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onDataReceivedOk(Ljava/lang/String;)V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDataSentOk(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const-string v0, "data sent ok!"

    const/4 v1, 0x0

    .line 294
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 297
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$$Lambda$2;

    invoke-direct {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;J)V

    const-wide/16 v0, 0x2ee

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onDataSentOk(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onServerStarted(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 232
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/util/QrCodeUtils;->getQRCodeBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 233
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->setQrImage(Landroid/graphics/Bitmap;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onServerStarted(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiBackStackPop()V
    .locals 4

    move-object/16 v1, p0

    .line 155
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->checkWifiResetAndStartListen()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiBackStackPop()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickConfirmSend()V
    .locals 6

    move-object/16 v3, p0

    .line 171
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->confirmingMasterKeyId:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->confirmingMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 175
    iput-object v2, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->confirmingMasterKeyId:Ljava/lang/Long;

    .line 177
    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->prepareAndSendKey(J)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickConfirmSend()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickDone()V
    .locals 4

    move-object/16 v1, p0

    .line 147
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->finishFragmentOrActivity()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickDone()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickImportKey(JLjava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    move-object/16 p0, p3

    .line 182
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->receivedKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyAdapter;->focusItem(Ljava/lang/Long;)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromEncodedBytes([B)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object p0

    .line 184
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object p0

    .line 187
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;

    invoke-direct {v1, v2, p0, v3, v4}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;J)V

    .line 188
    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->createCryptoOperationHelper(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickImportKey(JLjava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickScan()V
    .locals 4

    move-object/16 v1, p0

    .line 137
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 139
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->scanQrCode()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickScan()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickScanAgain()V
    .locals 3

    move-object/16 v0, p0

    .line 143
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->onUiClickScan()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickScanAgain()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiClickTransferKey(J)V
    .locals 4

    move-object/16 v1, p0

    move-wide/16 v2, p1

    .line 162
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->sentData:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->prepareAndSendKey(J)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->confirmingMasterKeyId:Ljava/lang/Long;

    .line 166
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showConfirmSendDialog()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiClickTransferKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiInitFromIntentUri(Landroid/net/Uri;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 108
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionStartConnect(Ljava/lang/String;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiInitFromIntentUri(Landroid/net/Uri;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiQrCodeScanned(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 151
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionStartConnect(Ljava/lang/String;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiQrCodeScanned(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiStart()V
    .locals 6

    move-object/16 v3, p0

    .line 112
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->viewModel:Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->context:Landroid/content/Context;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$$Lambda$0;->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    .line 114
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$$Lambda$1;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 116
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferServerInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    if-nez v0, :cond_0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->keyTransferClientInteractor:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor;

    if-nez v0, :cond_0

    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    if-nez v0, :cond_0

    .line 117
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->checkWifiResetAndStartListen()V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiStart()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onUiStop()V
    .locals 5

    move-object/16 v2, p0

    .line 127
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->connectionClear()V

    .line 129
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->wasConnected:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->showViewDisconnected()V

    .line 131
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->view:Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter$TransferMvpView;->dismissConfirmationIfExists()V

    .line 132
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->secretKeyAdapter:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyAdapter;->setAllDisabled(Z)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onUiStop()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onWifiConnected()V
    .locals 4

    move-object/16 v1, p0

    .line 225
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->waitingForWifi:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;->resetAndStartListen()V

    :cond_0
    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/transfer/presenter/TransferPresenter;--->onWifiConnected()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
