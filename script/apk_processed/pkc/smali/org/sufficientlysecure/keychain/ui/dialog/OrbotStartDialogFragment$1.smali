.class Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;
.super Ljava/lang/Object;
.source "OrbotStartDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

.field final synthetic val$messenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;Landroid/os/Messenger;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 84
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;->this$0:Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;->val$messenger:Landroid/os/Messenger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;---><init>(Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment;Landroid/os/Messenger;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 87
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x2

    .line 88
    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    .line 90
    :try_start_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;->val$messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, "Messenger is null!"

    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v0, "Exception sending message, Is handler present?"

    .line 92
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/dialog/OrbotStartDialogFragment$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
