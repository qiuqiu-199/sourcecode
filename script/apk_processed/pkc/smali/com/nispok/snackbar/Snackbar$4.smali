.class Lcom/nispok/snackbar/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 667
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 670
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$000(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 675
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$100(Lcom/nispok/snackbar/Snackbar;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$200(Lcom/nispok/snackbar/Snackbar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$300(Lcom/nispok/snackbar/Snackbar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 677
    :cond_0
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$000(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-interface {p1, v0}, Lcom/nispok/snackbar/listeners/ActionClickListener;->onActionClicked(Lcom/nispok/snackbar/Snackbar;)V

    .line 678
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nispok/snackbar/Snackbar;->access$202(Lcom/nispok/snackbar/Snackbar;Z)Z

    .line 681
    :cond_1
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->access$400(Lcom/nispok/snackbar/Snackbar;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 682
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar$4;->this$0:Lcom/nispok/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/nispok/snackbar/Snackbar;->dismiss()V

    :cond_2
    return-void
.end method
