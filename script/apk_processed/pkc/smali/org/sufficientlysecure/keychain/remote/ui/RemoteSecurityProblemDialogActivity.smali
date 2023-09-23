.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteSecurityProblemDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_SECURITY_PROBLEM:Ljava/lang/String; = "security_problem"

.field public static final EXTRA_SUPPORT_OVERRIDE:Ljava/lang/String; = "support_override"


# instance fields
.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 51
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;)Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;
    .locals 0

    .line 51
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 62
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    if-nez v3, :cond_0

    .line 67
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;-><init>()V

    .line 68
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "requestKeyDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity$RemoteRegisterDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 8

    move-object/16 v5, p0

    .line 74
    invoke-super {v5}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;--->onStart()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "security_problem"

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    const-string v3, "support_override"

    const/4 v4, 0x0

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/remote/ui/RemoteSecurityProblemDialogActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;

    invoke-virtual {v3, v1, v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SecurityProblemPresenter;->setupFromIntentData(Ljava/lang/String;Ljava/io/Serializable;Z)V

    return-void
.end method
