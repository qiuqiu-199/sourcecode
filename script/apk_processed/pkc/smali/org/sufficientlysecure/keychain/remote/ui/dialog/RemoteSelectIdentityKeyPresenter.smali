.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;
.super Ljava/lang/Object;
.source "RemoteSelectIdentityKeyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;
    }
.end annotation


# instance fields
.field private apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

.field private apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private final context:Landroid/content/Context;

.field private generatedKeyData:[B

.field private keyInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private selectedMasterKeyId:Ljava/lang/Long;

.field private userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

.field private viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->context:Landroid/content/Context;

    .line 67
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 68
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 70
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;---><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getFilteredKeyInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 128
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->isListAllKeys()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->filteredKeyInfo:Ljava/util/List;

    if-nez v0, :cond_2

    .line 133
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->filteredKeyInfo:Ljava/util/List;

    .line 134
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->keyInfoData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 135
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->uidSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->filteredKeyInfo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v4, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->filteredKeyInfo:Ljava/util/List;

    return-object v4

    .line 129
    :cond_3
    :goto_1
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->keyInfoData:Ljava/util/List;

    return-object v4

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->getFilteredKeyInfo(Ljava/lang/String;)Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private goToSelectLayout()V
    .locals 5

    move-object/16 v2, p0

    .line 115
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->getFilteredKeyInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutEmpty()V

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutSelectNoKeys()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->setKeyListData(Ljava/util/List;)V

    .line 123
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutSelectKeyList()V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->goToSelectLayout()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onChangeKeyGeneration(Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;->getRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;->getEncoded()[B

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->generatedKeyData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->getKeyGenerationLiveData(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->setSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    .line 156
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutGenerateOk()V

    return-void

    .line 152
    :catch_0
    new-instance v2, Ljava/lang/AssertionError;

    const-string v0, "Newly generated key ring must be encodable!"

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onChangeKeyGeneration(Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onChangeKeyInfoData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 110
    :cond_0
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->keyInfoData:Ljava/util/List;

    .line 111
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->goToSelectLayout()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onChangeKeyInfoData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setPackageInfo(Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 97
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 98
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/model/ApiApp;->create(Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/model/ApiApp;

    move-result-object v4

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    .line 103
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v4, v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->setTitleClientIconAndName(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->setPackageInfo(Ljava/lang/String;[B)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$RemoteSelectIdentityKeyPresenter(Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onChangeKeyGeneration(Lorg/sufficientlysecure/keychain/operations/results/PgpEditKeyResult;)V

    return-void
.end method

.method final synthetic bridge$lambda$1$RemoteSelectIdentityKeyPresenter(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->onChangeKeyInfoData(Ljava/util/List;)V

    return-void
.end method

.method onClickExplanationBack()V
    .locals 3

    move-object/16 v0, p0

    .line 195
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->goToSelectLayout()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickExplanationBack()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickExplanationGotIt()V
    .locals 4

    move-object/16 v1, p0

    .line 199
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickExplanationGotIt()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickGenerateOkBack()V
    .locals 4

    move-object/16 v1, p0

    .line 203
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutSelectNoKeys()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickGenerateOkBack()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickGenerateOkFinish()V
    .locals 5

    move-object/16 v2, p0

    .line 207
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->generatedKeyData:[B

    if-nez v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->generatedKeyData:[B

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createFromBytes([B)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    iput-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->generatedKeyData:[B

    .line 214
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V

    .line 215
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutGenerateSave()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickGenerateOkFinish()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickGoToOpenKeychain()V
    .locals 4

    move-object/16 v1, p0

    .line 245
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showOpenKeychainIntent()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickGoToOpenKeychain()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickKeyListCancel()V
    .locals 6

    move-object/16 v3, p0

    .line 168
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAndReturn(J)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickKeyListCancel()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickKeyListOther()V
    .locals 4

    move-object/16 v1, p0

    .line 164
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutImportExplanation()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickKeyListOther()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickMenuListAllKeys()V
    .locals 5

    move-object/16 v2, p0

    .line 240
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->isListAllKeys()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->setListAllKeys(Z)V

    .line 241
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->goToSelectLayout()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickMenuListAllKeys()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickNoKeysCancel()V
    .locals 6

    move-object/16 v3, p0

    .line 186
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAndReturn(J)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickNoKeysCancel()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickNoKeysExisting()V
    .locals 4

    move-object/16 v1, p0

    .line 182
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutImportExplanation()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickNoKeysExisting()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickNoKeysGenerate()V
    .locals 6

    move-object/16 v3, p0

    .line 172
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showLayoutGenerateProgress()V

    .line 174
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildNewKeyringParcel()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/Constants;->addDefaultSubkeys(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)V

    .line 176
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->addUserId(Ljava/lang/String;)V

    .line 178
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->getKeyGenerationLiveData(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    move-result-object v1

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->build()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->setSaveKeyringParcel(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickNoKeysGenerate()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onClickOverflowMenu()V
    .locals 4

    move-object/16 v1, p0

    .line 236
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->displayOverflowMenu()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onClickOverflowMenu()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onDialogCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 160
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onDialogCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onHighlightFinished()V
    .locals 7

    move-object/16 v4, p0

    .line 219
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V

    .line 220
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->selectedMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->addAllowedKeyIdForApp(Ljava/lang/String;J)V

    .line 221
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->selectedMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAndReturn(J)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onHighlightFinished()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onImportOpError()V
    .locals 4

    move-object/16 v1, p0

    .line 232
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->showImportInternalError()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onImportOpError()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onImportOpSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 225
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getImportedMasterKeyIds()[J

    move-result-object v4

    const/4 v0, 0x0

    aget-wide v0, v4, v0

    .line 226
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v4, v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V

    .line 227
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v0, v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->addAllowedKeyIdForApp(Ljava/lang/String;J)V

    .line 228
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v4, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAndReturn(J)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onImportOpSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onKeyItemClick(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 190
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v0, v0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->getFilteredKeyInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->selectedMasterKeyId:Ljava/lang/Long;

    .line 191
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->highlightKey(I)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->onKeyItemClick(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 74
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 78
    iput-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->viewModel:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    .line 81
    :try_start_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->packageName:Ljava/lang/String;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->packageSignature:[B

    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->setPackageInfo(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->rawUserId:Ljava/lang/String;

    invoke-static {v0}, Lorg/openintents/openpgp/util/OpenPgpUtils;->splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    .line 89
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->userId:Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    iget-object v1, v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->setAddressText(Ljava/lang/String;)V

    .line 90
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->clientHasAutocryptSetupMsg:Z

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->setShowAutocryptHint(Z)V

    .line 92
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->getKeyGenerationLiveData(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    move-result-object v0

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$$Lambda$0;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;)V

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 93
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->getSecretUnifiedKeyInfo(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v4

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$$Lambda$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;)V

    invoke-virtual {v4, v0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    :catch_0
    move-exception v4

    const-string v0, "Unable to find info of calling app!"

    const/4 v1, 0x0

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter$RemoteSelectIdentityKeyView;->finishAsCancelled()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;--->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
