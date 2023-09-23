.class public Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "GenericViewModel.java"


# instance fields
.field private genericLiveData:Landroid/arch/lifecycle/LiveData;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 14
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader<",
            "TT;>;)",
            "Landroid/arch/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 18
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->genericLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;

    invoke-static {}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->getNotifyUriAllKeys()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v3, v1, v4}, Lorg/sufficientlysecure/keychain/livedata/GenericLiveData;-><init>(Landroid/content/Context;Landroid/net/Uri;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->genericLiveData:Landroid/arch/lifecycle/LiveData;

    .line 22
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->genericLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v3

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;--->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
