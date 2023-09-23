.class public Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;
.super Landroid/support/v4/widget/NestedScrollView;
.source "ScrollViewMaxHeight.java"


# instance fields
.field private mMaxHeight:I

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lorg/sufficientlysecure/materialchips/R$styleable;->ScrollViewMaxHeight:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 30
    :try_start_0
    sget p2, Lorg/sufficientlysecure/materialchips/R$styleable;->ScrollViewMaxHeight_maxHeight:I

    const/16 v0, 0x12c

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mMaxHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    throw p2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 45
    iput p1, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mWidthMeasureSpec:I

    .line 46
    iget p2, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 38
    iput p1, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mMaxHeight:I

    .line 39
    iget p1, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mMaxHeight:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 40
    iget v0, p0, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->mWidthMeasureSpec:I

    invoke-virtual {p0, v0, p1}, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;->measure(II)V

    return-void
.end method
