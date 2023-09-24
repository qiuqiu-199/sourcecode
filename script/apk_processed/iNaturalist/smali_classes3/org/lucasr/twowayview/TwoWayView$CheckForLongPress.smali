.class Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;
.super Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;
.source "TwoWayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .line 6570
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .line 6570
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6573
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$3400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    .line 6574
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6577
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$3400(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 6580
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->sameWindow()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6581
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4, v1, v0, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6585
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    .line 6586
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 6587
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 6589
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$402(Lorg/lucasr/twowayview/TwoWayView;I)I

    :cond_2
    :goto_1
    return-void
.end method
