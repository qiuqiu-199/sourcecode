.class public Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;
.super Landroid/view/View;
.source "ConnectionStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;
    }
.end annotation


# static fields
.field private static final ARC_COUNT:I = 0x3

.field public static final COLOR_CONNECTED:I = -0xc6b451

.field public static final COLOR_DISCONNECTED:I = -0x333334


# instance fields
.field private animators:[Landroid/animation/ValueAnimator;

.field private arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

.field private isConnected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 43
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 47
    invoke-direct {v0, v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 51
    invoke-direct {v0, v1, v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setupAnimations()V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->cancelAnimations()V

    return-void
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    return-object p0
.end method

.method private cancelAnimations()V
    .locals 5

    move-object/16 v2, p0

    .line 145
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isAnimationInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->animators:[Landroid/animation/ValueAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 152
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->animators:[Landroid/animation/ValueAnimator;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->cancelAnimations()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initializeObjects()V
    .locals 15

    move-object/16 v12, p0

    .line 156
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->getWidth()I

    move-result v0

    .line 157
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    .line 160
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v1, 0x3

    .line 162
    new-array v3, v1, [Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    iput-object v3, v12, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 164
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 165
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v6, 0x41200000    # 10.0f

    div-float v6, v0, v6

    .line 167
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-boolean v6, v12, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    if-eqz v6, :cond_0

    const v6, -0xc6b451

    goto :goto_1

    :cond_0
    const v6, -0x333334

    :goto_1
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x40800000    # 4.0f

    div-float v7, v0, v6

    int-to-float v8, v3

    mul-float v8, v8, v0

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    .line 171
    new-instance v6, Landroid/graphics/RectF;

    sub-float v8, v2, v7

    sub-float v9, v4, v7

    const/high16 v10, 0x40400000    # 3.0f

    div-float v10, v0, v10

    add-float/2addr v9, v10

    add-float v11, v2, v7

    add-float/2addr v7, v4

    add-float/2addr v7, v10

    invoke-direct {v6, v8, v9, v11, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 173
    iget-object v7, v12, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    new-instance v8, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    invoke-direct {v8, v5, v6}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;-><init>(Landroid/graphics/Paint;Landroid/graphics/RectF;)V

    aput-object v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    const-string v13, "M_InsDal"

    const-string v14, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->initializeObjects()V"

    invoke-static/range {v13 .. v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isAnimationInitiated()Z
    .locals 4

    move-object/16 v1, p0

    .line 116
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->animators:[Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->isAnimationInitiated()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private resetAnimations()V
    .locals 5

    move-object/16 v2, p0

    .line 101
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isAnimationInitiated()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 102
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$1;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;)V

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->resetAnimations()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setupAnimations()V
    .locals 8

    move-object/16 v5, p0

    .line 120
    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isAnimationInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 124
    new-array v1, v0, [Landroid/animation/ValueAnimator;

    iput-object v1, v5, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->animators:[Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, -0x1

    .line 128
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-wide/16 v3, 0x7d0

    .line 129
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit16 v3, v1, 0x12c

    int-to-long v3, v3

    .line 130
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 131
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;

    invoke-direct {v3, v5, v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$2;-><init>(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 140
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->animators:[Landroid/animation/ValueAnimator;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0xff
        0x64
    .end array-data

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->setupAnimations()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 3

    move-object/16 v0, p0

    .line 83
    invoke-super {v0}, Landroid/view/View;->onDetachedFromWindow()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->onDetachedFromWindow()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->cancelAnimations()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    aget-object v1, v1, v0

    .line 73
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->access$000(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/RectF;

    move-result-object v3

    const/high16 v4, 0x43610000    # 225.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->access$100(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-boolean v9, v8, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isAnimationInitiated()Z

    move-result v0

    if-eq v9, v0, :cond_1

    .line 77
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->resetAnimations()V

    :cond_1
    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->onDraw(Landroid/graphics/Canvas;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    .line 56
    invoke-super/range {v0 .. v5}, Landroid/view/View;->onLayout(ZIIII)V

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->onLayout(ZIIII)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->initializeObjects()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    const/16 v0, 0x96

    .line 63
    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->resolveSize(II)I

    move-result v2

    .line 64
    invoke-static {v0, v3}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->resolveSize(II)I

    move-result v3

    .line 66
    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->setMeasuredDimension(II)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->onMeasure(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setConnected(Z)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 89
    iput-boolean v4, v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->isConnected:Z

    .line 91
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->arcs:[Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;->access$100(Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView$Arc;)Landroid/graphics/Paint;

    move-result-object v1

    if-eqz v4, :cond_0

    const v2, -0xc6b451

    goto :goto_1

    :cond_0
    const v2, -0x333334

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;->invalidate()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/ConnectionStatusView;--->setConnected(Z)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
