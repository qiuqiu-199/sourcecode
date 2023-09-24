.class final Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;
.super Ljava/lang/Object;
.source "OpenPgpService.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/pgp/Progressable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->createMessengerProgressable(Landroid/os/Messenger;)Lorg/sufficientlysecure/keychain/pgp/Progressable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field errorState:Z

.field final synthetic val$messenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/os/Messenger;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 1104
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;->val$messenger:Landroid/os/Messenger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 1105
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;->errorState:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;---><init>(Landroid/os/Messenger;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public setPreventCancel()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;--->setPreventCancel()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/Progressable$$CC;->setProgress(Lorg/sufficientlysecure/keychain/pgp/Progressable;II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;--->setProgress(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgress(Ljava/lang/Integer;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 1108
    iget-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;->errorState:Z

    if-eqz v1, :cond_0

    return-void

    .line 1111
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1112
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1113
    iput p0, v1, Landroid/os/Message;->arg2:I

    .line 1115
    :try_start_0
    iget-object v2, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;->val$messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1117
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 1118
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;->errorState:Z

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$2;--->setProgress(Ljava/lang/Integer;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
