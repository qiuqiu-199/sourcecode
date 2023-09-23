.class public Leu/davidea/fastscroller/FastScroller;
.super Landroid/widget/FrameLayout;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/fastscroller/FastScroller$Delegate;,
        Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;,
        Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;
    }
.end annotation


# instance fields
.field protected autoHideDelayInMillis:J

.field protected autoHideEnabled:Z

.field protected bar:Landroid/view/View;

.field protected bubble:Landroid/widget/TextView;

.field protected bubbleAndHandleColor:I

.field protected bubbleAnimator:Leu/davidea/fastscroller/BubbleAnimator;

.field protected bubbleEnabled:Z

.field protected bubblePosition:I

.field protected bubbleTextCreator:Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;

.field protected handle:Landroid/widget/ImageView;

.field protected handleAlwaysVisible:Z

.field protected height:I

.field protected ignoreTouchesOutsideHandle:Z

.field protected isInitialized:Z

.field protected layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected minimumScrollThreshold:I

.field protected onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field protected recyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected scrollStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

.field protected width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->scrollStateChangeListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAndHandleColor:I

    .line 111
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/fastscroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Leu/davidea/fastscroller/FastScroller;->scrollStateChangeListeners:Ljava/util/List;

    const/4 p3, 0x0

    .line 93
    iput p3, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAndHandleColor:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Leu/davidea/flexibleadapter/R$styleable;->FastScroller:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 124
    :try_start_0
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerAutoHideEnabled:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Leu/davidea/fastscroller/FastScroller;->autoHideEnabled:Z

    .line 125
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerAutoHideDelayInMillis:I

    const/16 v1, 0x3e8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-long v1, p2

    iput-wide v1, p0, Leu/davidea/fastscroller/FastScroller;->autoHideDelayInMillis:J

    .line 126
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerBubbleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Leu/davidea/fastscroller/FastScroller;->bubbleEnabled:Z

    .line 127
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerBubblePosition:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Leu/davidea/fastscroller/FastScroller;->bubblePosition:I

    .line 128
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerIgnoreTouchesOutsideHandle:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Leu/davidea/fastscroller/FastScroller;->ignoreTouchesOutsideHandle:Z

    .line 129
    sget p2, Leu/davidea/flexibleadapter/R$styleable;->FastScroller_fastScrollerHandleAlwaysVisible:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Leu/davidea/fastscroller/FastScroller;->handleAlwaysVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->init()V

    return-void

    :catchall_0
    move-exception p2

    .line 131
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Leu/davidea/fastscroller/FastScroller;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Leu/davidea/fastscroller/FastScroller;->autoHideScrollbar()V

    return-void
.end method

.method static synthetic access$100(Leu/davidea/fastscroller/FastScroller;)I
    .locals 0

    .line 64
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method private autoHideScrollbar()V
    .locals 1

    .line 570
    iget-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->autoHideEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->hideScrollbar()V

    :cond_0
    return-void
.end method

.method protected static getValueInRange(III)I
    .locals 0

    .line 415
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 416
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addOnScrollStateChangeListener(Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAutoHideDelayInMillis()J
    .locals 2

    .line 485
    iget-wide v0, p0, Leu/davidea/fastscroller/FastScroller;->autoHideDelayInMillis:J

    return-wide v0
.end method

.method protected getTargetPos(F)I
    .locals 3

    .line 375
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 377
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget-object v2, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 382
    :cond_1
    iget v1, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    int-to-float v1, v1

    div-float v2, p1, v1

    :goto_0
    const/4 p1, 0x0

    add-int/lit8 v1, v0, -0x1

    int-to-float v0, v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    .line 384
    invoke-static {p1, v1, v0}, Leu/davidea/fastscroller/FastScroller;->getValueInRange(III)I

    move-result p1

    return p1
.end method

.method protected hideBubble()V
    .locals 1

    .line 455
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAnimator:Leu/davidea/fastscroller/BubbleAnimator;

    invoke-virtual {v0}, Leu/davidea/fastscroller/BubbleAnimator;->hideBubble()V

    return-void
.end method

.method public hideScrollbar()V
    .locals 1

    .line 558
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-virtual {v0}, Leu/davidea/fastscroller/ScrollbarAnimator;->hideScrollbar()V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 1

    .line 138
    iget-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->isInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->isInitialized:Z

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Leu/davidea/fastscroller/FastScroller;->setClipChildren(Z)V

    .line 141
    new-instance v0, Leu/davidea/fastscroller/FastScroller$1;

    invoke-direct {v0, p0}, Leu/davidea/fastscroller/FastScroller$1;-><init>(Leu/davidea/fastscroller/FastScroller;)V

    iput-object v0, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method protected notifyScrollStateChange(Z)V
    .locals 2

    .line 210
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;

    .line 211
    invoke-interface {v1, p1}, Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;->onFastScrollerStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 337
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 338
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 347
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 348
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 295
    iput p2, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    .line 296
    iput p1, p0, Leu/davidea/fastscroller/FastScroller;->width:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 301
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 332
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 326
    :pswitch_0
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 327
    invoke-virtual {p0, v2}, Leu/davidea/fastscroller/FastScroller;->notifyScrollStateChange(Z)V

    .line 328
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->hideBubble()V

    .line 329
    invoke-direct {p0}, Leu/davidea/fastscroller/FastScroller;->autoHideScrollbar()V

    return v1

    .line 308
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    iget-object v4, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    return v2

    .line 310
    :cond_1
    iget-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->ignoreTouchesOutsideHandle:Z

    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v3

    iget-object v4, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :cond_2
    return v2

    .line 315
    :cond_3
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 316
    invoke-virtual {p0, v1}, Leu/davidea/fastscroller/FastScroller;->notifyScrollStateChange(Z)V

    .line 317
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->showBubble()V

    .line 318
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->showScrollbar()V

    .line 320
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 321
    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandlePosition(F)V

    .line 322
    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->setRecyclerViewPosition(F)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoHideDelayInMillis(J)V
    .locals 1

    .line 495
    iput-wide p1, p0, Leu/davidea/fastscroller/FastScroller;->autoHideDelayInMillis:J

    .line 496
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-virtual {v0, p1, p2}, Leu/davidea/fastscroller/ScrollbarAnimator;->setDelayInMillis(J)V

    :cond_0
    return-void
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Leu/davidea/fastscroller/FastScroller;->autoHideEnabled:Z

    return-void
.end method

.method public setBubbleAndHandleColor(I)V
    .locals 7

    .line 250
    iput p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAndHandleColor:I

    .line 253
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-eqz v0, :cond_2

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Leu/davidea/flexibleadapter/R$drawable;->fast_scroller_bubble:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Leu/davidea/flexibleadapter/R$drawable;->fast_scroller_bubble:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 260
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 261
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 262
    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 264
    :cond_1
    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_2
    :goto_1
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 271
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    .line 272
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leu/davidea/flexibleadapter/R$drawable;->fast_scroller_handle:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    goto :goto_2

    .line 274
    :cond_3
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leu/davidea/flexibleadapter/R$drawable;->fast_scroller_handle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 277
    :goto_2
    const-class v2, Landroid/graphics/drawable/StateListDrawable;

    const-string v3, "getStateDrawable"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 278
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 279
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 280
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Exception while setting Bubble and Handle Color"

    .line 283
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Log;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected setBubbleAndHandlePosition(F)V
    .locals 5

    .line 427
    iget v0, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v1, v0

    mul-float v1, v1, p1

    .line 431
    iget v2, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 432
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    iget v2, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr v2, v0

    float-to-int v3, p1

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Leu/davidea/fastscroller/FastScroller;->getValueInRange(III)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setY(F)V

    .line 433
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    .line 435
    iget v2, p0, Leu/davidea/fastscroller/FastScroller;->bubblePosition:I

    if-nez v2, :cond_1

    .line 436
    iget-object v2, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    iget v3, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    sub-int/2addr v3, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    int-to-float v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {v4, v3, p1}, Leu/davidea/fastscroller/FastScroller;->getValueInRange(III)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setY(F)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    iget v0, p0, Leu/davidea/fastscroller/FastScroller;->height:I

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setY(F)V

    .line 439
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    iget v0, p0, Leu/davidea/fastscroller/FastScroller;->width:I

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setX(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBubbleTextCreator(Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;)V
    .locals 0

    .line 197
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleTextCreator:Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 593
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->showScrollbar()V

    .line 596
    invoke-direct {p0}, Leu/davidea/fastscroller/FastScroller;->autoHideScrollbar()V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->hideScrollbar()V

    :goto_0
    return-void
.end method

.method public setHandleAlwaysVisible(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Leu/davidea/fastscroller/FastScroller;->ignoreTouchesOutsideHandle:Z

    return-void
.end method

.method public setIgnoreTouchesOutsideHandle(Z)V
    .locals 0

    .line 509
    iput-boolean p1, p0, Leu/davidea/fastscroller/FastScroller;->ignoreTouchesOutsideHandle:Z

    return-void
.end method

.method public setMinimumScrollThreshold(I)V
    .locals 0

    .line 536
    iput p1, p0, Leu/davidea/fastscroller/FastScroller;->minimumScrollThreshold:I

    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 167
    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 168
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 169
    :cond_0
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Leu/davidea/fastscroller/FastScroller;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 170
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Leu/davidea/fastscroller/FastScroller$2;

    invoke-direct {v1, p0}, Leu/davidea/fastscroller/FastScroller$2;-><init>(Leu/davidea/fastscroller/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 177
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;

    invoke-virtual {p0, v0}, Leu/davidea/fastscroller/FastScroller;->setBubbleTextCreator(Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;)V

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;

    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->addOnScrollStateChangeListener(Leu/davidea/fastscroller/FastScroller$OnScrollStateChangeListener;)V

    .line 182
    :cond_2
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Leu/davidea/fastscroller/FastScroller$3;

    invoke-direct {v0, p0}, Leu/davidea/fastscroller/FastScroller$3;-><init>(Leu/davidea/fastscroller/FastScroller;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected setRecyclerViewPosition(F)V
    .locals 2

    .line 354
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->getTargetPos(F)I

    move-result p1

    .line 357
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 363
    :goto_0
    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->updateBubbleText(I)V

    :cond_1
    return-void
.end method

.method public setViewsToUse(III)V
    .locals 10

    .line 224
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 227
    invoke-virtual {p0, p2}, Leu/davidea/fastscroller/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    .line 228
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    :cond_1
    invoke-virtual {p0, p3}, Leu/davidea/fastscroller/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    .line 230
    sget p1, Leu/davidea/flexibleadapter/R$id;->fast_scroller_bar:I

    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bar:Landroid/view/View;

    .line 233
    new-instance p1, Leu/davidea/fastscroller/BubbleAnimator;

    iget-object p2, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const-wide/16 v0, 0x12c

    invoke-direct {p1, p2, v0, v1}, Leu/davidea/fastscroller/BubbleAnimator;-><init>(Landroid/view/View;J)V

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAnimator:Leu/davidea/fastscroller/BubbleAnimator;

    .line 234
    new-instance p1, Leu/davidea/fastscroller/ScrollbarAnimator;

    iget-object v3, p0, Leu/davidea/fastscroller/FastScroller;->bar:Landroid/view/View;

    iget-object v4, p0, Leu/davidea/fastscroller/FastScroller;->handle:Landroid/widget/ImageView;

    iget-boolean v5, p0, Leu/davidea/fastscroller/FastScroller;->handleAlwaysVisible:Z

    iget-wide v6, p0, Leu/davidea/fastscroller/FastScroller;->autoHideDelayInMillis:J

    const-wide/16 v8, 0x12c

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Leu/davidea/fastscroller/ScrollbarAnimator;-><init>(Landroid/view/View;Landroid/view/View;ZJJ)V

    iput-object p1, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    .line 237
    iget p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAndHandleColor:I

    if-eqz p1, :cond_2

    .line 238
    iget p1, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAndHandleColor:I

    invoke-virtual {p0, p1}, Leu/davidea/fastscroller/FastScroller;->setBubbleAndHandleColor(I)V

    :cond_2
    return-void
.end method

.method protected showBubble()V
    .locals 1

    .line 449
    iget-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->bubbleEnabled:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubbleAnimator:Leu/davidea/fastscroller/BubbleAnimator;

    invoke-virtual {v0}, Leu/davidea/fastscroller/BubbleAnimator;->showBubble()V

    :cond_0
    return-void
.end method

.method public showScrollbar()V
    .locals 1

    .line 546
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->scrollbarAnimator:Leu/davidea/fastscroller/ScrollbarAnimator;

    invoke-virtual {v0}, Leu/davidea/fastscroller/ScrollbarAnimator;->showScrollbar()V

    :cond_0
    return-void
.end method

.method public toggleFastScroller()V
    .locals 1

    .line 581
    invoke-virtual {p0}, Leu/davidea/fastscroller/FastScroller;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Leu/davidea/fastscroller/FastScroller;->setEnabled(Z)V

    return-void
.end method

.method protected updateBubbleText(I)V
    .locals 2

    .line 403
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Leu/davidea/fastscroller/FastScroller;->bubbleEnabled:Z

    if-eqz v0, :cond_1

    .line 404
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubbleTextCreator:Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;

    invoke-interface {v0, p1}, Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;->onCreateBubbleText(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p1, p0, Leu/davidea/fastscroller/FastScroller;->bubble:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
