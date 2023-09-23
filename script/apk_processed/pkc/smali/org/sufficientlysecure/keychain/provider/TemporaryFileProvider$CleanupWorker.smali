.class public Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;
.super Landroidx/work/Worker;
.source "TemporaryFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanupWorker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 325
    invoke-direct {v0}, Landroidx/work/Worker;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public doWork()Landroidx/work/Worker$WorkerResult;
    .locals 14

    move-object/16 v11, p0

    const-string v0, "Cleaning up temporary files\u2026"

    const/4 v1, 0x0

    .line 329
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v11}, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 332
    sget-object v2, Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "time <= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 332
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 338
    sget-object v0, Landroidx/work/Worker$WorkerResult;->SUCCESS:Landroidx/work/Worker$WorkerResult;

    return-object v0

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/provider/TemporaryFileProvider$CleanupWorker;--->doWork()Landroidx/work/Worker$WorkerResult;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
