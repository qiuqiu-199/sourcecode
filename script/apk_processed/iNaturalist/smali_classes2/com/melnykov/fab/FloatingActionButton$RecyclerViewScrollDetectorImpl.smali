.class Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;
.super Lcom/melnykov/fab/RecyclerViewScrollDetector;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewScrollDetectorImpl"
.end annotation


# instance fields
.field private mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/RecyclerViewScrollDetector;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$600(Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 0

    .line 477
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->setScrollDirectionListener(Lcom/melnykov/fab/ScrollDirectionListener;)V

    return-void
.end method

.method private setScrollDirectionListener(Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    return-void
.end method


# virtual methods
.method public onScrollDown()V
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->show()V

    .line 492
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollDown()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 520
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrollUp()V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->hide()V

    .line 500
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollUp()V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 511
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method
