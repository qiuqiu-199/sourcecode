.class public Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteDisplayTransferCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_TRANSFER_CODE:Ljava/lang/String; = "transfer_code"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 44
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 49
    invoke-super {v2, v3}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;

    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;-><init>()V

    .line 53
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "displayTransferCode"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteDisplayTransferCodeActivity$DisplayTransferCodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
