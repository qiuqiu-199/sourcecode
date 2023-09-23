.class public Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
.super Landroid/text/style/ReplacementSpan;
.source "DrawTableLinkSpan.java"


# static fields
.field private static DEFAULT_TEXT_COLOR:I = -0xffff01

.field private static DEFAULT_TEXT_SIZE:F = 80.0f


# instance fields
.field protected mTableLinkText:Ljava/lang/String;

.field protected mTextColor:I

.field protected mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    .line 38
    sget v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_SIZE:F

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    .line 39
    sget v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 62
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget p3, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x1

    .line 64
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget p3, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    int-to-float p4, p8

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 54
    iget-object p2, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    iget-object p3, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p2

    float-to-int p2, p2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    iput p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    return p2
.end method

.method public newInstance()Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;
    .locals 2

    .line 44
    new-instance v0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;

    invoke-direct {v0}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;-><init>()V

    .line 45
    iget-object v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTableLinkText(Ljava/lang/String;)V

    .line 46
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTextSize(F)V

    .line 47
    iget v1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->setTextColor(I)V

    return-object v0
.end method

.method public setTableLinkText(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTableLinkText:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 79
    iput p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextColor:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 75
    iput p1, p0, Lorg/sufficientlysecure/htmltextview/DrawTableLinkSpan;->mTextSize:F

    return-void
.end method
