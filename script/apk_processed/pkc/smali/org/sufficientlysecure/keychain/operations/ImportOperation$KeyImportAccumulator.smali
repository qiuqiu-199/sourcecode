.class public Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;
.super Ljava/lang/Object;
.source "ImportOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/ImportOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyImportAccumulator"
.end annotation


# instance fields
.field private mBadKeys:I

.field mCanonicalizedKeyRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCancelledResult:Z

.field private mImportLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

.field private mImportedKeys:I

.field private mImportedMasterKeyIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMissingKeys:I

.field private mNewKeys:I

.field private mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

.field private mResultType:I

.field private mSecret:I

.field private mTotalKeys:I

.field private mUpdatedKeys:I


# direct methods
.method public constructor <init>(ILorg/sufficientlysecure/keychain/pgp/Progressable;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 607
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    const/4 v0, 0x0

    .line 587
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedKeys:I

    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedMasterKeyIds:Ljava/util/ArrayList;

    .line 589
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    .line 590
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    .line 591
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    .line 592
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mMissingKeys:I

    .line 593
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mSecret:I

    .line 594
    iput v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 608
    iput v3, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mTotalKeys:I

    .line 609
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    .line 610
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v4, :cond_0

    .line 611
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    invoke-interface {v4, v0, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(II)V

    .line 614
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;---><init>(ILorg/sufficientlysecure/keychain/pgp/Progressable;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public accumulateKeyImport(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 618
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedKeys:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedKeys:I

    if-nez v7, :cond_0

    return-void

    .line 624
    :cond_0
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mProgressable:Lorg/sufficientlysecure/keychain/pgp/Progressable;

    iget v2, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedKeys:I

    iget v3, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mTotalKeys:I

    invoke-interface {v0, v2, v3}, Lorg/sufficientlysecure/keychain/pgp/Progressable;->setProgress(II)V

    .line 628
    :cond_1
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->cancelled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mHasCancelledResult:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    .line 630
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->toList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->addAll(Ljava/util/List;)V

    .line 631
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->cancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    iput-boolean v1, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mHasCancelledResult:Z

    .line 636
    :cond_4
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    iget v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mBadKeys:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    .line 637
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    iget v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mNewKeys:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    .line 638
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    iget v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mUpdatedKeys:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    .line 639
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mMissingKeys:I

    iget v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mMissingKeys:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mMissingKeys:I

    .line 640
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mSecret:I

    iget v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mSecret:I

    add-int/2addr v0, v1

    iput v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mSecret:I

    .line 642
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getImportedMasterKeyIds()[J

    move-result-object v0

    .line 643
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-wide v3, v0, v2

    .line 644
    iget-object v5, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedMasterKeyIds:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 647
    :cond_5
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 651
    iget v0, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getResult()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    or-int/2addr v7, v0

    iput v7, v6, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;--->accumulateKeyImport(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getConsolidatedResult()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;
    .locals 13

    move-object/16 v10, p0

    .line 661
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    if-nez v0, :cond_0

    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    if-nez v0, :cond_0

    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    if-nez v0, :cond_0

    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x41

    .line 664
    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    goto :goto_0

    .line 666
    :cond_0
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    if-lez v0, :cond_1

    .line 667
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 669
    :cond_1
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    if-lez v0, :cond_2

    .line 670
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 672
    :cond_2
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    if-lez v0, :cond_3

    .line 673
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 674
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    if-nez v0, :cond_3

    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    if-nez v0, :cond_3

    .line 675
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 678
    :cond_3
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->containsWarnings()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 679
    iget v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    .line 683
    :cond_4
    :goto_0
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedMasterKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v9, v0, [J

    const/4 v0, 0x0

    .line 684
    :goto_1
    array-length v1, v9

    if-ge v0, v1, :cond_5

    .line 685
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedMasterKeyIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    :cond_5
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    iget v2, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mResultType:I

    iget-object v3, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportLog:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    iget v4, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mNewKeys:I

    iget v5, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mUpdatedKeys:I

    iget v6, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mMissingKeys:I

    iget v7, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mBadKeys:I

    iget v8, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mSecret:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;IIIII[J)V

    .line 691
    iget-object v1, v10, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mCanonicalizedKeyRings:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->setCanonicalizedKeyRings(Ljava/util/ArrayList;)V

    return-object v0

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;--->getConsolidatedResult()Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isImportFinished()Z
    .locals 5

    move-object/16 v2, p0

    .line 696
    iget v0, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mTotalKeys:I

    iget v1, v2, Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;->mImportedKeys:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/ImportOperation$KeyImportAccumulator;--->isImportFinished()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
