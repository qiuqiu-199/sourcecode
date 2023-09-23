.class public Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "UploadKeyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_KEY_IDS:Ljava/lang/String; = "extra_key_ids"


# instance fields
.field private mKeyServerSpinner:Landroid/widget/Spinner;

.field private mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field private mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/UploadResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getKeyserversArray()[Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    .line 76
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getKeyServers()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 81
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->getKeyserversArray()[Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private uploadKey()V
    .locals 6

    move-object/16 v3, p0

    .line 101
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->createFromUri(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v1, 0x7f110c2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 106
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->uploadKey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;
    .locals 7

    move-object/16 v4, p0

    .line 111
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_key_ids"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 112
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyserver:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;->createWithKeyId(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;J)Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0106

    .line 89
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$UploadKeyActivity(Landroid/view/View;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->uploadKey()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 94
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mUploadOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 97
    :cond_0
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 52
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f09034f

    .line 54
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f090350

    .line 55
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyServerSpinner:Landroid/widget/Spinner;

    .line 58
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090247

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/MultiUserIdsFragment;->setCheckboxVisibility(Z)V

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 62
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->getKeyserversArray()[Ljava/lang/String;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v4, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v2, 0x1090009

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 65
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->mKeyServerSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    :goto_0
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity$$Lambda$0;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCryptoOperationCancelled()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onCryptoOperationCancelled()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 127
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 40
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 117
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/UploadResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/UploadResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/UploadKeyActivity;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
