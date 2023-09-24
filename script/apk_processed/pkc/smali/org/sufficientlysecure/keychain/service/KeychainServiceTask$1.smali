.class Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;
.super Landroid/os/AsyncTask;
.source "KeychainServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->startOperationInBackground(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)Landroid/support/v4/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

.field final synthetic val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

.field final synthetic val$inputParcel:Landroid/os/Parcelable;

.field final synthetic val$operationCallback:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;

.field final synthetic val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;Landroid/os/Parcelable;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 83
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    iput-object p2, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCallback:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    new-instance v1, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;

    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1$1;-><init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;)V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;---><init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;Landroid/os/Parcelable;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;[Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;[Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 88
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;

    if-eqz v5, :cond_0

    .line 89
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/SignEncryptOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    if-eqz v5, :cond_1

    .line 92
    new-instance v5, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto/16 :goto_0

    .line 93
    :cond_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;

    if-eqz v5, :cond_2

    .line 94
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/EditKeyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 96
    :cond_2
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    if-eqz v5, :cond_3

    .line 97
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/ChangeUnlockOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto/16 :goto_0

    .line 98
    :cond_3
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;

    if-eqz v5, :cond_4

    .line 99
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/RevokeOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;

    if-eqz v5, :cond_5

    .line 101
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/CertifyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 103
    :cond_5
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;

    if-eqz v5, :cond_6

    .line 104
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/DeleteOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto/16 :goto_0

    .line 105
    :cond_6
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/PromoteKeyringParcel;

    if-eqz v5, :cond_7

    .line 106
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/PromoteKeyOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 108
    :cond_7
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    if-eqz v5, :cond_8

    .line 109
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 111
    :cond_8
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/BackupKeyringParcel;

    if-eqz v5, :cond_9

    .line 112
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/BackupOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/BackupOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/UploadKeyringParcel;

    if-eqz v5, :cond_a

    .line 115
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/UploadOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/UploadOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto :goto_0

    .line 117
    :cond_a
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/KeybaseVerificationParcel;

    if-eqz v5, :cond_b

    .line 118
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/KeybaseVerificationOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto :goto_0

    .line 119
    :cond_b
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    if-eqz v5, :cond_c

    .line 120
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/InputDataOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto :goto_0

    .line 121
    :cond_c
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/service/BenchmarkInputParcel;

    if-eqz v5, :cond_d

    .line 122
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-direct {v5, v0, v1, v2}, Lorg/sufficientlysecure/keychain/operations/BenchmarkOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;)V

    goto :goto_0

    .line 123
    :cond_d
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    instance-of v5, v5, Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;

    if-eqz v5, :cond_f

    .line 124
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->asyncProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCancelledBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/operations/KeySyncOperation;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/pgp/Progressable;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 130
    :goto_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v5, 0x0

    return-object v5

    .line 134
    :cond_e
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->this$0:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->access$200(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->trackInternalServiceCall(Ljava/lang/String;)V

    .line 137
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$inputParcel:Landroid/os/Parcelable;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$cryptoInput:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/operations/BaseOperation;->execute(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v5

    return-object v5

    .line 127
    :cond_f
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "Unrecognized input parcel in KeychainService!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;--->doInBackground([Ljava/lang/Void;)Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 165
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCallback:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;

    invoke-interface {v0, v2}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;->operationFinished(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;--->onPostExecute(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, [Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->onProgressUpdate([Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const/4 v0, 0x0

    .line 154
    aget-object v4, v4, v0

    if-nez v4, :cond_0

    .line 156
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCallback:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;->setPreventCancel()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;->val$operationCallback:Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->resourceId:Ljava/lang/Integer;

    iget v2, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->current:I

    iget v4, v4, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;->total:I

    invoke-interface {v0, v1, v2, v4}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;->setProgress(Ljava/lang/Integer;II)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;--->onProgressUpdate([Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
