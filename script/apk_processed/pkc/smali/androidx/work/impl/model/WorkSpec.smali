.class public Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;,
        Landroidx/work/impl/model/WorkSpec$IdAndState;
    }
.end annotation


# static fields
.field public static final WORK_STATUS_MAPPER:Landroid/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/util/Function<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkStatusPojo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/WorkStatus;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J

.field public backoffPolicy:Landroidx/work/BackoffPolicy;

.field public constraints:Landroidx/work/Constraints;

.field public flexDuration:J

.field public id:Ljava/lang/String;

.field public initialDelay:J

.field public input:Landroidx/work/Data;

.field public inputMergerClassName:Ljava/lang/String;

.field public intervalDuration:J

.field public minimumRetentionDuration:J

.field public output:Landroidx/work/Data;

.field public periodStartTime:J

.field public runAttemptCount:I

.field public scheduleRequestedAt:J

.field public state:Landroidx/work/State;

.field public workerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 375
    new-instance v0, Landroidx/work/impl/model/WorkSpec$1;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkSpec$1;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_STATUS_MAPPER:Landroid/arch/core/util/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    .line 76
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 80
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 93
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 100
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 104
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    const-wide/16 v0, -0x1

    .line 117
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 121
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateNextRunTime()J
    .locals 6

    .line 218
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    sget-object v1, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 220
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    sub-int/2addr v1, v2

    .line 221
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 222
    :goto_1
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long v4, v2, v0

    return-wide v4

    .line 223
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    add-long v4, v0, v2

    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    sub-long v2, v4, v0

    return-wide v2

    .line 226
    :cond_3
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    .line 240
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 242
    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    .line 244
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 245
    :cond_2
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 246
    :cond_3
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 247
    :cond_4
    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v2, v3, :cond_5

    return v1

    .line 248
    :cond_5
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    return v1

    .line 249
    :cond_6
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    .line 250
    :cond_7
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    return v1

    .line 251
    :cond_8
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    .line 252
    :cond_9
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 253
    :cond_a
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    if-eq v2, v3, :cond_b

    return v1

    .line 254
    :cond_b
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 255
    :cond_c
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_d
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v2, :cond_e

    :goto_0
    return v1

    .line 260
    :cond_e
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 261
    :cond_f
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 262
    :cond_10
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v2, v3}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 263
    :cond_11
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    if-ne v2, p1, :cond_12

    goto :goto_1

    :cond_12
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_13
    :goto_2
    return v1
.end method

.method public hasConstraints()Z
    .locals 2

    .line 234
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 268
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    invoke-virtual {v1}, Landroidx/work/State;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1}, Landroidx/work/Constraints;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 278
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Landroidx/work/BackoffPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 283
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public isBackedOff()Z
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    sget-object v1, Landroidx/work/State;->ENQUEUED:Landroidx/work/State;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPeriodic()Z
    .locals 5

    .line 142
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPeriodic(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-string p1, "WorkSpec"

    const-string p2, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v2, 0x1

    .line 156
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 156
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    .line 161
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    return-void
.end method

.method public setPeriodic(JJ)V
    .locals 6

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    const-string p1, "WorkSpec"

    const-string p2, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 172
    new-array v2, v4, [Ljava/lang/Object;

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 172
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_0
    const-wide/32 v0, 0x493e0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    const-string p3, "WorkSpec"

    const-string p4, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 178
    new-array v2, v4, [Ljava/lang/Object;

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 179
    invoke-static {p4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 178
    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p3, v0

    :cond_1
    cmp-long v0, p3, p1

    if-lez v0, :cond_2

    const-string p3, "WorkSpec"

    const-string p4, "Flex duration greater than interval duration; Changed to %s"

    .line 184
    new-array v0, v4, [Ljava/lang/Object;

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    .line 184
    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p3, p1

    .line 188
    :cond_2
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 189
    iput-wide p3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
