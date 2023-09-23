.class final Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;
.super Ljava/lang/Object;
.source "InstallDialogFragmentHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper;->getInstallDialogFromArgs(Landroid/os/Bundle;Landroid/app/Activity;II)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$installPath:Ljava/lang/String;

.field final synthetic val$messenger:Landroid/os/Messenger;

.field final synthetic val$messengerDialogDimissed:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;ILandroid/os/Messenger;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-object/16 p1, p4

    .line 90
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$installPath:Ljava/lang/String;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$activity:Landroid/app/Activity;

    iput p0, v0, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$messengerDialogDimissed:I

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$messenger:Landroid/os/Messenger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;---><init>(Ljava/lang/String;Landroid/app/Activity;ILandroid/os/Messenger;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 93
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$installPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 98
    iget v3, v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$messengerDialogDimissed:I

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    .line 100
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;->val$messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "Messenger is null!"

    .line 104
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v0, "Exception sending message, Is handler present?"

    .line 102
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/InstallDialogFragmentHelper$2;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
