.class public Lcom/github/mikephil/charting/renderer/PieChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "PieChartRenderer.java"


# instance fields
.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterTextLastBounds:Landroid/graphics/RectF;

.field private mCenterTextLastValue:Ljava/lang/CharSequence;

.field private mCenterTextLayout:Landroid/text/StaticLayout;

.field private mCenterTextPaint:Landroid/text/TextPaint;

.field protected mChart:Lcom/github/mikephil/charting/charts/PieChart;

.field protected mDrawBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mDrawCenterTextPathBuffer:Landroid/graphics/Path;

.field protected mDrawHighlightedRectF:Landroid/graphics/RectF;

.field private mEntryLabelsPaint:Landroid/graphics/Paint;

.field private mHoleCirclePath:Landroid/graphics/Path;

.field protected mHolePaint:Landroid/graphics/Paint;

.field private mInnerRectBuffer:Landroid/graphics/RectF;

.field private mPathBuffer:Landroid/graphics/Path;

.field private mRectBuffer:[Landroid/graphics/RectF;

.field protected mTransparentCirclePaint:Landroid/graphics/Paint;

.field protected mValueLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 61
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    const/4 p2, 0x3

    .line 62
    new-array p2, p2, [Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x0

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v0, 0x1

    aput-object p3, p2, v0

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x2

    aput-object p3, p2, v1

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    .line 154
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    .line 155
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    .line 649
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    .line 692
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 765
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 74
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 76
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    .line 77
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    .line 81
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    const/16 p3, 0x69

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    .line 86
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    .line 87
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 89
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41500000    # 13.0f

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-static {p3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    .line 99
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F
    .locals 18

    move-object/from16 v0, p1

    const/high16 v6, 0x40000000    # 2.0f

    div-float v7, p7, v6

    add-float v7, p6, v7

    .line 168
    iget v8, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v4, p6, p7

    const v5, 0x3c8efa35

    mul-float v4, v4, v5

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v4, v11

    mul-float v4, v4, p2

    add-float/2addr v8, v4

    .line 169
    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v9, v9, p2

    add-float/2addr v4, v9

    .line 172
    iget v9, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v7, v7, v5

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    mul-float v5, v5, p2

    add-float/2addr v9, v5

    .line 173
    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    mul-float v5, v5, p2

    add-float/2addr v0, v5

    sub-float v5, v8, p4

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 177
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-float v5, v4, p5

    float-to-double v14, v5

    .line 178
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 176
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v10, v12

    move/from16 v5, p3

    float-to-double v14, v5

    const-wide v16, 0x4066800000000000L    # 180.0

    .line 183
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v16, v16, v14

    div-double v16, v16, v12

    const-wide v14, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v16, v16, v14

    .line 184
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    mul-double v10, v10, v14

    double-to-float v5, v10

    sub-float v1, p2, v5

    float-to-double v10, v1

    add-float v8, v8, p4

    div-float/2addr v8, v6

    sub-float/2addr v9, v8

    float-to-double v1, v9

    .line 191
    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-float v4, v4, p5

    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    float-to-double v3, v0

    .line 192
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 190
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v0

    double-to-float v0, v10

    return v0
.end method

.method protected drawCenterText(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 699
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 701
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawCenterTextEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 703
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 704
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v13

    .line 706
    iget v3, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v13, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v5

    .line 707
    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget v6, v13, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v5, v6

    .line 709
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 710
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v8

    div-float/2addr v8, v7

    mul-float v6, v6, v8

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 711
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 713
    :goto_0
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v9, 0x0

    aget-object v14, v8, v9

    sub-float v8, v3, v6

    .line 714
    iput v8, v14, Landroid/graphics/RectF;->left:F

    sub-float v8, v5, v6

    .line 715
    iput v8, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    .line 716
    iput v3, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    .line 717
    iput v5, v14, Landroid/graphics/RectF;->bottom:F

    .line 718
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRectBuffer:[Landroid/graphics/RectF;

    const/4 v5, 0x1

    aget-object v15, v3, v5

    .line 719
    invoke-virtual {v15, v14}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 721
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterTextRadiusPercent()F

    move-result v3

    div-float/2addr v3, v7

    float-to-double v5, v3

    const-wide/16 v7, 0x0

    const/high16 v16, 0x40000000    # 2.0f

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    .line 724
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float v6, v6, v3

    sub-float/2addr v5, v6

    div-float v5, v5, v16

    .line 725
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float v7, v7, v3

    sub-float/2addr v6, v7

    div-float v6, v6, v16

    .line 723
    invoke-virtual {v15, v5, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 729
    :cond_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v15, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v13

    goto :goto_2

    .line 732
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 733
    iput-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastValue:Ljava/lang/CharSequence;

    .line 735
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLastBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 738
    new-instance v12, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    float-to-double v8, v3

    .line 740
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-int v8, v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object v3, v12

    move-object/from16 v18, v13

    move-object v13, v12

    move/from16 v12, v17

    invoke-direct/range {v3 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v13, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    .line 745
    :goto_2
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 747
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_4

    .line 749
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawCenterTextPathBuffer:Landroid/graphics/Path;

    .line 750
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 751
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v14, v5}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 752
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 755
    :cond_4
    iget v4, v15, Landroid/graphics/RectF;->left:F

    iget v5, v15, Landroid/graphics/RectF;->top:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v6, v3

    div-float v6, v6, v16

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 756
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 760
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 761
    invoke-static/range {v18 .. v18}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_5
    return-void
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v0

    float-to-int v0, v0

    .line 127
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v1

    float-to-int v1, v1

    .line 129
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_2

    :cond_1
    if-lez v0, :cond_5

    if-lez v1, :cond_5

    .line 136
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    .line 138
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    :cond_2
    const/4 v0, 0x0

    .line 143
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 145
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    .line 147
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 149
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 150
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)V
    .locals 35

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 219
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v10

    .line 221
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v11

    .line 222
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v12

    .line 224
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v13

    .line 226
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v14

    .line 227
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v15

    .line 228
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 229
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v6

    .line 230
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    :goto_0
    const/16 v18, 0x0

    if-eqz v17, :cond_1

    .line 231
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 232
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v6

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v0, v14, :cond_3

    .line 238
    invoke-interface {v9, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-gt v3, v5, :cond_4

    const/16 v19, 0x0

    goto :goto_3

    .line 243
    :cond_4
    invoke-virtual {v8, v9}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v0

    move/from16 v19, v0

    :goto_3
    const/4 v2, 0x0

    const/16 v20, 0x0

    :goto_4
    if-ge v2, v14, :cond_15

    .line 247
    aget v21, v15, v2

    .line 250
    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 255
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->needsHighlight(I)Z

    move-result v0

    if-nez v0, :cond_14

    cmpl-float v0, v19, v18

    if-lez v0, :cond_5

    const/high16 v0, 0x43340000    # 180.0f

    cmpg-float v0, v21, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 259
    :goto_5
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v9, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v23, 0x3c8efa35

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    mul-float v1, v6, v23

    div-float v1, v19, v1

    :goto_6
    const/high16 v22, 0x40000000    # 2.0f

    div-float v24, v1, v22

    add-float v24, v20, v24

    mul-float v24, v24, v12

    add-float v9, v10, v24

    sub-float v1, v21, v1

    mul-float v1, v1, v12

    cmpg-float v24, v1, v18

    if-gez v24, :cond_7

    const/4 v1, 0x0

    .line 270
    :cond_7
    iget-object v5, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 272
    iget v5, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v26, v2

    mul-float v2, v9, v23

    move/from16 v27, v3

    float-to-double v2, v2

    move/from16 v28, v14

    move-object/from16 v29, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v6

    add-float/2addr v5, v14

    .line 273
    iget v14, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v6

    add-float/2addr v14, v2

    const/high16 v15, 0x43b40000    # 360.0f

    cmpl-float v2, v1, v15

    if-ltz v2, :cond_8

    rem-float v2, v1, v15

    .line 275
    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8

    .line 277
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v30, v11

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v15, v6, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_7

    :cond_8
    move/from16 v30, v11

    .line 280
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v5, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v13, v9, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 290
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v3, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v3, v4

    iget v11, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v11, v4

    iget v15, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v15, v4

    move/from16 v31, v1

    iget v1, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v11, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v17, :cond_11

    cmpl-float v1, v4, v18

    if-gtz v1, :cond_a

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move v15, v4

    move/from16 v24, v6

    move/from16 v34, v10

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/high16 v1, 0x43b40000    # 360.0f

    const/16 v25, 0x1

    move-object v10, v7

    goto/16 :goto_d

    :cond_a
    :goto_8
    if-eqz v0, :cond_c

    mul-float v3, v21, v12

    move-object/from16 v0, p0

    move/from16 v11, v31

    move-object v1, v7

    move/from16 v15, v26

    move v2, v6

    move-object/from16 v32, v13

    move/from16 v13, v27

    move/from16 v33, v15

    move v15, v4

    move v4, v5

    const/4 v8, 0x1

    move v5, v14

    move/from16 v24, v6

    move v6, v9

    move-object v9, v7

    move v7, v11

    .line 301
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    cmpg-float v1, v0, v18

    if-gez v1, :cond_b

    neg-float v0, v0

    .line 311
    :cond_b
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_9

    :cond_c
    move v15, v4

    move/from16 v24, v6

    move-object v9, v7

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/4 v8, 0x1

    :goto_9
    if-eq v13, v8, :cond_e

    cmpl-float v0, v4, v18

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    mul-float v0, v4, v23

    div-float v0, v19, v0

    goto :goto_b

    :cond_e
    :goto_a
    const/4 v0, 0x0

    :goto_b
    div-float v1, v0, v22

    add-float v1, v20, v1

    mul-float v1, v1, v12

    add-float/2addr v1, v10

    sub-float v0, v21, v0

    mul-float v0, v0, v12

    cmpg-float v2, v0, v18

    if-gez v2, :cond_f

    const/4 v0, 0x0

    :cond_f
    add-float/2addr v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    cmpl-float v3, v11, v2

    if-ltz v3, :cond_10

    rem-float v2, v11, v2

    .line 324
    sget v3, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    move-object/from16 v8, p0

    const/16 v25, 0x1

    .line 326
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v34, v10

    goto :goto_c

    :cond_10
    move-object/from16 v8, p0

    const/16 v25, 0x1

    .line 329
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v9, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v5, v1, v23

    float-to-double v5, v5

    move/from16 v34, v10

    .line 330
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v7, v10

    mul-float v7, v7, v4

    add-float/2addr v3, v7

    iget v7, v9, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 331
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v7, v4

    .line 329
    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v0, v0

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_c
    move-object v10, v9

    goto :goto_e

    :cond_11
    move v15, v4

    move/from16 v24, v6

    move/from16 v34, v10

    move-object/from16 v32, v13

    move/from16 v33, v26

    move/from16 v13, v27

    move/from16 v11, v31

    const/16 v25, 0x1

    move-object v10, v7

    const/high16 v1, 0x43b40000    # 360.0f

    :goto_d
    rem-float v1, v11, v1

    .line 341
    sget v2, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    if-eqz v0, :cond_12

    div-float v1, v11, v22

    add-float v22, v9, v1

    mul-float v3, v21, v12

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v24

    move v4, v5

    move v5, v14

    move v6, v9

    move v7, v11

    .line 347
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v0

    .line 356
    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v2, v22, v23

    float-to-double v2, v2

    .line 357
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v1, v4

    .line 358
    iget v4, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 359
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v4, v0

    .line 361
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_e

    .line 366
    :cond_12
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v10, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v10, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    :cond_13
    :goto_e
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 376
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_f

    :cond_14
    move/from16 v33, v2

    move/from16 v24, v6

    move/from16 v34, v10

    move/from16 v30, v11

    move-object/from16 v32, v13

    move/from16 v28, v14

    move-object/from16 v29, v15

    const/16 v25, 0x1

    move v13, v3

    move v15, v4

    move-object v10, v7

    :goto_f
    mul-float v21, v21, v30

    add-float v20, v20, v21

    add-int/lit8 v2, v33, 0x1

    move-object v7, v10

    move v3, v13

    move v4, v15

    move/from16 v6, v24

    move/from16 v14, v28

    move-object/from16 v15, v29

    move/from16 v11, v30

    move-object/from16 v13, v32

    move/from16 v10, v34

    const/4 v5, 0x1

    move-object/from16 v9, p2

    goto/16 :goto_4

    :cond_15
    move-object v10, v7

    .line 383
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method protected drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3

    .line 644
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawHole(Landroid/graphics/Canvas;)V

    .line 645
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 646
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawCenterText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 769
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v10

    .line 770
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    .line 773
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v12

    .line 775
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v13

    .line 776
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v14

    .line 777
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v15

    .line 778
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v16

    .line 779
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawSlicesUnderHoleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    const/16 v18, 0x0

    :goto_0
    const/4 v6, 0x0

    if-eqz v18, :cond_1

    .line 780
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 781
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, v16

    move v5, v0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 784
    :goto_1
    iget-object v4, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawHighlightedRectF:Landroid/graphics/RectF;

    .line 785
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v3, 0x0

    .line 787
    :goto_2
    array-length v0, v9

    if-ge v3, v0, :cond_1a

    .line 790
    aget-object v0, v9, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 792
    array-length v1, v13

    if-lt v0, v1, :cond_3

    :cond_2
    :goto_3
    move v9, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move/from16 v32, v10

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    const/16 v19, 0x0

    goto/16 :goto_11

    .line 795
    :cond_3
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    aget-object v2, v9, v3

    .line 797
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    .line 796
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 799
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 802
    :cond_4
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, v2, :cond_6

    .line 806
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v21

    check-cast v21, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    sget v22, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    const/4 v2, 0x1

    const/16 v21, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v0, -0x1

    .line 814
    aget v2, v14, v2

    mul-float v6, v2, v10

    move/from16 v21, v6

    const/4 v2, 0x1

    :goto_5
    if-gt v7, v2, :cond_8

    const/16 v22, 0x0

    goto :goto_6

    .line 816
    :cond_8
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v6

    move/from16 v22, v6

    .line 818
    :goto_6
    aget v23, v13, v0

    .line 821
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v2

    add-float v6, v16, v2

    move/from16 v24, v3

    .line 823
    iget-object v3, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getCircleBox()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    neg-float v2, v2

    .line 824
    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v2, 0x0

    cmpl-float v3, v22, v2

    if-lez v3, :cond_9

    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_9

    const/16 v25, 0x1

    goto :goto_7

    :cond_9
    const/16 v25, 0x0

    .line 828
    :goto_7
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    const v26, 0x3c8efa35

    const/4 v3, 0x1

    if-ne v7, v3, :cond_a

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    mul-float v0, v16, v26

    div-float v0, v22, v0

    :goto_8
    if-ne v7, v3, :cond_b

    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    mul-float v1, v6, v26

    div-float v1, v22, v1

    :goto_9
    const/high16 v20, 0x40000000    # 2.0f

    div-float v2, v0, v20

    add-float v2, v21, v2

    mul-float v2, v2, v11

    add-float v27, v12, v2

    sub-float v0, v23, v0

    mul-float v0, v0, v11

    const/16 v19, 0x0

    cmpg-float v2, v0, v19

    if-gez v2, :cond_c

    const/16 v28, 0x0

    goto :goto_a

    :cond_c
    move/from16 v28, v0

    :goto_a
    div-float v0, v1, v20

    add-float v0, v21, v0

    mul-float v0, v0, v11

    add-float/2addr v0, v12

    sub-float v1, v23, v1

    mul-float v1, v1, v11

    cmpg-float v2, v1, v19

    if-gez v2, :cond_d

    const/4 v1, 0x0

    .line 850
    :cond_d
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/high16 v29, 0x43b40000    # 360.0f

    cmpl-float v2, v28, v29

    if-ltz v2, :cond_e

    rem-float v2, v28, v29

    .line 852
    sget v30, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v2, v2, v30

    if-gtz v2, :cond_e

    .line 854
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v31, v5

    move/from16 v32, v10

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    goto :goto_b

    .line 857
    :cond_e
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move/from16 v31, v5

    mul-float v5, v0, v26

    move/from16 v32, v10

    float-to-double v9, v5

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    .line 858
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v5, v13

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    iget v5, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 859
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float v6, v6, v9

    add-float/2addr v5, v6

    .line 857
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 861
    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_b
    if-eqz v25, :cond_f

    mul-float v3, v23, v11

    .line 870
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v1, v27, v26

    float-to-double v1, v1

    .line 874
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v16

    add-float/2addr v5, v0

    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 875
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v16

    add-float v6, v0, v1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v9, v24

    const/4 v10, 0x1

    move-object v13, v4

    move v4, v5

    move/from16 v14, v31

    move v5, v6

    move/from16 v6, v27

    move v10, v7

    move-object/from16 v35, v13

    const/4 v13, 0x1

    move/from16 v7, v28

    .line 871
    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->calculateMinimumRadiusForSpacedSlice(Lcom/github/mikephil/charting/utils/MPPointF;FFFFFF)F

    move-result v6

    goto :goto_c

    :cond_f
    move-object/from16 v35, v4

    move v10, v7

    move/from16 v9, v24

    move/from16 v14, v31

    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 881
    :goto_c
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    sub-float/2addr v1, v14

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sub-float/2addr v2, v14

    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v3, v14

    iget v4, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v18, :cond_17

    cmpl-float v0, v14, v19

    if-gtz v0, :cond_10

    if-eqz v25, :cond_17

    :cond_10
    if-eqz v25, :cond_12

    cmpg-float v0, v6, v19

    if-gez v0, :cond_11

    neg-float v6, v6

    .line 896
    :cond_11
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_d

    :cond_12
    move v5, v14

    :goto_d
    if-eq v10, v13, :cond_14

    cmpl-float v0, v5, v19

    if-nez v0, :cond_13

    goto :goto_e

    :cond_13
    mul-float v0, v5, v26

    div-float v6, v22, v0

    goto :goto_f

    :cond_14
    :goto_e
    const/4 v6, 0x0

    :goto_f
    div-float v0, v6, v20

    add-float v21, v21, v0

    mul-float v21, v21, v11

    add-float v21, v12, v21

    sub-float v23, v23, v6

    mul-float v6, v23, v11

    cmpg-float v0, v6, v19

    if-gez v0, :cond_15

    const/4 v6, 0x0

    :cond_15
    add-float v0, v21, v6

    cmpl-float v1, v28, v29

    if-ltz v1, :cond_16

    rem-float v28, v28, v29

    .line 909
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpg-float v1, v28, v1

    if-gtz v1, :cond_16

    .line 911
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move/from16 v36, v14

    goto :goto_10

    .line 914
    :cond_16
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v3, v0, v26

    float-to-double v3, v3

    move/from16 v36, v14

    .line 915
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v7, v13

    mul-float v7, v7, v5

    add-float/2addr v2, v7

    iget v7, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 916
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v5, v5, v3

    add-float/2addr v7, v5

    .line 914
    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 918
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mInnerRectBuffer:Landroid/graphics/RectF;

    neg-float v3, v6

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_10

    :cond_17
    move/from16 v36, v14

    rem-float v0, v28, v29

    .line 926
    sget v1, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    if-eqz v25, :cond_18

    div-float v28, v28, v20

    add-float v27, v27, v28

    .line 931
    iget v0, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    mul-float v1, v27, v26

    float-to-double v1, v1

    .line 932
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v6

    add-float/2addr v0, v3

    .line 933
    iget v3, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 934
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v6, v6, v1

    add-float/2addr v3, v6

    .line 936
    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_10

    .line 942
    :cond_18
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget v1, v15, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v2, v15, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 951
    :cond_19
    :goto_10
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 953
    iget-object v0, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mPathBuffer:Landroid/graphics/Path;

    iget-object v2, v8, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_11
    add-int/lit8 v3, v9, 0x1

    move/from16 v10, v32

    move-object/from16 v13, v33

    move-object/from16 v14, v34

    move-object/from16 v4, v35

    move/from16 v5, v36

    const/4 v6, 0x0

    move-object/from16 v9, p2

    goto/16 :goto_2

    .line 956
    :cond_1a
    invoke-static {v15}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method protected drawHole(Landroid/graphics/Canvas;)V
    .locals 7

    .line 657
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_2

    .line 659
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result p1

    .line 660
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float v0, v0, p1

    .line 661
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 663
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 665
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 671
    :cond_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    .line 672
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 674
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 675
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getTransparentCircleRadius()F

    move-result v4

    div-float/2addr v4, v1

    mul-float p1, p1, v4

    .line 677
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    int-to-float v4, v3

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 680
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 681
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5, p1, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 682
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v4, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 683
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHoleCirclePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 686
    iget-object p1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 688
    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    :cond_2
    return-void
.end method

.method protected drawRoundedSlices(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 966
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawRoundedSlicesEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 969
    :cond_0
    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    .line 971
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 974
    :cond_1
    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    .line 975
    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v3

    .line 977
    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    .line 978
    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v5

    .line 981
    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v6

    mul-float v6, v6, v5

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    sub-float v6, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 983
    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v7

    .line 984
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v8

    const/4 v9, 0x0

    .line 986
    :goto_0
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 988
    aget v10, v7, v9

    .line 990
    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 993
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/github/mikephil/charting/utils/Utils;->FLOAT_EPSILON:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    sub-float v11, v5, v6

    float-to-double v11, v11

    add-float v13, v8, v10

    mul-float v13, v13, v3

    float-to-double v13, v13

    .line 996
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v15, v11

    move/from16 v17, v3

    iget v3, v4, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    move-object/from16 v18, v7

    move/from16 v19, v8

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v15

    double-to-float v3, v7

    .line 999
    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v7

    iget v7, v4, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v7

    double-to-float v7, v11

    .line 1002
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1003
    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v11, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v7, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    move/from16 v17, v3

    move-object/from16 v18, v7

    move/from16 v19, v8

    :goto_1
    mul-float v10, v10, v2

    add-float v8, v19, v10

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    move-object/from16 v7, v18

    goto :goto_0

    .line 1008
    :cond_3
    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 53

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 389
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v11

    .line 392
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v12

    .line 393
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v13

    .line 394
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDrawAngles()[F

    move-result-object v14

    .line 395
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getAbsoluteAngles()[F

    move-result-object v15

    .line 397
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v16

    .line 398
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v17

    .line 400
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v0

    const/high16 v18, 0x42c80000    # 100.0f

    div-float v19, v0, v18

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v12, v0

    const v1, 0x40666666    # 3.6f

    mul-float v0, v0, v1

    .line 403
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v1

    const/high16 v20, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    mul-float v0, v12, v19

    sub-float v0, v12, v0

    div-float v0, v0, v20

    :cond_0
    sub-float v21, v12, v0

    .line 409
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/github/mikephil/charting/data/PieData;

    .line 410
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v8

    .line 412
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v23

    .line 414
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawEntryLabelsEnabled()Z

    move-result v24

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40a00000    # 5.0f

    .line 421
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    const/16 v26, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 423
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_1f

    .line 425
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 427
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawValuesEnabled()Z

    move-result v27

    if-nez v27, :cond_1

    if-nez v24, :cond_1

    move/from16 v34, v7

    move-object/from16 v38, v8

    move/from16 v50, v12

    move/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v43, v15

    goto/16 :goto_13

    .line 432
    :cond_1
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getXValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v5

    .line 433
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYValuePosition()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    move-result-object v4

    .line 436
    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 438
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v2, "Q"

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 439
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    add-float v28, v1, v2

    .line 441
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v29

    .line 443
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v3

    .line 445
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v1, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineWidth()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 448
    invoke-virtual {v9, v6}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F

    move-result v30

    .line 450
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    .line 451
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 452
    iget v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, v2, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    move/from16 v31, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1e

    .line 456
    invoke-interface {v6, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v31, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v31, -0x1

    .line 461
    aget v0, v15, v0

    mul-float v0, v0, v16

    .line 463
    :goto_2
    aget v33, v14, v31

    const v34, 0x3c8efa35

    mul-float v35, v21, v34

    div-float v35, v30, v35

    div-float v35, v35, v20

    sub-float v33, v33, v35

    div-float v33, v33, v20

    add-float v0, v0, v33

    mul-float v0, v0, v17

    add-float/2addr v0, v13

    move-object/from16 v36, v2

    .line 473
    iget-object v2, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->isUsePercentValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v2

    div-float v2, v2, v23

    mul-float v2, v2, v18

    :goto_3
    move/from16 v33, v2

    goto :goto_4

    .line 474
    :cond_3
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v2

    goto :goto_3

    :goto_4
    mul-float v2, v0, v34

    move/from16 v37, v3

    float-to-double v2, v2

    move/from16 v39, v7

    move-object/from16 v38, v8

    .line 476
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v8, v7

    move/from16 v40, v13

    move-object/from16 v41, v14

    .line 477
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    if-eqz v24, :cond_4

    .line 479
    sget-object v14, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v5, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    if-eqz v27, :cond_5

    .line 481
    sget-object v7, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->OUTSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v4, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    if-eqz v24, :cond_6

    move-object/from16 v43, v15

    .line 483
    sget-object v15, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v5, v15, :cond_7

    const/4 v15, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v43, v15

    :cond_7
    const/4 v15, 0x0

    :goto_7
    if-eqz v27, :cond_8

    move-object/from16 v44, v5

    .line 485
    sget-object v5, Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;->INSIDE_SLICE:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    if-ne v4, v5, :cond_9

    const/16 v42, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v44, v5

    :cond_9
    const/16 v42, 0x0

    :goto_8
    if-nez v14, :cond_b

    if-eqz v7, :cond_a

    goto :goto_9

    :cond_a
    move-object v10, v6

    move/from16 v50, v12

    move-object/from16 v51, v36

    move/from16 v36, v37

    move/from16 v34, v39

    move v12, v1

    move-object/from16 v37, v4

    move/from16 v39, v8

    goto/16 :goto_e

    .line 490
    :cond_b
    :goto_9
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1Length()F

    move-result v5

    .line 491
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart2Length()F

    move-result v34

    .line 492
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLinePart1OffsetPercentage()F

    move-result v35

    div-float v35, v35, v18

    move-object/from16 v45, v4

    .line 499
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    mul-float v4, v12, v19

    sub-float v46, v12, v4

    mul-float v46, v46, v35

    add-float v46, v46, v4

    goto :goto_a

    :cond_c
    mul-float v46, v12, v35

    .line 506
    :goto_a
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isValueLineVariableLength()Z

    move-result v4

    if-eqz v4, :cond_d

    mul-float v34, v34, v21

    .line 507
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v34, v34, v2

    goto :goto_b

    :cond_d
    mul-float v34, v34, v21

    :goto_b
    mul-float v2, v46, v8

    .line 511
    iget v3, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, v3

    mul-float v46, v46, v13

    .line 512
    iget v3, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v3, v46, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v5, v4

    mul-float v5, v5, v21

    mul-float v4, v5, v8

    move/from16 v47, v8

    .line 514
    iget v8, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v8, v4

    mul-float v5, v5, v13

    .line 515
    iget v4, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v35, v5, v4

    float-to-double v4, v0

    const-wide v48, 0x4076800000000000L    # 360.0

    .line 517
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    rem-double v4, v4, v48

    const-wide v48, 0x4056800000000000L    # 90.0

    cmpl-double v0, v4, v48

    if-ltz v0, :cond_f

    const-wide v48, 0x4070e00000000000L    # 270.0

    cmpg-double v0, v4, v48

    if-gtz v0, :cond_f

    sub-float v0, v8, v34

    .line 521
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v14, :cond_e

    .line 524
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_e
    sub-float v4, v0, v25

    move/from16 v34, v0

    move v5, v4

    goto :goto_c

    :cond_f
    add-float v34, v8, v34

    .line 531
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v14, :cond_10

    .line 534
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_10
    add-float v0, v34, v25

    move v5, v0

    .line 540
    :goto_c
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueLineColor()I

    move-result v0

    const v4, 0x112233

    if-eq v0, v4, :cond_12

    .line 542
    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isUsingSliceColorAsValueLineColor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 543
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    invoke-interface {v6, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 546
    :cond_11
    iget-object v4, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v50, v12

    move v12, v1

    move v1, v2

    move-object/from16 v51, v36

    move v2, v3

    move/from16 v36, v37

    move v3, v8

    move-object/from16 v37, v45

    move-object/from16 v45, v4

    move/from16 v4, v35

    move/from16 v52, v5

    move-object/from16 v5, v45

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 547
    iget-object v5, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValueLinePaint:Landroid/graphics/Paint;

    move v1, v8

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_12
    move/from16 v52, v5

    move/from16 v50, v12

    move-object/from16 v51, v36

    move/from16 v36, v37

    move-object/from16 v37, v45

    move v12, v1

    :goto_d
    if-eqz v14, :cond_14

    if-eqz v7, :cond_14

    const/4 v5, 0x0

    .line 560
    invoke-interface {v6, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v33

    move-object/from16 v4, v32

    move-object v14, v6

    move/from16 v6, v52

    move/from16 v34, v39

    move/from16 v7, v35

    move/from16 v39, v47

    .line 553
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 562
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_13

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 563
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    add-float v1, v35, v28

    move/from16 v6, v52

    invoke-virtual {v9, v10, v0, v6, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_13
    move-object v10, v14

    goto :goto_e

    :cond_14
    move-object v8, v6

    move/from16 v34, v39

    move/from16 v39, v47

    move/from16 v6, v52

    if-eqz v14, :cond_16

    .line 567
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_15

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 568
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    div-float v1, v28, v20

    add-float v1, v35, v1

    invoke-virtual {v9, v10, v0, v6, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    :cond_15
    move-object v10, v8

    goto :goto_e

    :cond_16
    if-eqz v7, :cond_15

    const/4 v5, 0x0

    div-float v0, v28, v20

    add-float v7, v35, v0

    .line 573
    invoke-interface {v8, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v33

    move-object/from16 v4, v32

    move-object v10, v8

    move v8, v14

    .line 572
    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    :goto_e
    if-nez v15, :cond_18

    if-eqz v42, :cond_17

    goto :goto_f

    :cond_17
    move-object v14, v10

    move-object/from16 v10, p1

    goto/16 :goto_11

    :cond_18
    :goto_f
    mul-float v8, v21, v39

    .line 579
    iget v0, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v14, v8, v0

    mul-float v0, v21, v13

    .line 580
    iget v1, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v35, v0, v1

    .line 582
    iget-object v0, v9, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz v15, :cond_1b

    if-eqz v42, :cond_1b

    const/4 v5, 0x0

    .line 587
    invoke-interface {v10, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v33

    move-object/from16 v4, v32

    move v6, v14

    move/from16 v7, v35

    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 589
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_19

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 590
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    add-float v1, v35, v28

    move-object v8, v10

    move-object/from16 v10, p1

    invoke-virtual {v9, v10, v0, v14, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10

    :cond_19
    move-object v8, v10

    move-object/from16 v10, p1

    :cond_1a
    :goto_10
    move-object v14, v8

    goto :goto_11

    :cond_1b
    move-object v8, v10

    move-object/from16 v10, p1

    if-eqz v15, :cond_1c

    .line 594
    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/data/PieData;->getEntryCount()I

    move-result v0

    if-ge v12, v0, :cond_1a

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 595
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    div-float v1, v28, v20

    add-float v1, v35, v1

    invoke-virtual {v9, v10, v0, v14, v1}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawEntryLabel(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_10

    :cond_1c
    if-eqz v42, :cond_1a

    const/4 v5, 0x0

    div-float v0, v28, v20

    add-float v7, v35, v0

    .line 599
    invoke-interface {v8, v12}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getValueTextColor(I)I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move/from16 v3, v33

    move-object/from16 v4, v32

    move v6, v14

    move-object v14, v8

    move v8, v15

    invoke-virtual/range {v0 .. v8}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 603
    :goto_11
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isDrawIconsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 605
    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/data/PieEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v6, v51

    .line 607
    iget v0, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v0, v21, v0

    mul-float v0, v0, v39

    iget v2, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v0, v2

    .line 608
    iget v2, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v21, v2

    mul-float v2, v2, v13

    iget v3, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float/2addr v2, v3

    .line 609
    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, v3

    float-to-int v3, v0

    float-to-int v4, v2

    .line 616
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 617
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    move-object/from16 v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    .line 611
    invoke-static/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_12

    :cond_1d
    move-object/from16 v6, v51

    :goto_12
    add-int/lit8 v31, v31, 0x1

    add-int/lit8 v1, v12, 0x1

    move-object v2, v6

    move-object v6, v14

    move/from16 v7, v34

    move/from16 v3, v36

    move-object/from16 v4, v37

    move-object/from16 v8, v38

    move/from16 v13, v40

    move-object/from16 v14, v41

    move-object/from16 v15, v43

    move-object/from16 v5, v44

    move/from16 v12, v50

    goto/16 :goto_1

    :cond_1e
    move-object v6, v2

    move/from16 v34, v7

    move-object/from16 v38, v8

    move/from16 v50, v12

    move/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v43, v15

    .line 623
    invoke-static {v6}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    move/from16 v0, v31

    :goto_13
    add-int/lit8 v7, v34, 0x1

    move-object/from16 v8, v38

    move/from16 v13, v40

    move-object/from16 v14, v41

    move-object/from16 v15, v43

    move/from16 v12, v50

    goto/16 :goto_0

    .line 625
    :cond_1f
    invoke-static {v11}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 626
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getPaintCenterText()Landroid/text/TextPaint;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mCenterTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintEntryLabels()Landroid/graphics/Paint;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mEntryLabelsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintHole()Landroid/graphics/Paint;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mHolePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintTransparentCircle()Landroid/graphics/Paint;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mTransparentCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected getSliceSpace(Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;)F
    .locals 3

    .line 205
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->isAutomaticallyDisableSliceSpacingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p1

    return p1

    .line 208
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getSmallestContentExtension()F

    move-result v1

    div-float/2addr v0, v1

    .line 209
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getYMin()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSliceSpace()F

    move-result p1

    :goto_0
    return p1
.end method

.method public initBuffers()V
    .locals 0

    return-void
.end method

.method public releaseBitmap()V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1017
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1022
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1025
    iput-object v1, p0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->mDrawBitmap:Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method
