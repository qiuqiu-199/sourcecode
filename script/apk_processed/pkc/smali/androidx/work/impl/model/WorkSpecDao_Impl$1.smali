.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 48
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V
    .locals 8

    .line 56
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 57
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 62
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/State;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 63
    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 65
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :goto_1
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 70
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_2
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 77
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 79
    :cond_3
    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 82
    :goto_3
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 84
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 86
    :cond_4
    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_4
    const/4 v0, 0x7

    .line 88
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 89
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 90
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 91
    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 93
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 94
    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 95
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 96
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 97
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 98
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 99
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    const/16 v0, 0x14

    const/16 v1, 0x13

    const/16 v2, 0x12

    const/16 v3, 0x11

    const/16 v4, 0x10

    const/16 v5, 0x15

    if-eqz p2, :cond_6

    .line 102
    invoke-virtual {p2}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v6

    invoke-static {v6}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/NetworkType;)I

    move-result v6

    int-to-long v6, v6

    .line 103
    invoke-interface {p1, v4, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v4

    int-to-long v6, v4

    .line 106
    invoke-interface {p1, v3, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 108
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v3

    int-to-long v3, v3

    .line 109
    invoke-interface {p1, v2, v3, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v2

    int-to-long v2, v2

    .line 112
    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 114
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v1

    int-to-long v1, v1

    .line 115
    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {p2}, Landroidx/work/Constraints;->getContentUriTriggers()Landroidx/work/ContentUriTriggers;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->contentUriTriggersToByteArray(Landroidx/work/ContentUriTriggers;)[B

    move-result-object p2

    if-nez p2, :cond_5

    .line 119
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 121
    :cond_5
    invoke-interface {p1, v5, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_5

    .line 124
    :cond_6
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 125
    invoke-interface {p1, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 126
    invoke-interface {p1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 127
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 128
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 129
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    :goto_5
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
