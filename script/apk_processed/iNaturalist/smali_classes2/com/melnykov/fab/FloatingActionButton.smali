.class public Lcom/melnykov/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$TYPE;
    }
.end annotation


# static fields
.field private static final TRANSLATE_DURATION_MILLIS:I = 0xc8

.field public static final TYPE_MINI:I = 0x1

.field public static final TYPE_NORMAL:I


# instance fields
.field private mColorDisabled:I

.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMarginsSet:Z

.field private mScrollThreshold:I

.field private mShadow:Z

.field private mShadowSize:I

.field private mType:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p3, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/melnykov/fab/FloatingActionButton;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    return p0
.end method

.method static synthetic access$100(Lcom/melnykov/fab/FloatingActionButton;I)I
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    return-void
.end method

.method private createDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 137
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 138
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 139
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-nez v0, :cond_0

    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/melnykov/fab/R$drawable;->fab_shadow_mini:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 144
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    .line 145
    iget v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v5, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v7, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private static darkenColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 416
    new-array v0, v0, [F

    .line 417
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 418
    aget v1, v0, p0

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 419
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private getColor(I)I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getDimension(I)I
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method private getMarginBottom()I
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 214
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method private hasHoneycombApi()Z
    .locals 2

    .line 412
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasJellyBeanApi()Z
    .locals 2

    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLollipopApi()Z
    .locals 2

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    .line 94
    sget v1, Lcom/melnykov/fab/R$color;->material_blue_500:I

    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    .line 95
    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->darkenColor(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    .line 96
    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->lightenColor(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    const/high16 v1, 0x1060000

    .line 97
    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorDisabled:I

    const/4 v1, 0x0

    .line 98
    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    .line 99
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    .line 100
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_scroll_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    .line 101
    sget v0, Lcom/melnykov/fab/R$dimen;->fab_shadow_size:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    if-eqz p2, :cond_0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 109
    sget-object v0, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorNormal:I

    sget v0, Lcom/melnykov/fab/R$color;->material_blue_500:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    .line 114
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorPressed:I

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-static {v0}, Lcom/melnykov/fab/FloatingActionButton;->darkenColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    .line 116
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorRipple:I

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-static {v0}, Lcom/melnykov/fab/FloatingActionButton;->lightenColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    .line 118
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorDisabled:I

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorDisabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorDisabled:I

    .line 120
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_shadow:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    .line 121
    sget p2, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_type:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private static lightenColor(I)I
    .locals 3

    const/4 v0, 0x3

    .line 423
    new-array v0, v0, [F

    .line 424
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x2

    .line 425
    aget v1, v0, p0

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v1, v1, v2

    aput v1, v0, p0

    .line 426
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getElevation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getElevation()F

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/melnykov/fab/R$dimen;->fab_elevation_lollipop:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 191
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->setElevation(F)V

    .line 192
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v5, v2, [I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    aput v6, v5, v4

    invoke-direct {v1, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 194
    new-instance p1, Lcom/melnykov/fab/FloatingActionButton$1;

    invoke-direct {p1, p0}, Lcom/melnykov/fab/FloatingActionButton$1;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->setClipToOutline(Z)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasJellyBeanApi()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 207
    :cond_3
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private setMarginsWithoutShadow()V
    .locals 6

    .line 165
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mMarginsSet:Z

    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 168
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int/2addr v1, v2

    .line 169
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int/2addr v2, v3

    .line 170
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int/2addr v3, v4

    .line 171
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int/2addr v4, v5

    .line 172
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 174
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->requestLayout()V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mMarginsSet:Z

    :cond_0
    return-void
.end method

.method private toggle(ZZZ)V
    .locals 2

    .line 309
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_4

    .line 310
    :cond_0
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    .line 311
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    .line 314
    invoke-virtual {p3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton$2;-><init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->getMarginBottom()I

    move-result p3

    add-int/2addr p3, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 331
    invoke-static {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    int-to-float p2, p3

    .line 335
    invoke-static {p0, p2}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 339
    :goto_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasHoneycombApi()Z

    move-result p2

    if-nez p2, :cond_4

    .line 340
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setClickable(Z)V

    :cond_4
    return-void
.end method

.method private updateBackground()V
    .locals 5

    .line 129
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 130
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    iget v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v4}, Lcom/melnykov/fab/FloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 131
    new-array v1, v1, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorDisabled:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 132
    new-array v1, v3, [I

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public attachToListView(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 375
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    .line 376
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->access$400(Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    .line 377
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 378
    invoke-virtual {v0, p1}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->setListView(Landroid/widget/AbsListView;)V

    .line 379
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->setScrollThreshold(I)V

    .line 380
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 386
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    .line 387
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->access$600(Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    .line 388
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 389
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->setScrollThreshold(I)V

    .line 390
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0, p1, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V

    return-void
.end method

.method public attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 1
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, p2, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V

    return-void
.end method

.method public attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V
    .locals 2
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 396
    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    .line 397
    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->access$800(Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    .line 398
    invoke-virtual {v0, p3}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V

    .line 399
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->setScrollThreshold(I)V

    .line 400
    invoke-virtual {p1, v0}, Lcom/melnykov/fab/ObservableScrollView;->setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V

    return-void
.end method

.method public getColorNormal()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    return v0
.end method

.method public getColorPressed()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    return v0
.end method

.method public getColorRipple()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    return v0
.end method

.method public hasShadow()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, v0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    .line 83
    iget p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-nez p1, :cond_0

    sget p1, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result p1

    .line 85
    iget-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result p2

    if-nez p2, :cond_1

    .line 86
    iget p2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 87
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->setMarginsWithoutShadow()V

    .line 89
    :cond_1
    invoke-virtual {p0, p1, p1}, Lcom/melnykov/fab/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public setColorNormal(I)V
    .locals 1

    .line 221
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    if-eq p1, v0, :cond_0

    .line 222
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    .line 223
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setColorNormalResId(I)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setColorPressed(I)V
    .locals 1

    .line 236
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    if-eq p1, v0, :cond_0

    .line 237
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    .line 238
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setColorPressedResId(I)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setColorRipple(I)V
    .locals 1

    .line 251
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    if-eq p1, v0, :cond_0

    .line 252
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    .line 253
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setColorRippleResId(I)V
    .locals 0

    .line 258
    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setShadow(Z)V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eq p1, v0, :cond_0

    .line 267
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    .line 268
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 277
    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-eq p1, v0, :cond_0

    .line 278
    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    .line 279
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 293
    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0, v0, p1, v1}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    return-void
.end method
