.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;
.super Ljava/lang/Object;
.source "RemoteRegisterPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;
    }
.end annotation


# instance fields
.field private apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

.field private final apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field private final context:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private resultData:Landroid/content/Intent;

.field private view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->context:Landroid/content/Context;

    .line 48
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->packageManager:Landroid/content/pm/PackageManager;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setPackageInfo(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 70
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 71
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 74
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    invoke-interface {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->setTitleClientIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    const v5, 0x7f11002f

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->setTitleText(Ljava/lang/String;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->setPackageInfo(Ljava/lang/String;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method onCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 88
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickAllow()V
    .locals 5

    move-object/16 v2, p0

    .line 79
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->insertApiApp(Lorg/sufficientlysecure/keychain/model/ApiApp;)V

    .line 80
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->resultData:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->finishWithResult(Landroid/content/Intent;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->onClickAllow()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method onClickCancel()V
    .locals 4

    move-object/16 v1, p0

    .line 84
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->finishAsCancelled()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->onClickCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setView(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->setView(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setupFromIntentData(Landroid/content/Intent;Ljava/lang/String;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 57
    invoke-static {v2, p0}, Lorg/sufficientlysecure/keychain/model/ApiApp;->create(Ljava/lang/String;[B)Lorg/sufficientlysecure/keychain/model/ApiApp;

    move-result-object p0

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->apiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    .line 58
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->resultData:Landroid/content/Intent;

    .line 61
    :try_start_0
    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->setPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v1, "Unable to find info of calling app!"

    const/4 v2, 0x0

    .line 63
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->view:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter$RemoteRegisterView;->finishAsCancelled()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;--->setupFromIntentData(Landroid/content/Intent;Ljava/lang/String;[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
