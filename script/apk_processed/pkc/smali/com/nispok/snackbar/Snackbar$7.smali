.class Lcom/nispok/snackbar/Snackbar$7;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 889
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 896
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 897
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;

    move-result-object p1

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {p1, v0}, Lcom/nispok/snackbar/listeners/EventListener;->onShown(Lcom/nispok/snackbar/Snackbar;)V

    .line 898
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nispok/snackbar/Snackbar;->access$1402(Lcom/nispok/snackbar/Snackbar;Z)Z

    .line 901
    :cond_0
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->access$1600(Lcom/nispok/snackbar/Snackbar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nispok/snackbar/Snackbar;->access$1700(Lcom/nispok/snackbar/Snackbar;Landroid/view/View;)V

    .line 903
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$7;->this$0:Lcom/nispok/snackbar/Snackbar;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$7$1;

    invoke-direct {v0, p0}, Lcom/nispok/snackbar/Snackbar$7$1;-><init>(Lcom/nispok/snackbar/Snackbar$7;)V

    invoke-virtual {p1, v0}, Lcom/nispok/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
