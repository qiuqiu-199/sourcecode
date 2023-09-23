.class Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .line 6595
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .line 6595
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6597
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2200(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_2

    .line 6601
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$2200(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v0

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 6602
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6604
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v1}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6607
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6608
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$2200(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v4}, Lorg/lucasr/twowayview/TwoWayView;->access$2300(Lorg/lucasr/twowayview/TwoWayView;)J

    move-result-wide v4

    invoke-static {v1, v0, v3, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 6612
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 6613
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 6616
    :cond_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    if-eqz v0, :cond_3

    .line 6619
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method
