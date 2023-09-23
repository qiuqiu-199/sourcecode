.class public Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;
.super Ljava/lang/Object;
.source "OperationResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/operations/results/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParcels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 969
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 979
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v2}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public varargs add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move-object/16 p0, p3

    .line 975
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    new-instance v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    invoke-direct {v1, v3, v4, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 983
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    .line 984
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getFirst()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v3

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getFirst()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mParameters:[Ljava/lang/Object;

    invoke-direct {v2, v5, v3, v6, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addAll(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 1028
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->addAll(Ljava/util/List;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addByMerge(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 988
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v4

    .line 989
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 990
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    new-instance v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    invoke-direct {v2, v0, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;-><init>(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->addByMerge(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public clear()V
    .locals 4

    move-object/16 v1, p0

    .line 1006
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->clear()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public containsType(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 1010
    new-instance v0, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 1011
    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->containsType(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public containsWarnings()Z
    .locals 7

    move-object/16 v4, p0

    .line 1019
    new-instance v0, Lorg/sufficientlysecure/keychain/util/IterableIterator;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/util/IterableIterator;-><init>(Ljava/util/Iterator;)V

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/IterableIterator;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 1020
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v2, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    sget-object v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->WARN:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    if-eq v2, v3, :cond_1

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->mType:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->mLevel:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    sget-object v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;->ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogLevel;

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->containsWarnings()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getFirst()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
    .locals 5

    move-object/16 v2, p0

    .line 1040
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1043
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->getFirst()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;
    .locals 5

    move-object/16 v2, p0

    .line 1047
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1050
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 1051
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    if-eqz v1, :cond_1

    .line 1052
    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;->getSubResult()Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->getLog()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->getLast()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPrintableOperationLog(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    .line 1070
    invoke-virtual {v2, v4, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;->getPrintableLogEntry(Landroid/content/res/Resources;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1072
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 1073
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1075
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->getPrintableOperationLog(Landroid/content/res/Resources;I)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSubResultIfSingle()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;
    .locals 6

    move-object/16 v3, p0

    .line 995
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 998
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->getFirst()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;

    move-result-object v0

    .line 999
    instance-of v2, v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    if-eqz v2, :cond_1

    .line 1000
    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;

    return-object v0

    :cond_1
    return-object v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->getSubResultIfSingle()Lorg/sufficientlysecure/keychain/operations/results/OperationResult$SubLogEntryParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 1036
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 1059
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->iterator()Ljava/util/Iterator;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogEntryParcel;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 1032
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->mParcels:Ljava/util/List;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;--->toList()Ljava/util/List;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
