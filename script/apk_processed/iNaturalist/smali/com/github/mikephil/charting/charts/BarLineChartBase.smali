.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "BarLineChartBase.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TT;>;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;"
    }
.end annotation


# instance fields
.field private drawCycles:J

.field protected mAutoScaleMinMaxEnabled:Z

.field protected mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

.field protected mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

.field protected mBorderPaint:Landroid/graphics/Paint;

.field protected mClipValuesToContent:Z

.field private mCustomViewPortEnabled:Z

.field protected mDoubleTapToZoomEnabled:Z

.field private mDragXEnabled:Z

.field private mDragYEnabled:Z

.field protected mDrawBorders:Z

.field protected mDrawGridBackground:Z

.field protected mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

.field protected mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

.field protected mGetPositionBuffer:[F

.field protected mGridBackgroundPaint:Landroid/graphics/Paint;

.field protected mHighlightPerDragEnabled:Z

.field protected mKeepPositionOnRotation:Z

.field protected mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field protected mMaxVisibleCount:I

.field protected mMinOffset:F

.field private mOffsetsBuffer:Landroid/graphics/RectF;

.field protected mOnSizeChangedBuffer:[F

.field protected mPinchZoomEnabled:Z

.field protected mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field private mScaleXEnabled:Z

.field private mScaleYEnabled:Z

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field protected mZoomMatrixBuffer:Landroid/graphics/Matrix;

.field protected posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field protected posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 148
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    .line 53
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 82
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 84
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 85
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 97
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 99
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 101
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 v0, 0x41700000    # 15.0f

    .line 106
    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 111
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 v0, 0x0

    .line 183
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 184
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 460
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 590
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 727
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 966
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 1041
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 v0, 0x0

    .line 1366
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    iput-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1385
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1633
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 53
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 82
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 84
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 85
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 97
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 99
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 101
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 p2, 0x41700000    # 15.0f

    .line 106
    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 111
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 v0, 0x0

    .line 183
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 184
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 460
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 590
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 727
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 966
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 1041
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 v0, 0x0

    .line 1366
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1385
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1633
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    .line 53
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 82
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    .line 84
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 85
    iput-boolean p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 97
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 99
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 101
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    const/high16 p2, 0x41700000    # 15.0f

    .line 106
    iput p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 111
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    const-wide/16 p2, 0x0

    .line 183
    iput-wide p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 184
    iput-wide p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 460
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 590
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 727
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 966
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    const/4 p1, 0x2

    .line 1041
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    const-wide/16 p2, 0x0

    .line 1366
    invoke-static {p2, p3, p2, p3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1385
    invoke-static {p2, p3, p2, p3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p2

    iput-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1633
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    return-void
.end method


# virtual methods
.method protected autoScale()V
    .locals 4

    .line 359
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v0

    .line 360
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMaxY(FF)V

    .line 364
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMin()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMax()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    .line 368
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 370
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    .line 369
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 374
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 376
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    return-void
.end method

.method protected calcMinMax()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMin()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMax()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    .line 385
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 386
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    return-void
.end method

.method protected calculateLegendOffsets(Landroid/graphics/RectF;)V
    .locals 4

    const/4 v0, 0x0

    .line 392
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 393
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 394
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 395
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 398
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isDrawInsideEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 439
    :pswitch_0
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 447
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 448
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 447
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 449
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 441
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 442
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 441
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 443
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 402
    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 417
    :pswitch_4
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 425
    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 426
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 425
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 427
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 419
    :pswitch_6
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 420
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 421
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 410
    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 411
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 410
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 412
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 404
    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 405
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float v2, v2, v3

    .line 404
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 406
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public calculateOffsets()V
    .locals 9

    .line 465
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    if-nez v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateLegendOffsets(Landroid/graphics/RectF;)V

    .line 471
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    add-float/2addr v0, v1

    .line 472
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    .line 473
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    .line 474
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v1

    .line 477
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 479
    invoke-virtual {v5}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v5

    .line 478
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v0, v1

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 484
    invoke-virtual {v5}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v5

    .line 483
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v3, v1

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 489
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getYOffset()F

    move-result v5

    add-float/2addr v1, v5

    .line 492
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_2

    add-float/2addr v4, v1

    goto :goto_0

    .line 496
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_3

    add-float/2addr v2, v1

    goto :goto_0

    .line 500
    :cond_3
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v5

    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v5, v6, :cond_4

    add-float/2addr v4, v1

    add-float/2addr v2, v1

    .line 507
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraTopOffset()F

    move-result v1

    add-float/2addr v2, v1

    .line 508
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraRightOffset()F

    move-result v1

    add-float/2addr v3, v1

    .line 509
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraBottomOffset()F

    move-result v1

    add-float/2addr v4, v1

    .line 510
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraLeftOffset()F

    move-result v1

    add-float/2addr v0, v1

    .line 512
    iget v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 514
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 515
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 516
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 517
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 518
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 514
    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 520
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v1, :cond_5

    const-string v1, "MPAndroidChart"

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetLeft: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetTop: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetRight: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", offsetBottom: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MPAndroidChart"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_5
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareOffsetMatrix()V

    .line 528
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareValuePxMatrix()V

    return-void
.end method

.method public centerViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 4

    .line 922
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    .line 923
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v2

    div-float/2addr v1, v2

    .line 925
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    div-float/2addr v0, v3

    add-float/2addr p2, v0

    .line 927
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    .line 925
    invoke-static {v2, p1, p2, p3, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object p1

    .line 929
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object v9, p0

    move-object v0, p3

    .line 944
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 946
    iget-object v1, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v10

    .line 948
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    div-float/2addr v1, v2

    .line 949
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v3, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v3

    div-float/2addr v2, v3

    .line 951
    iget-object v3, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v2, p1, v2

    div-float/2addr v1, v4

    add-float v4, p2, v1

    .line 953
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v6, v0

    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, v0

    move-object v0, v3

    move v1, v2

    move v2, v4

    move-object v3, v5

    move-object v4, p0

    move v5, v6

    move v6, v7

    move-wide v7, p4

    .line 951
    invoke-static/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    move-result-object v0

    .line 955
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 957
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0

    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Unable to execute centerViewToAnimated(...) on API level < 11"

    .line 959
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public centerViewToY(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    .line 903
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    .line 905
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    .line 906
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p2

    const/4 v0, 0x0

    .line 905
    invoke-static {v1, v0, p1, p2, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object p1

    .line 908
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->computeScroll()V

    :cond_0
    return-void
.end method

.method protected drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 2

    .line 536
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public fitScreen()V
    .locals 3

    .line 734
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 735
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->fitScreen(Landroid/graphics/Matrix;)V

    .line 736
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 738
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 739
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method public getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1467
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 1468
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    return-object p1

    .line 1470
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    return-object p1
.end method

.method public getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1446
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method protected getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1

    .line 1017
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 1018
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    return p1

    .line 1020
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    return p1
.end method

.method public getAxisRight()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object v0
.end method

.method public getDataSetByTouchPoint(FF)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;
    .locals 0

    .line 1356
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1358
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDrawListener()Lcom/github/mikephil/charting/listener/OnDrawListener;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    return-object v0
.end method

.method public getEntryByTouchPoint(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 0

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1343
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHighestVisibleX()F
    .locals 4

    .line 1395
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 1396
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1395
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1397
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getLowestVisibleX()F
    .locals 4

    .line 1376
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 1377
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1376
    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1378
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v2, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .line 1075
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .line 1275
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    return v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1

    .line 1621
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1627
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public getPixelForValues(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 0

    .line 1330
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object p1

    return-object p1
.end method

.method public getPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1057
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 1059
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 1061
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    aget p1, p1, v2

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object p1

    return-object p1
.end method

.method public getRendererLeftYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-object v0
.end method

.method public getRendererRightYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .line 1553
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-object v0
.end method

.method public getRendererXAxis()Lcom/github/mikephil/charting/renderer/XAxisRenderer;
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1

    .line 555
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 556
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    return-object p1

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    return-object p1
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1311
    invoke-static {v0, v1, v0, v1}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 1312
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V

    return-object v0
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V
    .locals 0

    .line 1317
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    return-void
.end method

.method public getVisibleXRange()F
    .locals 2

    .line 1407
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    .line 1567
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    .line 1572
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public hasNoDragOffset()Z
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasNoDragOffset()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 4

    .line 153
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 155
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 156
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 158
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 159
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 161
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 162
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 164
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 166
    new-instance v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 168
    new-instance v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xf0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 177
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public isAnyAxisInverted()Z
    .locals 2

    .line 1581
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoScaleMinMaxEnabled()Z
    .locals 1

    .line 1605
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    return v0
.end method

.method public isClipValuesToContentEnabled()Z
    .locals 1

    .line 1250
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    return v0
.end method

.method public isDoubleTapToZoomEnabled()Z
    .locals 1

    .line 1201
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .line 1119
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDragXEnabled()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    return v0
.end method

.method public isDragYEnabled()Z
    .locals 1

    .line 1155
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    return v0
.end method

.method public isDrawBordersEnabled()Z
    .locals 1

    .line 1230
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    return v0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .line 1436
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOut()Z

    move-result v0

    return v0
.end method

.method public isHighlightPerDragEnabled()Z
    .locals 1

    .line 1089
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    return v0
.end method

.method public isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z
    .locals 0

    .line 1475
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result p1

    return p1
.end method

.method public isKeepPositionOnRotation()Z
    .locals 1

    .line 1289
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    return v0
.end method

.method public isPinchZoomEnabled()Z
    .locals 1

    .line 1494
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    return v0
.end method

.method public isScaleXEnabled()Z
    .locals 1

    .line 1178
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    return v0
.end method

.method public isScaleYEnabled()Z
    .locals 1

    .line 1182
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    return v0
.end method

.method public moveViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3

    .line 856
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v1

    div-float/2addr v0, v1

    .line 858
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p2, v0

    .line 859
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p3

    .line 858
    invoke-static {v1, p1, p2, p3, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object p1

    .line 861
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public moveViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object v9, p0

    move-object v0, p3

    .line 877
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 879
    iget-object v1, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v10

    .line 881
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    div-float/2addr v1, v2

    .line 883
    iget-object v2, v9, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v3, p2, v1

    .line 884
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v5, v0

    iget-wide v0, v10, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v6, v0

    move-object v0, v2

    move v1, p1

    move v2, v3

    move-object v3, v4

    move-object v4, p0

    move-wide v7, p4

    .line 883
    invoke-static/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    move-result-object v0

    .line 886
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 888
    invoke-static {v10}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0

    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Unable to execute moveViewToAnimated(...) on API level < 11"

    .line 890
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public moveViewToX(F)V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 840
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    const/4 v2, 0x0

    .line 839
    invoke-static {v0, p1, v2, v1, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object p1

    .line 842
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_1

    .line 331
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing... DATA NOT SET."

    .line 332
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 335
    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_2

    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing..."

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    .line 342
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 344
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 345
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 346
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 348
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_4

    .line 349
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 351
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 188
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 198
    iget-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->autoScale()V

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 212
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 219
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 221
    :cond_6
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 222
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 224
    :cond_7
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 225
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 227
    :cond_8
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 228
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 230
    :cond_9
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 231
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 234
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 235
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 237
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 239
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 240
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 242
    :cond_b
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 243
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 245
    :cond_c
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawGridLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    .line 246
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 249
    :cond_d
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->valuesToHighlight()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 250
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v3, p1, v4}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 253
    :cond_e
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 257
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 258
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 260
    :cond_f
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    .line 261
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 263
    :cond_10
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 264
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 266
    :cond_11
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 267
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 270
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isClipValuesToContentEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 274
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 278
    :cond_12
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 281
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v2, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawDescription(Landroid/graphics/Canvas;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 287
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz p1, :cond_13

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 289
    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 290
    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 291
    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    iget-wide v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    div-long/2addr v0, v4

    const-string p1, "MPAndroidChart"

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Drawtime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, average: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, cycles: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 1639
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1641
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    aput v3, v0, v1

    .line 1643
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    aput v1, v0, v2

    .line 1644
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 1648
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    .line 1650
    iget-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    if-eqz p1, :cond_1

    .line 1653
    sget-object p1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object p1

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 1654
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {p1, p2, p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->centerViewPort([FLandroid/view/View;)V

    goto :goto_0

    .line 1656
    :cond_1
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 563
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 565
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    if-nez v0, :cond_1

    return v1

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method protected prepareOffsetMatrix()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    .line 324
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    return-void
.end method

.method protected prepareValuePxMatrix()V
    .locals 5

    .line 307
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "MPAndroidChart"

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xmax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", xdelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 315
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    return-void
.end method

.method public resetTracking()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 301
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 302
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    return-void
.end method

.method public resetViewPortOffsets()V
    .locals 1

    const/4 v0, 0x0

    .line 1001
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 1002
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    return-void
.end method

.method public resetZoom()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->resetZoom(Landroid/graphics/Matrix;)V

    .line 636
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 641
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 642
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0

    .line 1597
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(F)V
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0

    .line 1240
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0

    .line 1192
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0

    .line 1109
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    .line 1110
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetX(F)V

    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetY(F)V

    return-void
.end method

.method public setDragXEnabled(Z)V
    .locals 0

    .line 1128
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragXEnabled:Z

    return-void
.end method

.method public setDragYEnabled(Z)V
    .locals 0

    .line 1146
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragYEnabled:Z

    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0

    .line 1220
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0

    .line 1210
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0

    .line 1085
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0

    .line 1296
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0

    .line 1071
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    return-void
.end method

.method public setMinOffset(F)V
    .locals 0

    .line 1282
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    return-void
.end method

.method public setOnDrawListener(Lcom/github/mikephil/charting/listener/OnDrawListener;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 1

    .line 1610
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setPaint(Landroid/graphics/Paint;I)V

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1614
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    :goto_0
    return-void
.end method

.method public setPinchZoom(Z)V
    .locals 0

    .line 1485
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    return-void
.end method

.method public setRendererLeftYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0

    .line 1549
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-void
.end method

.method public setRendererRightYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0

    .line 1562
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .line 1165
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 1166
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    return-void
.end method

.method public setScaleMinima(FF)V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    .line 751
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0

    .line 1170
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0

    .line 1174
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    return-void
.end method

.method public setViewPortOffsets(FFFF)V
    .locals 7

    const/4 v0, 0x1

    .line 983
    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 984
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibleXRange(FF)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float/2addr v0, p1

    .line 790
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget p1, p1, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float/2addr p1, p2

    .line 791
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2, v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleX(FF)V

    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float/2addr v0, p1

    .line 764
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float/2addr v0, p1

    .line 777
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleX(F)V

    return-void
.end method

.method public setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 1

    .line 825
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    div-float/2addr v0, p1

    .line 826
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p1

    div-float/2addr p1, p2

    .line 827
    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p2, v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleY(FF)V

    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0

    .line 802
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p2

    div-float/2addr p2, p1

    .line 803
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    return-void
.end method

.method public setVisibleYRangeMinimum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 0

    .line 813
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result p2

    div-float/2addr p2, p1

    .line 814
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    return-void
.end method

.method public setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V
    .locals 0

    .line 1536
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    return-void
.end method

.method public zoom(FFFF)V
    .locals 6

    .line 656
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    neg-float v4, p4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 657
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object p2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 662
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 663
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method public zoom(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 8

    .line 678
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, p5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/github/mikephil/charting/jobs/ZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/ZoomJob;

    move-result-object p1

    .line 679
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zoomAndCenterAnimated(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 17
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p5

    .line 711
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 713
    iget-object v1, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    invoke-virtual {v15, v1, v2, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v13

    .line 715
    iget-object v1, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    iget-object v0, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v4, v0, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v0, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 716
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v7

    iget-object v0, v15, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v8

    iget-wide v5, v13, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v11, v5

    iget-wide v5, v13, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v12, v5

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v16, v13

    move-wide/from16 v13, p6

    .line 715
    invoke-static/range {v0 .. v14}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    move-result-object v0

    .line 718
    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 720
    invoke-static/range {v16 .. v16}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0

    :cond_0
    const-string v0, "MPAndroidChart"

    const-string v1, "Unable to execute zoomAndCenterAnimated(...) on API level < 11"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public zoomIn()V
    .locals 5

    .line 597
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomIn(FFLandroid/graphics/Matrix;)V

    .line 600
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 602
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 607
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 608
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method public zoomOut()V
    .locals 5

    .line 616
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomOut(FFLandroid/graphics/Matrix;)V

    .line 619
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 621
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 626
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 627
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    return-void
.end method

.method public zoomToCenter(FF)V
    .locals 8

    .line 690
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 692
    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 693
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v0, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v5, v0

    move v2, p1

    move v3, p2

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 694
    iget-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, v7, p0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    return-void
.end method
