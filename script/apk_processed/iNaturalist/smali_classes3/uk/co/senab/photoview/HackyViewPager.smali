.class public Luk/co/senab/photoview/HackyViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "HackyViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;
    }
.end annotation


# instance fields
.field private isLocked:Z

.field mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

.field mStartDragX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    return-void
.end method

.method private onSwipeOutAtEnd()Z
    .locals 1

    .line 54
    iget-object v0, p0, Luk/co/senab/photoview/HackyViewPager;->mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Luk/co/senab/photoview/HackyViewPager;->mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

    invoke-interface {v0}, Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;->onSwipeOutAtEnd()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onSwipeOutAtStart()Z
    .locals 1

    .line 46
    iget-object v0, p0, Luk/co/senab/photoview/HackyViewPager;->mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Luk/co/senab/photoview/HackyViewPager;->mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

    invoke-interface {v0}, Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;->onSwipeOutAtStart()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isLocked()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 74
    iget-boolean v0, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Luk/co/senab/photoview/HackyViewPager;->mStartDragX:F

    .line 82
    :goto_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v1

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 93
    iget-boolean v0, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 94
    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Luk/co/senab/photoview/HackyViewPager;->mStartDragX:F

    goto :goto_2

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Luk/co/senab/photoview/HackyViewPager;->mStartDragX:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 103
    invoke-direct {p0}, Luk/co/senab/photoview/HackyViewPager;->onSwipeOutAtStart()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    .line 105
    :goto_1
    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {p0}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_3

    iget v2, p0, Luk/co/senab/photoview/HackyViewPager;->mStartDragX:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    .line 106
    invoke-direct {p0}, Luk/co/senab/photoview/HackyViewPager;->onSwipeOutAtEnd()Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    return v1

    .line 119
    :cond_4
    :goto_2
    :pswitch_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocked(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    return-void
.end method

.method public setOnSwipeOutListener(Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Luk/co/senab/photoview/HackyViewPager;->mOnSwipeOutListener:Luk/co/senab/photoview/HackyViewPager$OnSwipeOutListener;

    return-void
.end method

.method public toggleLock()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Luk/co/senab/photoview/HackyViewPager;->isLocked:Z

    return-void
.end method
