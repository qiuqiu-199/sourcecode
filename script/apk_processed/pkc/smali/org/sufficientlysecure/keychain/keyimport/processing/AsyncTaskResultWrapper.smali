.class public Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;
.super Ljava/lang/Object;
.source "AsyncTaskResultWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mOperationResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->mResult:Ljava/lang/Object;

    .line 37
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->mOperationResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;---><init>(Ljava/lang/Object;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
    .locals 4

    move-object/16 v1, p0

    .line 45
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->mOperationResult:Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;--->getOperationResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getResult()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 41
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;->mResult:Ljava/lang/Object;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/processing/AsyncTaskResultWrapper;--->getResult()Ljava/lang/Object;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
