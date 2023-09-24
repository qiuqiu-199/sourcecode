.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "RemoteSelectIdKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteSelectIdViewModel"
.end annotation


# instance fields
.field public clientHasAutocryptSetupMsg:Z

.field public filteredKeyInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private keyGenerationData:Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

.field private keyInfo:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private listAllKeys:Z

.field public packageName:Ljava/lang/String;

.field public packageSignature:[B

.field public rawUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 121
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getKeyGenerationLiveData(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 142
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyGenerationData:Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyGenerationData:Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    .line 145
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyGenerationData:Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;--->getKeyGenerationLiveData(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/livedata/PgpKeyGenerationLiveData;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSecretUnifiedKeyInfo(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
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

    .line 134
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyInfo:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 135
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel$$Lambda$0;->get$Lambda(Lorg/sufficientlysecure/keychain/daos/KeyRepository;)Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyInfo:Landroid/arch/lifecycle/LiveData;

    .line 138
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->keyInfo:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;--->getSecretUnifiedKeyInfo(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isListAllKeys()Z
    .locals 4

    move-object/16 v1, p0

    .line 149
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->listAllKeys:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;--->isListAllKeys()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setListAllKeys(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 153
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->listAllKeys:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;--->setListAllKeys(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
