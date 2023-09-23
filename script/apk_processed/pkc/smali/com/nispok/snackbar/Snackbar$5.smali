.class Lcom/nispok/snackbar/Snackbar$5;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nispok/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 705
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$500(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionSwipeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 706
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$500(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionSwipeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/nispok/snackbar/listeners/ActionSwipeListener;->onSwipeToDismiss()V

    .line 708
    :cond_0
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nispok/snackbar/Snackbar;->access$600(Lcom/nispok/snackbar/Snackbar;Z)V

    :cond_1
    return-void
.end method

.method public pauseTimer(Z)V
    .locals 8

    .line 714
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$700(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 718
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$800(Lcom/nispok/snackbar/Snackbar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 720
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/nispok/snackbar/Snackbar;->access$902(Lcom/nispok/snackbar/Snackbar;J)J

    goto :goto_0

    .line 722
    :cond_1
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1000(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v2}, Lcom/nispok/snackbar/Snackbar;->access$900(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v4}, Lcom/nispok/snackbar/Snackbar;->access$1100(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v4

    sub-long v6, v2, v4

    sub-long v2, v0, v6

    invoke-static {p1, v2, v3}, Lcom/nispok/snackbar/Snackbar;->access$1002(Lcom/nispok/snackbar/Snackbar;J)J

    .line 724
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$5;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1000(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/nispok/snackbar/Snackbar;->access$1200(Lcom/nispok/snackbar/Snackbar;J)V

    :goto_0
    return-void
.end method
