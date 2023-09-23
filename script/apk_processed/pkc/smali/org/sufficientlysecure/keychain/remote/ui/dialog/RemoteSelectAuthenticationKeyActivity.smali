.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteSelectAuthenticationKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;,
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private packageName:Ljava/lang/String;

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;J)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->onKeySelected(J)V

    return-void
.end method

.method private onKeySelected(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 123
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 127
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v1

    .line 128
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->addAllowedKeyIdForApp(Ljava/lang/String;J)V

    const-string v1, "key_id"

    .line 130
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 132
    invoke-virtual {v3, v4, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->finish()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;--->onKeySelected(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 74
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;-><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    .line 78
    invoke-static {v2}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    if-nez v3, :cond_0

    .line 81
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;-><init>()V

    .line 82
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "selectAuthenticationKeyDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$RemoteSelectAuthenticationKeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 88
    invoke-super {v2}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->packageName:Ljava/lang/String;

    .line 93
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;

    .line 94
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;->setPackageName(Ljava/lang/String;)V

    .line 96
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyPresenter;->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectAuthenticationKeyActivity$SelectAuthKeyViewModel;)V

    return-void
.end method
