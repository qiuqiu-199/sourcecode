.class public Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiAppsViewModel"
.end annotation


# instance fields
.field listedAppLiveData:Landroid/arch/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 172
    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method getListedAppLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/arch/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;>;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 176
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;->listedAppLiveData:Landroid/arch/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;->listedAppLiveData:Landroid/arch/lifecycle/LiveData;

    .line 179
    :cond_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;->listedAppLiveData:Landroid/arch/lifecycle/LiveData;

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;--->getListedAppLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
