.class Lcom/nispok/snackbar/Snackbar$7$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/Snackbar$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nispok/snackbar/Snackbar$7;


# direct methods
.method constructor <init>(Lcom/nispok/snackbar/Snackbar$7;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 906
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v0, v0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nispok/snackbar/Snackbar;->access$1102(Lcom/nispok/snackbar/Snackbar;J)J

    .line 908
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v0, v0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1000(Lcom/nispok/snackbar/Snackbar;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 909
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v0, v0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v1, v1, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nispok/snackbar/Snackbar;->access$1002(Lcom/nispok/snackbar/Snackbar;J)J

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v0, v0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1800(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7$1;->this$1:Lcom/nispok/snackbar/Snackbar$7;

    iget-object v0, v0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1900(Lcom/nispok/snackbar/Snackbar;)V

    :cond_1
    return-void
.end method
