.class public interface abstract Landroidx/work/SynchronousWorkManager;
.super Ljava/lang/Object;
.source "SynchronousWorkManager.java"


# virtual methods
.method public abstract cancelAllWorkByTagSync(Ljava/lang/String;)V
.end method

.method public varargs abstract enqueueSync([Landroidx/work/WorkRequest;)V
.end method

.method public abstract getStatusByIdSync(Ljava/util/UUID;)Landroidx/work/WorkStatus;
.end method
