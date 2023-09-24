.class abstract Lcom/melnykov/fab/RecyclerViewScrollDetector;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollDetector.java"


# instance fields
.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onScrollDown()V
.end method

.method abstract onScrollUp()V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 14
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/melnykov/fab/RecyclerViewScrollDetector;->mScrollThreshold:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-lez p3, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrollUp()V

    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrollDown()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setScrollThreshold(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/melnykov/fab/RecyclerViewScrollDetector;->mScrollThreshold:I

    return-void
.end method
