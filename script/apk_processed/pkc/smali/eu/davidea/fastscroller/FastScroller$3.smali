.class Leu/davidea/fastscroller/FastScroller$3;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/fastscroller/FastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
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

    .line 182
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .line 185
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v0, v0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 188
    iget-object v2, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-static {v2}, Leu/davidea/fastscroller/FastScroller;->access$100(Leu/davidea/fastscroller/FastScroller;)I

    move-result v2

    int-to-float v0, v0

    .line 189
    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v3, v3, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 190
    iget-object v2, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller$3;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget v3, v3, Leu/davidea/fastscroller/FastScroller;->height:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v2, v3}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandlePosition(F)V

    return v1

    :cond_1
    :goto_0
    return v1
.end method
