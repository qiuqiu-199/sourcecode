.class Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;
.super Ljava/lang/Object;
.source "ImportOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/operations/ImportOperation;->multiThreadedKeyImport(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/operations/ImportOperation;

.field final synthetic val$forceReinsert:Z

.field final synthetic val$keyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

.field final synthetic val$pkRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

.field final synthetic val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field final synthetic val$skipSave:Z


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/operations/ImportOperation;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move/16 p2, p5

    move/16 p3, p6

    .line 541
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$pkRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$keyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iput-object p1, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iput-boolean p2, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$skipSave:Z

    iput-boolean p3, v0, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$forceReinsert:Z

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;---><init>(Lorg/sufficientlysecure/keychain/operations/ImportOperation;Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->call()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 13

    move-object/16 v10, p0

    .line 545
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->checkCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 549
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$pkRing:Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    new-instance v6, Lorg/sufficientlysecure/keychain/util/ProgressScaler;

    invoke-direct {v6}, Lorg/sufficientlysecure/keychain/util/ProgressScaler;-><init>()V

    .line 553
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->this$0:Lorg/sufficientlysecure/keychain/operations/ImportOperation;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$keyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    iget-object v7, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$proxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    iget-boolean v8, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$skipSave:Z

    iget-boolean v9, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;->val$forceReinsert:Z

    invoke-static/range {v2 .. v9}, Lorg/sufficientlysecure/keychain/operations/ImportOperation;->access$000(Lorg/sufficientlysecure/keychain/operations/ImportOperation;Ljava/util/Iterator;ILorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/pgp/Progressable;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;ZZ)Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    move-result-object v0

    return-object v0

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$1;--->call()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
