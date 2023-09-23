.class public abstract Lcom/github/mikephil/charting/components/AxisBase;
.super Lcom/github/mikephil/charting/components/ComponentBase;
.source "AxisBase.java"


# instance fields
.field private mAxisLineColor:I

.field private mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mAxisLineWidth:F

.field public mAxisMaximum:F

.field public mAxisMinimum:F

.field public mAxisRange:F

.field protected mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

.field protected mCenterAxisLabels:Z

.field public mCenteredEntries:[F

.field protected mCustomAxisMax:Z

.field protected mCustomAxisMin:Z

.field public mDecimals:I

.field protected mDrawAxisLine:Z

.field protected mDrawGridLines:Z

.field protected mDrawGridLinesBehindData:Z

.field protected mDrawLabels:Z

.field protected mDrawLimitLineBehindData:Z

.field public mEntries:[F

.field public mEntryCount:I

.field protected mForceLabels:Z

.field protected mGranularity:F

.field protected mGranularityEnabled:Z

.field private mGridColor:I

.field private mGridDashPathEffect:Landroid/graphics/DashPathEffect;

.field private mGridLineWidth:F

.field private mLabelCount:I

.field protected mLimitLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpaceMax:F

.field protected mSpaceMin:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 158
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/ComponentBase;-><init>()V

    const v0, -0x777778

    .line 27
    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    .line 31
    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    .line 33
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    const/4 v0, 0x0

    .line 38
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 43
    new-array v2, v0, [F

    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    const/4 v2, 0x6

    .line 58
    iput v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    .line 63
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    .line 71
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    .line 76
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    .line 86
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    .line 91
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    .line 93
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    const/4 v2, 0x0

    .line 98
    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 103
    iput-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    .line 113
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    .line 118
    iput-boolean v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    const/4 v1, 0x0

    .line 123
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    .line 128
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    .line 133
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    .line 138
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    .line 143
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 148
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 153
    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 159
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mTextSize:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 160
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    iput v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mXOffset:F

    .line 161
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mYOffset:F

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    const-string p1, "MPAndroiChart"

    const-string v0, "Warning! You have more than 6 LimitLines on your axis, do you really want that?"

    .line 407
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public calculate(FF)V
    .locals 2

    .line 733
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    sub-float/2addr p1, v0

    .line 734
    :goto_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    add-float/2addr p2, v0

    :goto_1
    sub-float v0, p2, p1

    .line 737
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    sub-float/2addr p1, v0

    .line 745
    :cond_2
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 746
    iput p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr p2, p1

    .line 749
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public disableAxisLineDashedLine()V
    .locals 1

    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public disableGridDashedLine()V
    .locals 1

    const/4 v0, 0x0

    .line 554
    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public enableAxisLineDashedLine(FFF)V
    .locals 3

    .line 586
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public enableGridDashedLine(FFF)V
    .locals 3

    .line 534
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1, p3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public getAxisLineColor()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    return v0
.end method

.method public getAxisLineDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getAxisLineWidth()F
    .locals 1

    .line 250
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    return v0
.end method

.method public getAxisMaximum()F
    .locals 1

    .line 632
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    return v0
.end method

.method public getAxisMinimum()F
    .locals 1

    .line 636
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    return v0
.end method

.method public getFormattedLabel(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/AxisBase;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    aget p1, v1, p1

    invoke-interface {v0, p1, p0}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public getGranularity()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    return v0
.end method

.method public getGridColor()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    return v0
.end method

.method public getGridDashPathEffect()Landroid/graphics/DashPathEffect;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    return-object v0
.end method

.method public getGridLineWidth()F
    .locals 1

    .line 270
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    return v0
.end method

.method public getLabelCount()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    return v0
.end method

.method public getLimitLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LimitLine;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    return-object v0
.end method

.method public getLongestLabel()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 474
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 475
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/components/AxisBase;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSpaceMax()F
    .locals 1

    .line 773
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    return v0
.end method

.method public getSpaceMin()F
    .locals 1

    .line 757
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    return v0
.end method

.method public getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    instance-of v0, v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    check-cast v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    .line 518
    invoke-virtual {v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;->getDecimalDigits()I

    move-result v0

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    if-eq v0, v1, :cond_1

    .line 519
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    return-object v0
.end method

.method public isAxisLineDashedLineEnabled()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isAxisMaxCustom()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    return v0
.end method

.method public isAxisMinCustom()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    return v0
.end method

.method public isCenterAxisLabelsEnabled()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawAxisLineEnabled()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return v0
.end method

.method public isDrawGridLinesBehindDataEnabled()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    return v0
.end method

.method public isDrawGridLinesEnabled()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return v0
.end method

.method public isDrawLabelsEnabled()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return v0
.end method

.method public isDrawLimitLinesBehindDataEnabled()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    return v0
.end method

.method public isForceLabelsEnabled()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return v0
.end method

.method public isGranularityEnabled()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return v0
.end method

.method public isGridDashedLineEnabled()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public removeAllLimitLines()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLimitLines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetAxisMaximum()V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    return-void
.end method

.method public resetAxisMinimum()V
    .locals 1

    const/4 v0, 0x0

    .line 663
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    return-void
.end method

.method public setAxisLineColor(I)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineColor:I

    return-void
.end method

.method public setAxisLineDashedLine(Landroid/graphics/DashPathEffect;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public setAxisLineWidth(F)V
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisLineWidth:F

    return-void
.end method

.method public setAxisMaxValue(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMaximum(F)V

    return-void
.end method

.method public setAxisMaximum(F)V
    .locals 1

    const/4 v0, 0x1

    .line 708
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMax:Z

    .line 709
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 710
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public setAxisMinValue(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setAxisMinimum(F)V

    return-void
.end method

.method public setAxisMinimum(F)V
    .locals 1

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCustomAxisMin:Z

    .line 686
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 687
    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    return-void
.end method

.method public setCenterAxisLabels(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mCenterAxisLabels:Z

    return-void
.end method

.method public setDrawAxisLine(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawAxisLine:Z

    return-void
.end method

.method public setDrawGridLines(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLines:Z

    return-void
.end method

.method public setDrawGridLinesBehindData(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawGridLinesBehindData:Z

    return-void
.end method

.method public setDrawLabels(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLabels:Z

    return-void
.end method

.method public setDrawLimitLinesBehindData(Z)V
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDrawLimitLineBehindData:Z

    return-void
.end method

.method public setGranularity(F)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularity:F

    const/4 p1, 0x1

    .line 395
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public setGranularityEnabled(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGranularityEnabled:Z

    return-void
.end method

.method public setGridColor(I)V
    .locals 0

    .line 222
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridColor:I

    return-void
.end method

.method public setGridDashedLine(Landroid/graphics/DashPathEffect;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridDashPathEffect:Landroid/graphics/DashPathEffect;

    return-void
.end method

.method public setGridLineWidth(F)V
    .locals 0

    .line 260
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mGridLineWidth:F

    return-void
.end method

.method public setLabelCount(I)V
    .locals 1

    const/16 v0, 0x19

    if-le p1, v0, :cond_0

    const/16 p1, 0x19

    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    .line 323
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mLabelCount:I

    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return-void
.end method

.method public setLabelCount(IZ)V
    .locals 0

    .line 340
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/components/AxisBase;->setLabelCount(I)V

    .line 341
    iput-boolean p2, p0, Lcom/github/mikephil/charting/components/AxisBase;->mForceLabels:Z

    return-void
.end method

.method public setSpaceMax(F)V
    .locals 0

    .line 781
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMax:F

    return-void
.end method

.method public setSpaceMin(F)V
    .locals 0

    .line 765
    iput p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mSpaceMin:F

    return-void
.end method

.method public setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V
    .locals 1

    if-nez p1, :cond_0

    .line 504
    new-instance p1, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;

    iget v0, p0, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/formatter/DefaultAxisValueFormatter;-><init>(I)V

    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    goto :goto_0

    .line 506
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisValueFormatter:Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    :goto_0
    return-void
.end method