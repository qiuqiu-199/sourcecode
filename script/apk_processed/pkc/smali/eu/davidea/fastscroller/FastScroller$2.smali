.class Leu/davidea/fastscroller/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 170
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller$2;->this$0:Leu/davidea/fastscroller/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 173
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller$2;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller$2;->this$0:Leu/davidea/fastscroller/FastScroller;

    iget-object p2, p2, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    iput-object p2, p1, Leu/davidea/fastscroller/FastScroller;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method
