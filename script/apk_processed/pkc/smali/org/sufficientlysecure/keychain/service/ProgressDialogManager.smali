.class public Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;
.super Ljava/lang/Object;
.source "ProgressDialogManager.java"


# static fields
.field public static final TAG_PROGRESS_DIALOG:Ljava/lang/String; = "progressDialog"


# instance fields
.field private activity:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->activity:Landroid/support/v4/app/FragmentActivity;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;---><init>(Landroid/support/v4/app/FragmentActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$showProgressDialog$0$ProgressDialogManager(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    const-string v0, "progressDialog"

    .line 55
    invoke-virtual {p0, p1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 5

    move-object/16 v2, p0

    .line 72
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 73
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "progressDialog"

    .line 74
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->dismissAllowingStateLoss()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;--->dismissAllowingStateLoss()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSetProgress(Ljava/lang/Integer;II)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 84
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "progressDialog"

    .line 86
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v3, :cond_1

    .line 93
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setProgress(III)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v0, v4, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setProgress(II)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;--->onSetProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPreventCancel()V
    .locals 5

    move-object/16 v2, p0

    .line 60
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 61
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "progressDialog"

    .line 62
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setPreventCancel()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;--->setPreventCancel()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showProgressDialog()V
    .locals 6

    move-object/16 v3, p0

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->showProgressDialog(Ljava/lang/String;ILandroid/support/v4/os/CancellationSignal;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;--->showProgressDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showProgressDialog(Ljava/lang/String;ILandroid/support/v4/os/CancellationSignal;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-static {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->newInstance(Ljava/lang/String;IZ)Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;->setCancellationSignal(Landroid/support/v4/os/CancellationSignal;)V

    .line 53
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 54
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v0, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;

    invoke-direct {v0, v2, v3}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/dialog/ProgressDialogFragment;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;--->showProgressDialog(Ljava/lang/String;ILandroid/support/v4/os/CancellationSignal;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
