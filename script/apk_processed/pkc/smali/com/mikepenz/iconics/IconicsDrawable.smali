.class public Lcom/mikepenz/iconics/IconicsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconicsDrawable.java"


# instance fields
.field private mAlpha:I

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mContext:Landroid/content/Context;

.field private mContourColor:I

.field private mContourPaint:Landroid/graphics/Paint;

.field private mContourWidth:I

.field private mDrawContour:Z

.field private mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

.field private mIconColor:I

.field private mIconOffsetX:I

.field private mIconOffsetY:I

.field private mIconPadding:I

.field private mIconPaint:Landroid/graphics/Paint;

.field private mPaddingBounds:Landroid/graphics/Rect;

.field private mPath:Landroid/graphics/Path;

.field private mPathBounds:Landroid/graphics/RectF;

.field private mPlainIcon:Ljava/lang/String;

.field private mRespectFontBounds:Z

.field private mRoundedCornerRx:I

.field private mRoundedCornerRy:I

.field private mSizeX:I

.field private mSizeY:I

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/ColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 75
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 87
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 97
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 98
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 108
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    const/16 p1, 0x20

    .line 116
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V
    .locals 2

    .line 139
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 75
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 87
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 97
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 98
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 108
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 141
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    .line 142
    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Character;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 75
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 87
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 97
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 98
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 108
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    .line 123
    invoke-virtual {p0, p2}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 75
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    .line 86
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 87
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 97
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 98
    iput v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    const/16 v0, 0xff

    .line 100
    iput v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 108
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->prepare()V

    const/4 v0, 0x3

    .line 131
    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mikepenz/iconics/Iconics;->findFont(Landroid/content/Context;Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/ITypeface;

    move-result-object p1

    const-string v0, "-"

    const-string v1, "_"

    .line 132
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    invoke-interface {p1, v0}, Lcom/mikepenz/iconics/typeface/ITypeface;->getIcon(Ljava/lang/String;)Lcom/mikepenz/iconics/typeface/IIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p2, v0

    .line 135
    :catch_1
    sget-object p1, Lcom/mikepenz/iconics/Iconics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong icon name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private offsetIcon(Landroid/graphics/Rect;)V
    .locals 3

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 1002
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 1004
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    .line 1005
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    .line 1007
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->offset(FF)V

    return-void
.end method

.method private prepare()V
    .locals 3

    .line 152
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 155
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 156
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 160
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    .line 161
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    .line 165
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private updatePaddingBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 958
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    mul-int/lit8 v0, v0, 0x2

    .line 959
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    mul-int/lit8 v0, v0, 0x2

    .line 960
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    sub-int/2addr v3, v4

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method private updateTextSize(Landroid/graphics/Rect;)V
    .locals 10

    .line 975
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 976
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 978
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-interface {v1}, Lcom/mikepenz/iconics/typeface/IIcon;->getCharacter()C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 979
    :goto_1
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v8, v4

    iget-object v9, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 980
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 982
    iget-boolean v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRespectFontBounds:Z

    if-nez v3, :cond_3

    .line 983
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    .line 984
    iget-object v4, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPaddingBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    cmpg-float v5, v3, v4

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    mul-float v0, v0, v3

    .line 988
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 990
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v8, p1

    iget-object v9, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 991
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPathBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    :cond_3
    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 1022
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public alpha(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 764
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setAlpha(I)V

    return-object p0
.end method

.method public backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 573
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundColor:I

    const/4 p1, 0x0

    .line 574
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 575
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public backgroundColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public clearColorFilter()V
    .locals 1

    const/4 v0, 0x0

    .line 923
    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 924
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public clone()Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 1032
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 1033
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 1034
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersRxPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    .line 1035
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->roundedCornersRyPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 1036
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    .line 1037
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    .line 1038
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    .line 1039
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourColor:I

    .line 1040
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    .line 1041
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundColor:I

    .line 1042
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:I

    .line 1043
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 1044
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->alpha(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    .line 1045
    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 1046
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->typeface(Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-eqz v1, :cond_0

    .line 1049
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;

    goto :goto_0

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->clone()Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public color(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4

    .line 259
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 260
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 261
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 262
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconColor:I

    .line 264
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setAlpha(I)V

    .line 265
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public colorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->color(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 4

    .line 545
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 546
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 547
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 548
    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 550
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourColor:I

    .line 551
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public contourColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourColor(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourWidthDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 718
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    .line 719
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 720
    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;

    .line 721
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public contourWidthRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->contourWidthPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 793
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 796
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updatePaddingBounds(Landroid/graphics/Rect;)V

    .line 797
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTextSize(Landroid/graphics/Rect;)V

    .line 798
    invoke-direct {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->offsetIcon(Landroid/graphics/Rect;)V

    .line 800
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    if-le v1, v2, :cond_1

    .line 801
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    int-to-float v0, v0

    iget v2, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 806
    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 810
    :cond_2
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 811
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 813
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public drawContour(Z)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 732
    iget-boolean v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eq v0, p1, :cond_1

    .line 733
    iput-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    .line 735
    iget-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz p1, :cond_0

    .line 736
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    goto :goto_0

    .line 738
    :cond_0
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 741
    :goto_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_1
    return-object p0
.end method

.method public getAlpha()I
    .locals 1

    .line 889
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 871
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 866
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 876
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    return v0
.end method

.method public icon(Lcom/mikepenz/iconics/typeface/IIcon;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 217
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    .line 219
    invoke-interface {p1}, Lcom/mikepenz/iconics/typeface/IIcon;->getTypeface()Lcom/mikepenz/iconics/typeface/ITypeface;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/mikepenz/iconics/typeface/ITypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 221
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public icon(Ljava/lang/Character;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public iconOffsetXPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 338
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetX:I

    return-object p0
.end method

.method public iconOffsetYPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 369
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconOffsetY:I

    return-object p0
.end method

.method public iconText(Ljava/lang/String;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPlainIcon:Ljava/lang/String;

    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIcon:Lcom/mikepenz/iconics/typeface/IIcon;

    .line 205
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 206
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 838
    invoke-direct {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->offsetIcon(Landroid/graphics/Rect;)V

    .line 839
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 840
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 856
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 857
    iget-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 858
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 401
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    if-eq v0, p1, :cond_1

    .line 402
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 403
    iget-boolean p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mDrawContour:Z

    if-eqz p1, :cond_0

    .line 404
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContourWidth:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPadding:I

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    :cond_1
    return-object p0
.end method

.method public paddingRes(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingPx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public roundedCornersDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 675
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 686
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    .line 687
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public roundedCornersRxPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 618
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRx:I

    return-object p0
.end method

.method public roundedCornersRyPx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 0

    .line 651
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mRoundedCornerRy:I

    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    .line 884
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 918
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 850
    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mAlpha:I

    invoke-virtual {p0, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setAlpha(I)V

    .line 851
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1
.end method

.method public setTint(I)V
    .locals 0

    .line 819
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 824
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 825
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 826
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 831
    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 832
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mTintFilter:Landroid/graphics/ColorFilter;

    .line 833
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-void
.end method

.method public sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mContext:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/mikepenz/iconics/utils/Utils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object p1

    return-object p1
.end method

.method public sizePx(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 462
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 463
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, v0, v0, p1, p1}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 465
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public sizePxX(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 497
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    .line 498
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 499
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public sizePxY(I)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 2

    .line 531
    iput p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    .line 532
    iget p1, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeX:I

    iget v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mSizeY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/mikepenz/iconics/IconicsDrawable;->setBounds(IIII)V

    .line 533
    invoke-virtual {p0}, Lcom/mikepenz/iconics/IconicsDrawable;->invalidateSelf()V

    return-object p0
.end method

.method public typeface(Landroid/graphics/Typeface;)Lcom/mikepenz/iconics/IconicsDrawable;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/mikepenz/iconics/IconicsDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object p0
.end method
