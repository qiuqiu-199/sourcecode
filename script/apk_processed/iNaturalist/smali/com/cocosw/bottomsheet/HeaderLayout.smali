.class Lcom/cocosw/bottomsheet/HeaderLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderLayout.java"


# instance fields
.field private mHeaderWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 35
    iget v0, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 38
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setHeaderWidth(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/cocosw/bottomsheet/HeaderLayout;->mHeaderWidth:I

    return-void
.end method
