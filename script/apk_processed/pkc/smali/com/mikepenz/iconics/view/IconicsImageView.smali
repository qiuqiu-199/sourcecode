.class public Lcom/mikepenz/iconics/view/IconicsImageView;
.super Landroid/widget/ImageView;
.source "IconicsImageView.java"


# instance fields
.field private mBackgroundColor:I

.field private mColor:I

.field private mContourColor:I

.field private mContourWidth:I

.field private mCornerRadius:I

.field private mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

.field private mPadding:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mSize:I

    .line 39
    iput v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    .line 40
    iput v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    .line 42
    iput v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    .line 43
    iput v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    .line 45
    iput v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    .line 57
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    sget-object v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget p3, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_icon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 63
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_color:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    .line 64
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_size:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mSize:I

    .line 65
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_padding:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    .line 66
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_contour_color:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    .line 67
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_contour_width:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    .line 68
    sget v2, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_background_color:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    .line 69
    sget v0, Lcom/mikepenz/iconics/core/R$styleable;->IconicsImageView_iiv_corner_radius:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    .line 72
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/view/IconicsImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-nez p3, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p2, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-direct {p2, p1, p3}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    .line 87
    invoke-direct {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setAttributes()V

    .line 90
    iget-object p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/view/IconicsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private setAttributes()V
    .locals 3

    .line 141
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 144
    :cond_0
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mSize:I

    invoke-virtual {v0, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 147
    :cond_1
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    if-eq v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    invoke-virtual {v0, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 150
    :cond_2
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    invoke-virtual {v0, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 153
    :cond_3
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    if-eq v0, v1, :cond_4

    .line 154
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    invoke-virtual {v0, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 156
    :cond_4
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v2, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 159
    :cond_5
    iget v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    if-eq v0, v1, :cond_6

    .line 160
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    iget v1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_6
    return-void
.end method


# virtual methods
.method public getIcon()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    return-object v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 238
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mBackgroundColor:I

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 168
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    return-void
.end method

.method public setColorRes(I)V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->colorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mColor:I

    return-void
.end method

.method public setContourColor(I)V
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 203
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    return-void
.end method

.method public setContourColorRes(I)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourColor:I

    return-void
.end method

.method public setContourWidthDp(I)V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    return-void
.end method

.method public setContourWidthPx(I)V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 217
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    return-void
.end method

.method public setContourWidthRes(I)V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mContourWidth:I

    return-void
.end method

.method public setIcon(Lcom/mikepenz/iconics/IconicsDrawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V

    return-void
.end method

.method public setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz p2, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setAttributes()V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mIcon:Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/view/IconicsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 1

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/typeface/IIcon;Z)V

    return-void
.end method

.method public setIcon(Lcom/mikepenz/iconics/typeface/IIcon;Z)V
    .locals 2

    .line 115
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    invoke-virtual {p0, v0, p2}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V

    return-void
.end method

.method public setIcon(Ljava/lang/Character;)V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Ljava/lang/Character;Z)V

    return-void
.end method

.method public setIcon(Ljava/lang/Character;Z)V
    .locals 2

    .line 99
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Ljava/lang/Character;)V

    invoke-virtual {p0, v0, p2}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;Z)V
    .locals 2

    .line 107
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V

    return-void
.end method

.method public setIconText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIconText(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIconText(Ljava/lang/String;Z)V
    .locals 2

    .line 137
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/iconics/view/IconicsImageView;->setIcon(Lcom/mikepenz/iconics/IconicsDrawable;Z)V

    return-void
.end method

.method public setPaddingDp(I)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    return-void
.end method

.method public setPaddingPx(I)V
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 182
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    return-void
.end method

.method public setPaddingRes(I)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mPadding:I

    return-void
.end method

.method public setRoundedCornersDp(I)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    return-void
.end method

.method public setRoundedCornersPx(I)V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 252
    :cond_0
    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    return-void
.end method

.method public setRoundedCornersRes(I)V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/mikepenz/iconics/IconicsDrawable;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/mikepenz/iconics/IconicsDrawable;

    invoke-virtual {v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/view/IconicsImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/view/IconicsImageView;->mCornerRadius:I

    return-void
.end method
