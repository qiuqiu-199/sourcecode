.class public Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;,
        Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppViewHolder;,
        Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoad(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->hideList(Z)V

    .line 70
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->setData(Ljava/util/List;)V

    return-void

    .line 73
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->setData(Ljava/util/List;)V

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->showList(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;--->onLoad(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$AppsListFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->onLoad(Ljava/util/List;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 55
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 57
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->setHasOptionsMenu(Z)V

    .line 59
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;Landroid/content/Context;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    .line 60
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 61
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 63
    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v4

    const-class v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;

    invoke-virtual {v4, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;

    .line 64
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppsViewModel;->getListedAppLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v4

    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$$Lambda$0;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;)V

    invoke-virtual {v4, v3, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 78
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->adapter:Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment$ApiAppAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;

    .line 80
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isInstalled:Z

    if-eqz v0, :cond_2

    .line 81
    iget-boolean v0, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    .line 84
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    :try_start_0
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 92
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v5

    :cond_1
    const/high16 v0, 0x10200000

    .line 95
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 96
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "startApp"

    const/4 v1, 0x0

    .line 99
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/sufficientlysecure/keychain/livedata/ApiAppsLiveData$ListedApp;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;--->onItemClick(I)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
