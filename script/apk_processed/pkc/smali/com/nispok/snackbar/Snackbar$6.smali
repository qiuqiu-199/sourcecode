.class Lcom/nispok/snackbar/Snackbar$6;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nispok/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V
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

    .line 862
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 866
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1400(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lcom/nispok/snackbar/listeners/EventListener;->onShowByReplace(Lcom/nispok/snackbar/Snackbar;)V

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lcom/nispok/snackbar/listeners/EventListener;->onShow(Lcom/nispok/snackbar/Snackbar;)V

    .line 872
    :goto_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1500(Lcom/nispok/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lcom/nispok/snackbar/listeners/EventListener;->onShown(Lcom/nispok/snackbar/Snackbar;)V

    .line 874
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$6;->this$0:Lcom/nispok/snackbar/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nispok/snackbar/Snackbar;->access$1402(Lcom/nispok/snackbar/Snackbar;Z)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
