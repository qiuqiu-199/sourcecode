.class Landroidx/work/impl/WorkerWrapper$1;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkerWrapper;->notifyListener(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkerWrapper;

.field final synthetic val$isSuccessful:Z

.field final synthetic val$needsReschedule:Z


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkerWrapper;ZZ)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iput-boolean p2, p0, Landroidx/work/impl/WorkerWrapper$1;->val$isSuccessful:Z

    iput-boolean p3, p0, Landroidx/work/impl/WorkerWrapper$1;->val$needsReschedule:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 228
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-static {v0}, Landroidx/work/impl/WorkerWrapper;->access$800(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/ExecutionListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-static {v1}, Landroidx/work/impl/WorkerWrapper;->access$700(Landroidx/work/impl/WorkerWrapper;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/work/impl/WorkerWrapper$1;->val$isSuccessful:Z

    iget-boolean v3, p0, Landroidx/work/impl/WorkerWrapper$1;->val$needsReschedule:Z

    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/ExecutionListener;->onExecuted(Ljava/lang/String;ZZ)V

    return-void
.end method
