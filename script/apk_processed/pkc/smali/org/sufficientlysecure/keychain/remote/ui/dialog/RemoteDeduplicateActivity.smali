.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteDeduplicateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;,
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;
    }
.end annotation


# static fields
.field public static final EXTRA_DUPLICATE_EMAILS:Ljava/lang/String; = "duplicate_emails"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 58
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 68
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;-><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    .line 72
    invoke-static {v2}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;-><init>()V

    .line 76
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "requestKeyDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$RemoteDeduplicateDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    move-object/16 v4, p0

    .line 82
    invoke-super {v4}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;--->onStart()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "duplicate_emails"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "package_name"

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v3, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;

    .line 90
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->setDuplicateAddress(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;->setPackageName(Ljava/lang/String;)V

    .line 93
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicatePresenter;->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteDeduplicateActivity$DeduplicateViewModel;)V

    return-void
.end method
