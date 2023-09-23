.class public Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;
.super Ljava/lang/Object;
.source "LetterTileProvider.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mColors:Landroid/content/res/TypedArray;

.field private final mDefaultBitmap:Landroid/graphics/Bitmap;

.field private final mFirstChar:[C

.field private final mHeight:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTileLetterFontSize:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mBounds:Landroid/graphics/Rect;

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    .line 40
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mFirstChar:[C

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    const-string v3, "sans-serif-light"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 65
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 67
    sget v0, Lorg/sufficientlysecure/materialchips/R$array;->letter_tile_colors:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mColors:Landroid/content/res/TypedArray;

    .line 68
    sget v0, Lorg/sufficientlysecure/materialchips/R$dimen;->tile_letter_font_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mTileLetterFontSize:I

    .line 71
    sget v0, Lorg/sufficientlysecure/materialchips/R$drawable;->ic_person_white_24dp:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 72
    sget p1, Lorg/sufficientlysecure/materialchips/R$dimen;->letter_tile_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mWidth:I

    .line 73
    sget p1, Lorg/sufficientlysecure/materialchips/R$dimen;->letter_tile_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lorg/sufficientlysecure/materialchips/util/LetterTileProvider;->mHeight:I

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 202
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 203
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 204
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method
