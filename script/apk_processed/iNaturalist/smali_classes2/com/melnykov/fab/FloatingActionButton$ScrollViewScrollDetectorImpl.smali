.class Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;
.super Lcom/melnykov/fab/ScrollViewScrollDetector;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollViewScrollDetectorImpl"
.end annotation


# instance fields
.field private mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

.field private mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    return-void
.end method

.method static synthetic access$800(Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->setScrollDirectionListener(Lcom/melnykov/fab/ScrollDirectionListener;)V

    return-void
.end method

.method private setScrollDirectionListener(Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    return-void
.end method


# virtual methods
.method public onScrollChanged(Landroid/widget/ScrollView;IIII)V
    .locals 7

    .line 555
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    .line 559
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/melnykov/fab/ScrollViewScrollDetector;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    return-void
.end method

.method public onScrollDown()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->show()V

    .line 540
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollDown()V

    :cond_0
    return-void
.end method

.method public onScrollUp()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->hide()V

    .line 548
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mScrollDirectionListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollUp()V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    return-void
.end method
