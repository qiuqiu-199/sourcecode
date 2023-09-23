.class public Lorg/piwik/sdk/dispatcher/EventDiskCache;
.super Ljava/lang/Object;
.source "EventDiskCache.java"


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private mCurrentSize:J

.field private mDelayedClear:Z

.field private final mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxAge:J

.field private final mMaxSize:J


# direct methods
.method public constructor <init>(Lorg/piwik/sdk/Tracker;)V
    .locals 9

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    .line 37
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getOfflineCacheAge()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    .line 38
    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getOfflineCacheSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    .line 39
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getPiwik()Lorg/piwik/sdk/Piwik;

    move-result-object v2

    invoke-virtual {v2}, Lorg/piwik/sdk/Piwik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "piwik_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lorg/piwik/sdk/Tracker;->getAPIUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    .line 41
    iget-object p1, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 44
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 45
    iget-wide v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v7, v3, v5

    iput-wide v7, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 46
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PIWIK:EventDiskCache"

    invoke-static {p1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const-string v1, "Failed to make disk-cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private checkCacheLimits()V
    .locals 18

    move-object/from16 v1, p0

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 55
    iget-wide v4, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v8, :cond_1

    const-string v8, "PIWIK:EventDiskCache"

    .line 56
    invoke-static {v8}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v8

    const-string v9, "Caching is disabled."

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_0
    :goto_0
    iget-object v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 58
    iget-object v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 59
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "PIWIK:EventDiskCache"

    .line 60
    invoke-static {v9}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v9

    const-string v10, "Deleted cache container %s"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v5

    invoke-virtual {v9, v10, v11}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-wide v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    cmp-long v10, v8, v6

    if-lez v10, :cond_3

    .line 64
    iget-object v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 65
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 66
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 69
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 70
    aget-object v10, v10, v4

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v0

    const-string v11, "PIWIK:EventDiskCache"

    .line 72
    invoke-static {v11}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v11

    invoke-virtual {v11, v10}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    move-wide v10, v6

    .line 75
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    sub-long v16, v12, v14

    cmp-long v12, v10, v16

    if-gez v12, :cond_3

    .line 76
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "PIWIK:EventDiskCache"

    invoke-static {v10}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v10

    const-string v11, "Deleted cache container %s"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v5

    invoke-virtual {v10, v11, v12}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    const-string v10, "PIWIK:EventDiskCache"

    .line 77
    invoke-static {v10}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v10

    const-string v11, "Failed to delete cache container %s"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v5

    invoke-virtual {v10, v11, v12}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 85
    :cond_3
    iget-wide v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_5

    .line 86
    iget-object v6, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 87
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-wide v7, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    iget-wide v9, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_5

    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 89
    iget-wide v8, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long v12, v8, v10

    iput-wide v12, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 91
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "PIWIK:EventDiskCache"

    invoke-static {v8}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v8

    const-string v9, "Deleted cache container %s"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    const-string v8, "PIWIK:EventDiskCache"

    .line 92
    invoke-static {v8}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v8

    const-string v9, "Failed to delete cache container %s"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 95
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "PIWIK:EventDiskCache"

    .line 96
    invoke-static {v8}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v8

    const-string v9, "Cache check took %dms"

    new-array v4, v4, [Ljava/lang/Object;

    sub-long v10, v6, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v8, v9, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isCachingEnabled()Z
    .locals 5

    .line 100
    iget-wide v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readEventFile(Ljava/io/File;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 154
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 156
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v8, "1"

    .line 159
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    if-eqz v5, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PIWIK:EventDiskCache"

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v2

    .line 161
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const/4 v3, 0x0

    sub-long v12, v8, v10

    .line 163
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v8, " "

    .line 164
    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    goto :goto_1

    .line 168
    :cond_3
    :try_start_5
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 169
    iget-wide v14, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-lez v11, :cond_4

    cmp-long v11, v9, v12

    if-gez v11, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 171
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 172
    new-instance v8, Lorg/piwik/sdk/dispatcher/Event;

    invoke-direct {v8, v9, v10, v3}, Lorg/piwik/sdk/dispatcher/Event;-><init>(JLjava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_6
    const-string v8, "PIWIK:EventDiskCache"

    .line 173
    invoke-static {v8}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v8

    invoke-virtual {v8, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    .line 179
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v5, v3

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v6, p1

    :goto_2
    move-object v5, v3

    :goto_3
    move-object v3, v0

    :try_start_8
    const-string v7, "PIWIK:EventDiskCache"

    .line 176
    invoke-static {v7}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v7

    invoke-virtual {v7, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_6

    .line 179
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    const-string v3, "PIWIK:EventDiskCache"

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    const-string v3, "PIWIK:EventDiskCache"

    .line 183
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v5, "Restored %d events from %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v7, v6

    invoke-virtual {v3, v5, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_5
    if-eqz v5, :cond_7

    .line 179
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    const-string v3, "PIWIK:EventDiskCache"

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 181
    :cond_7
    :goto_6
    throw v2
.end method

.method private writeEventFile(Ljava/util/List;)Ljava/io/File;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 189
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 191
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "events_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/piwik/sdk/dispatcher/Event;

    invoke-virtual {v6}, Lorg/piwik/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v5, "1"

    .line 196
    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const/4 v11, 0x0

    sub-long v11, v5, v9

    .line 199
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/piwik/sdk/dispatcher/Event;

    .line 200
    iget-wide v13, v1, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-lez v17, :cond_1

    invoke-virtual {v10}, Lorg/piwik/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-gez v15, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v10}, Lorg/piwik/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    invoke-virtual {v10}, Lorg/piwik/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 210
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "PIWIK:EventDiskCache"

    invoke-static {v4}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    invoke-virtual {v4, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const-string v4, "PIWIK:EventDiskCache"

    .line 214
    invoke-static {v4}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    const-string v5, "Saved %d events to %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v7

    invoke-virtual {v4, v5, v10}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_4

    return-object v2

    .line 220
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v4, v3

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    :goto_2
    :try_start_3
    const-string v6, "PIWIK:EventDiskCache"

    .line 205
    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    invoke-virtual {v6, v4}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_5

    .line 210
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v2, "PIWIK:EventDiskCache"

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-virtual {v2, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v3

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    const-string v3, "PIWIK:EventDiskCache"

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 212
    :cond_6
    :goto_5
    throw v2
.end method


# virtual methods
.method public declared-synchronized cache(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->isCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    invoke-direct {p0, p1}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->writeEventFile(Ljava/util/List;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 112
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 113
    iget-wide v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    add-long v7, v3, v5

    iput-wide v7, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 115
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "PIWIK:EventDiskCache"

    .line 116
    invoke-static {v5}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v5

    const-string v6, "Caching of %d events took %dms (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x1

    sub-long v8, v3, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, p1

    const/4 p1, 0x2

    aput-object v2, v7, p1

    invoke-virtual {v5, v6, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 104
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 140
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uncache()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/piwik/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->isCachingEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    .line 124
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 127
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 128
    iget-object v3, p0, Lorg/piwik/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_1

    .line 130
    invoke-direct {p0, v3}, Lorg/piwik/sdk/dispatcher/EventDiskCache;->readEventFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PIWIK:EventDiskCache"

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    const-string v7, "Failed to delete cache container %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {v6, v7, v5}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v3, "PIWIK:EventDiskCache"

    .line 136
    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v8, "Uncaching of %d events took %dms"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x0

    sub-long v10, v6, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-virtual {v3, v8, v9}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 120
    monitor-exit p0

    throw v0
.end method
