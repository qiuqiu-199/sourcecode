.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_PACKAGE_SIGNATURE:Ljava/lang/String; = "package_signature"


# instance fields
.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 45
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;)Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 56
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;-><init>()V

    .line 62
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "requestKeyDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity$RemoteRegisterDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    move-object/16 v4, p0

    .line 68
    invoke-super {v4}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;--->onStart()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "package_name"

    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_signature"

    .line 73
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;

    invoke-virtual {v3, v1, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteRegisterPresenter;->setupFromIntentData(Landroid/content/Intent;Ljava/lang/String;[B)V

    return-void
.end method
