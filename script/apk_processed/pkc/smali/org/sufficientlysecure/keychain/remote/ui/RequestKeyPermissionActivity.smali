.class public Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RequestKeyPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_REQUESTED_KEY_IDS:Ljava/lang/String; = "requested_key_ids"


# instance fields
.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 48
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 58
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->createRequestKeyPermissionPresenter(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;-><init>()V

    .line 64
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "requestKeyDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity$RequestKeyPermissionFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    move-object/16 v3, p0

    .line 70
    invoke-super {v3}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;--->onStart()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requested_key_ids"

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 76
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;

    invoke-virtual {v2, v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RequestKeyPermissionPresenter;->setupFromIntentData(Ljava/lang/String;[J)V

    return-void
.end method
