.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;
.super Ljava/lang/Object;
.source "RemoteSelectAuthenticationKeyPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private keyInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private selectedItem:Ljava/lang/Integer;

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->context:Landroid/content/Context;

    .line 48
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;---><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadKeyInfos(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 76
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->keyInfoData:Ljava/util/List;

    .line 77
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->setKeyListData(Ljava/util/List;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->onLoadKeyInfos(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setPackageInfo(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 69
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 70
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 72
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->setPackageInfo(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$RemoteSelectAuthenticationKeyPresenter(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->onLoadKeyInfos(Ljava/util/List;)V

    return-void
.end method

.method public onCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 95
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->onClickCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickSelect()V
    .locals 6

    move-object/16 v3, p0

    .line 81
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->keyInfoData:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "got click on select with no data\u2026?"

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string v0, "got click on select with no selection\u2026?"

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 90
    :cond_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->keyInfoData:Ljava/util/List;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    .line 91
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v2, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->finish(J)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->onClickSelect()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onKeyItemClick(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 103
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v2, 0x0

    .line 104
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    .line 108
    :goto_0
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->setActiveItem(Ljava/lang/Integer;)V

    .line 109
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->selectedItem:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->setEnableSelectButton(Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->onKeyItemClick(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 54
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 59
    :try_start_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->setPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Unable to find info of calling app!"

    const/4 v1, 0x0

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$RemoteSelectAuthenticationKeyView;->finishAsCancelled()V

    .line 65
    :goto_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->getKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->lifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;)V

    invoke-virtual {v3, v0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;--->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
