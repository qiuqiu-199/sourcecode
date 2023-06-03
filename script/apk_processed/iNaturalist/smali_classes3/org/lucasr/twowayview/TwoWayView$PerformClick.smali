.class Lorg/lucasr/twowayview/TwoWayView$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method private constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 1

    .line 6495
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V
    .locals 0

    .line 6495
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 6500
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$500(Lorg/lucasr/twowayview/TwoWayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6504
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6505
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->mClickMotionPosition:I

    if-eqz v0, :cond_1

    .line 6507
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1800(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6511
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v3}, Lorg/lucasr/twowayview/TwoWayView;->access$3300(Lorg/lucasr/twowayview/TwoWayView;)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6513
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v2, v1, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_1
    return-void
.end method
