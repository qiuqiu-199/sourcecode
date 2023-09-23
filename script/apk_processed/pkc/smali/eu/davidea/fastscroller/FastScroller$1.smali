.class Leu/davidea/fastscroller/FastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/FastScroller;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/fastscroller/FastScroller;


# direct methods
.method constructor <init>(Leu/davidea/fastscroller/FastScroller;)V
    .locals 0

    .line 141
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 144
    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {p2}, Leu/davidea/fastscroller/FastScroller;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object p2, p2, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object p2, p2, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p2

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    int-to-float p2, p2

    .line 148
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v0, v0, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 149
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v0, v0, Leu/davidea/fastscroller/FastScroller;->height:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandlePosition(F)V

    .line 151
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget p1, p1, Leu/davidea/fastscroller/FastScroller;->minimumScrollThreshold:I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget p2, p2, Leu/davidea/fastscroller/FastScroller;->minimumScrollThreshold:I

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object p1, p1, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-virtual {p1}, Leu/davidea/fastscroller/ScrollbarAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    :cond_1
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {p1}, Leu/davidea/fastscroller/FastScroller;->showScrollbar()V

    .line 153
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$1;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-static {p1}, Leu/davidea/fastscroller/FastScroller;->access$000(Leu/davidea/fastscroller/FastScroller;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
