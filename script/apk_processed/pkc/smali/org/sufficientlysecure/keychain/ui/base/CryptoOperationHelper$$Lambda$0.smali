.class final synthetic Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

.field private final arg$2:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->lambda$onHandleResult$0$CryptoOperationHelper(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
