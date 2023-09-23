.class public Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;
.super Ljava/lang/Object;
.source "KeychainServiceTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$ProgressUpdate;,
        Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;
    }
.end annotation


# instance fields
.field private final analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

.field private final context:Landroid/content/Context;

.field private final keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->context:Landroid/content/Context;

    .line 70
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    .line 71
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    return-object p0
.end method

.method public static create(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;
    .locals 6

    move-object/16 v3, p0

    .line 61
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;

    move-result-object v1

    .line 63
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v3

    .line 65
    new-instance v2, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    invoke-direct {v2, v0, v1, v3}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/daos/KeyWritableRepository;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V

    return-object v2

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;--->create(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static final synthetic lambda$startOperationInBackground$0$KeychainServiceTask(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public startOperationInBackground(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)Landroid/support/v4/os/CancellationSignal;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    move-object/16 v11, p2

    move-object/16 p0, p3

    .line 80
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    new-instance v8, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object v3, v6

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$1;-><init>(Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;Landroid/os/Parcelable;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)V

    .line 168
    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v11, v7, [Ljava/lang/Void;

    invoke-virtual {v8, v10, v11}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 170
    new-instance v10, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v10}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    .line 171
    new-instance v11, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;

    invoke-direct {v11, v6}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$$Lambda$0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/os/CancellationSignal;->setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V

    return-object v10

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;--->startOperationInBackground(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)Landroid/support/v4/os/CancellationSignal;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
