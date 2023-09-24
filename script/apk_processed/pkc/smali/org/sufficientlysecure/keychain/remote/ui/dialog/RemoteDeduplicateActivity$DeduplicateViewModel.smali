.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "RemoteDeduplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeduplicateViewModel"
.end annotation


# instance fields
.field private duplicateAddress:Ljava/lang/String;

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

    .line 96
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getDuplicateAddress()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 124
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->duplicateAddress:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;--->getDuplicateAddress()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

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

    .line 102
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    .line 108
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->keyInfoLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;--->getKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 120
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->packageName:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;--->getPackageName()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$getKeyInfoLiveData$0$RemoteDeduplicateActivity$DeduplicateViewModel(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    .line 104
    invoke-static {p1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->duplicateAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfosByMailAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setDuplicateAddress(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 112
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->duplicateAddress:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;--->setDuplicateAddress(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 116
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->packageName:Ljava/lang/String;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;--->setPackageName(Ljava/lang/String;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
