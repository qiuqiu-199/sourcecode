.class abstract Lcom/melnykov/fab/ScrollViewScrollDetector;
.super Ljava/lang/Object;
.source "ScrollViewScrollDetector.java"

# interfaces
.implements Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;


# instance fields
.field private mLastScrollY:I

.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Landroid/widget/ScrollView;IIII)V
    .locals 0

    .line 15
    iget p1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mScrollThreshold:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 17
    iget p1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    if-le p3, p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;->onScrollUp()V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;->onScrollDown()V

    .line 23
    :cond_2
    :goto_1
    iput p3, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    return-void
.end method

.method abstract onScrollDown()V
.end method

.method abstract onScrollUp()V
.end method

.method public setScrollThreshold(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mScrollThreshold:I

    return-void
.end method
