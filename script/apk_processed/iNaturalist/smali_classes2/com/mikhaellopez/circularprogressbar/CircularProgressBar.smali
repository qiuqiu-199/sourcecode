.class public Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# instance fields
.field private backgroundColor:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private backgroundStrokeWidth:F

.field private color:I

.field private foregroundPaint:Landroid/graphics/Paint;

.field private progress:F

.field private rectF:Landroid/graphics/RectF;

.field private startAngle:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    .line 21
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikhaellopez/circularprogressbar/R$dimen;->default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    .line 22
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mikhaellopez/circularprogressbar/R$dimen;->default_background_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    const/high16 v0, -0x1000000

    .line 23
    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    const v0, -0x777778

    .line 24
    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I

    const/16 v0, -0x5a

    .line 27
    iput v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->startAngle:I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    :try_start_0
    sget p2, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar_cpb_progress:I

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    .line 46
    sget p2, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar_cpb_progressbar_width:I

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    .line 47
    sget p2, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar_cpb_background_progressbar_width:I

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    .line 49
    sget p2, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar_cpb_progressbar_color:I

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    .line 50
    sget p2, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar_cpb_background_progressbar_color:I

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    .line 57
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :catchall_0
    move-exception p2

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I

    return v0
.end method

.method public getBackgroundProgressBarWidth()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 93
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    return v0
.end method

.method public getProgressBarWidth()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v5, v0, v1

    .line 75
    iget-object v3, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->startAngle:I

    int-to-float v4, v0

    iget-object v7, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result p2

    .line 83
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->getDefaultSize(II)I

    move-result p1

    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 85
    invoke-virtual {p0, p1, p1}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setMeasuredDimension(II)V

    .line 86
    iget p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    iget v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->rectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 139
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundColor:I

    .line 140
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    return-void
.end method

.method public setBackgroundProgressBarWidth(F)V
    .locals 1

    .line 117
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundStrokeWidth:F

    .line 118
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 120
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 128
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->color:I

    .line 129
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    .line 131
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    .line 97
    :goto_0
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->progress:F

    .line 98
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressBarWidth(F)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->strokeWidth:F

    .line 107
    iget-object v0, p0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->foregroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->requestLayout()V

    .line 109
    invoke-virtual {p0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressWithAnimation(F)V
    .locals 1

    const/16 v0, 0x5dc

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setProgressWithAnimation(FI)V

    return-void
.end method

.method public setProgressWithAnimation(FI)V
    .locals 3

    const-string v0, "progress"

    const/4 v1, 0x1

    .line 167
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long v0, p2

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
