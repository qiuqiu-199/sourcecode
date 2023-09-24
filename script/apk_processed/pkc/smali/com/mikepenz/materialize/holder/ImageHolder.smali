.class public Lcom/mikepenz/materialize/holder/ImageHolder;
.super Ljava/lang/Object;
.source "ImageHolder.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconRes:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 45
    iput p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    .line 41
    iput-object p1, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static applyMultiIconTo(Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;IZLandroid/widget/ImageView;)V
    .locals 0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 292
    new-instance p4, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;

    invoke-direct {p4, p0, p2, p1, p3}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {p0, p2}, Lcom/mikepenz/materialize/util/UIUtils;->getIconStateList(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 297
    new-instance p2, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;

    invoke-direct {p2, p0, p1, p3}, Lcom/mikepenz/materialize/drawable/PressedEffectStateListDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p5, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 p0, 0x0

    .line 302
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 p0, 0x8

    .line 305
    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mIconRes:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mikepenz/materialize/holder/ImageHolder;->mUri:Landroid/net/Uri;

    return-object v0
.end method
