.class public Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "EncryptModeAsymmetricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptModeViewModel"
.end annotation


# instance fields
.field private encryptRecipientLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private signKeyLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 149
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getEncryptRecipientLiveData$1$EncryptModeAsymmetricFragment$EncryptModeViewModel(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    .line 166
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfo()Ljava/util/List;

    move-result-object p0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 170
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput;->chipFromUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static final synthetic lambda$getSignKeyLiveData$0$EncryptModeAsymmetricFragment$EncryptModeViewModel(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 156
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getEncryptRecipientLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;",
            ">;>;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 164
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->encryptRecipientLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel$$Lambda$1;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel$$Lambda$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->encryptRecipientLiveData:Landroid/arch/lifecycle/LiveData;

    .line 176
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->encryptRecipientLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;--->getEncryptRecipientLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getSignKeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;>;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 154
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->signKeyLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel$$Lambda$0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->signKeyLiveData:Landroid/arch/lifecycle/LiveData;

    .line 160
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;->signKeyLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/EncryptModeAsymmetricFragment$EncryptModeViewModel;--->getSignKeyLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
