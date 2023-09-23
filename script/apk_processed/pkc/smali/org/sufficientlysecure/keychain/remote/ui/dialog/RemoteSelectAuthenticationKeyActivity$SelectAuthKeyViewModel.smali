.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "RemoteSelectAuthenticationKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectAuthKeyViewModel"
.end annotation


# instance fields
.field private keyInfoLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 99
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$getKeyInfoLiveData$0$RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 106
    invoke-static {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
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

    .line 104
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel$$Lambda$0;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel$$Lambda$0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 110
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;--->getKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 118
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->packageName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;--->getPackageName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 114
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->packageName:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;--->setPackageName(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
