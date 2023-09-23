.class public Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "LinkedIdViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedIdViewModel"
.end annotation


# instance fields
.field certDetailsLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;",
            ">;"
        }
    .end annotation
.end field

.field certifyingKeysLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field linkedIfInfoLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 495
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getCertDetails$1$LinkedIdViewFragment$LinkedIdViewModel(Lorg/sufficientlysecure/keychain/daos/CertificationDao;JI)Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;
    .locals 0

    .line 514
    invoke-virtual {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/daos/CertificationDao;->getVerifyingCertDetails(JI)Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$getCertifyingKeys$0$LinkedIdViewFragment$LinkedIdViewModel(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 503
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object p0

    .line 504
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic lambda$getLinkedIdInfo$2$LinkedIdViewFragment$LinkedIdViewModel(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;JI)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;
    .locals 0

    .line 523
    invoke-virtual {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->getLinkedIdInfo(JI)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getCertDetails(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/model/Certification$CertDetails;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move/16 p1, p4

    .line 511
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certDetailsLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 512
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/CertificationDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/CertificationDao;

    move-result-object v0

    .line 513
    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$1;

    invoke-direct {v2, v0, v5, p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/daos/CertificationDao;JI)V

    invoke-direct {v1, v4, v5, p0, v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;JLorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certDetailsLiveData:Landroid/arch/lifecycle/LiveData;

    .line 516
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certDetailsLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;--->getCertDetails(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getCertifyingKeys(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
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

    .line 501
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certifyingKeysLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certifyingKeysLiveData:Landroid/arch/lifecycle/LiveData;

    .line 507
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->certifyingKeysLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;--->getCertifyingKeys(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLinkedIdInfo(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Landroid/arch/lifecycle/LiveData<",
            "Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao$LinkedIdInfo;",
            ">;"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move/16 p1, p4

    .line 520
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->linkedIfInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 521
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;

    move-result-object v0

    .line 522
    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;

    invoke-direct {v2, v0, v5, p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/IdentityDao;JI)V

    invoke-direct {v1, v4, v5, p0, v2}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;JLorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->linkedIfInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 525
    :cond_0
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;->linkedIfInfoLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/keyview/LinkedIdViewFragment$LinkedIdViewModel;--->getLinkedIdInfo(Landroid/content/Context;JI)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
