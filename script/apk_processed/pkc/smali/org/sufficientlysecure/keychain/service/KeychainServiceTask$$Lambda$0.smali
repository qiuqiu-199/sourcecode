.class final synthetic Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;---><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->lambda$startOperationInBackground$0$KeychainServiceTask(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;--->onCancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
