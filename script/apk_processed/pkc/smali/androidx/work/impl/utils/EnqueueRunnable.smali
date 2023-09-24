.class public Landroidx/work/impl/utils/EnqueueRunnable;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkContinuationImpl;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    return-void
.end method

.method private static enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 5

    .line 132
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getWork()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 137
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;

    move-result-object v4

    .line 134
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z

    move-result v0

    .line 141
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->markEnqueued()V

    return v0
.end method

.method private static enqueueWorkWithPrerequisites(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 160
    array-length v8, v0

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_5

    .line 169
    array-length v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v14, v0, v10

    .line 170
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v15

    invoke-interface {v15, v14}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v15

    if-nez v15, :cond_1

    const-string v0, "EnqueueRunnable"

    const-string v1, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 172
    new-array v2, v7, [Ljava/lang/Object;

    aput-object v14, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 176
    :cond_1
    iget-object v14, v15, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    .line 177
    sget-object v15, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    if-ne v14, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    and-int/2addr v11, v15

    .line 178
    sget-object v15, Landroidx/work/State;->FAILED:Landroidx/work/State;

    if-ne v14, v15, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    .line 180
    :cond_3
    sget-object v15, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    if-ne v14, v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 186
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_7

    if-nez v8, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_12

    .line 194
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v10

    invoke-interface {v10, v1}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 196
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_12

    .line 198
    sget-object v14, Landroidx/work/ExistingWorkPolicy;->APPEND:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v14, :cond_e

    .line 199
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v2

    .line 200
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 202
    iget-object v15, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v2, v15}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 203
    iget-object v15, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/State;

    sget-object v7, Landroidx/work/State;->SUCCEEDED:Landroidx/work/State;

    if-ne v15, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x0

    :goto_6
    and-int/2addr v7, v11

    .line 204
    iget-object v11, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/State;

    sget-object v15, Landroidx/work/State;->FAILED:Landroidx/work/State;

    if-ne v11, v15, :cond_9

    const/4 v12, 0x1

    goto :goto_7

    .line 206
    :cond_9
    iget-object v11, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/State;

    sget-object v15, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    if-ne v11, v15, :cond_a

    const/4 v13, 0x1

    .line 209
    :cond_a
    :goto_7
    iget-object v11, v14, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v7

    :cond_b
    const/4 v7, 0x1

    goto :goto_5

    .line 212
    :cond_c
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 213
    array-length v2, v0

    if-lez v2, :cond_d

    const/4 v8, 0x1

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    goto :goto_9

    .line 217
    :cond_e
    sget-object v7, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    if-ne v2, v7, :cond_11

    .line 218
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 219
    iget-object v14, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/State;

    sget-object v15, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    if-eq v14, v15, :cond_10

    iget-object v7, v7, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/State;

    sget-object v14, Landroidx/work/State;->RUNNING:Landroidx/work/State;

    if-ne v7, v14, :cond_f

    :cond_10
    return v6

    :cond_11
    move-object/from16 v2, p0

    .line 226
    invoke-static {v1, v2}, Landroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 228
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 229
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 230
    iget-object v10, v10, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v2, v10}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    goto :goto_8

    .line 237
    :cond_12
    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/WorkRequest;

    .line 238
    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v14

    if-eqz v8, :cond_15

    if-nez v11, :cond_15

    if-eqz v12, :cond_13

    .line 242
    sget-object v15, Landroidx/work/State;->FAILED:Landroidx/work/State;

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    goto :goto_b

    :cond_13
    if-eqz v13, :cond_14

    .line 244
    sget-object v15, Landroidx/work/State;->CANCELLED:Landroidx/work/State;

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    goto :goto_b

    .line 246
    :cond_14
    sget-object v15, Landroidx/work/State;->BLOCKED:Landroidx/work/State;

    iput-object v15, v14, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    goto :goto_b

    .line 251
    :cond_15
    iput-wide v3, v14, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 254
    :goto_b
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v15, v6, :cond_16

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x19

    if-gt v6, v15, :cond_16

    .line 255
    invoke-static {v14}, Landroidx/work/impl/utils/EnqueueRunnable;->tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    .line 259
    :cond_16
    iget-object v6, v14, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    sget-object v15, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    if-ne v6, v15, :cond_17

    const/4 v7, 0x1

    .line 263
    :cond_17
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v6

    invoke-interface {v6, v14}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    if-eqz v8, :cond_18

    .line 266
    array-length v6, v0

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v6, :cond_18

    aget-object v15, v0, v14

    move-object/from16 v16, v0

    .line 267
    new-instance v0, Landroidx/work/impl/model/Dependency;

    move-object/from16 v17, v2

    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    goto :goto_c

    :cond_18
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 272
    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v6

    new-instance v14, Landroidx/work/impl/model/WorkTag;

    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v2, v15}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v14}, Landroidx/work/impl/model/WorkTagDao;->insert(Landroidx/work/impl/model/WorkTag;)V

    goto :goto_d

    :cond_19
    if-eqz v9, :cond_1a

    .line 277
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->workNameDao()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v2, Landroidx/work/impl/model/WorkName;

    invoke-virtual {v10}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    :cond_1a
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_1b
    return v7
.end method

.method private static processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z
    .locals 8

    .line 114
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/WorkContinuationImpl;

    .line 119
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->isEnqueued()Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    invoke-static {v3}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const-string v4, "EnqueueRunnable"

    const-string v5, "Already enqueued work ids (%s)."

    const/4 v6, 0x1

    .line 122
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, ", "

    .line 123
    invoke-virtual {v3}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 122
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    .line 127
    :cond_2
    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->enqueueContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method

.method private static tryDelegateConstrainedWorkSpec(Landroidx/work/impl/model/WorkSpec;)V
    .locals 4

    .line 286
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 287
    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 289
    new-instance v1, Landroidx/work/Data$Builder;

    invoke-direct {v1}, Landroidx/work/Data$Builder;-><init>()V

    .line 291
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1, v2}, Landroidx/work/Data$Builder;->putAll(Landroidx/work/Data;)Landroidx/work/Data$Builder;

    move-result-object v2

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 292
    invoke-virtual {v2, v3, v0}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    .line 293
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 294
    invoke-virtual {v1}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    :cond_1
    return-void
.end method


# virtual methods
.method public addToDatabase()Z
    .locals 2

    .line 91
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 95
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-static {v1}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result v1

    .line 96
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    throw v1
.end method

.method public run()V
    .locals 5

    .line 75
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkContinuation has cycles (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    aput-object v4, v2, v3

    .line 77
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->addToDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->scheduleWorkInBackground()V

    :cond_1
    return-void
.end method

.method public scheduleWorkInBackground()V
    .locals 2

    .line 108
    iget-object v0, p0, Landroidx/work/impl/utils/EnqueueRunnable;->mWorkContinuation:Landroidx/work/impl/WorkContinuationImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
