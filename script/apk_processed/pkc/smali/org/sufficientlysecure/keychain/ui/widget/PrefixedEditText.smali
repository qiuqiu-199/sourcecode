.class public Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "PrefixedEditText.java"


# instance fields
.field private desiredWidth:I

.field private mPrefix:Ljava/lang/CharSequence;

.field private mPrefixColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 38
    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v0, Lorg/sufficientlysecure/keychain/R$styleable;->PrefixedEditText:[I

    const/4 v1, 0x0

    invoke-virtual {v3, v4, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 41
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->getCurrentTextColor()I

    move-result v4

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefixColor:I

    .line 43
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    const-string v3, ""

    .line 44
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    :cond_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCompoundPaddingLeft()I
    .locals 5

    move-object/16 v2, p0

    .line 65
    invoke-super {v2}, Landroid/support/v7/widget/AppCompatEditText;->getCompoundPaddingLeft()I

    move-result v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;--->getCompoundPaddingLeft()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->desiredWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 56
    invoke-super {v7, v8}, Landroid/support/v7/widget/AppCompatEditText;->onDraw(Landroid/graphics/Canvas;)V

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;--->onDraw(Landroid/graphics/Canvas;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 59
    iget v0, v7, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefixColor:I

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 60
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-super {v7}, Landroid/support/v7/widget/AppCompatEditText;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->getBaseline()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    move-object v0, v8

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    .line 50
    invoke-super {v0, v1, v2}, Landroid/support/v7/widget/AppCompatEditText;->onMeasure(II)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;--->onMeasure(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->desiredWidth:I

    return-void
.end method

.method public setPrefix(Ljava/lang/CharSequence;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->mPrefix:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->invalidate()V

    .line 72
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;->requestLayout()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/PrefixedEditText;--->setPrefix(Ljava/lang/CharSequence;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
