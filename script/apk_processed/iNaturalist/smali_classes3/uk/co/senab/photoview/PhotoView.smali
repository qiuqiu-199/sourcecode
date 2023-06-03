.class public Luk/co/senab/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Luk/co/senab/photoview/IPhotoView;


# instance fields
.field private final mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Luk/co/senab/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    new-instance p1, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p1, p0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 51
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Luk/co/senab/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Luk/co/senab/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .line 77
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 87
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 82
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Luk/co/senab/photoview/IPhotoView;
    .locals 1

    .line 272
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .line 125
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 114
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .line 103
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .line 218
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .line 228
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 130
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 135
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 262
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 282
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 283
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 196
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/PhotoView;->setMaximumScale(F)V

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    .line 173
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    .line 162
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/PhotoView;->setMediumScale(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Luk/co/senab/photoview/PhotoView;->setMinimumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    .line 151
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    .line 277
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 208
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1

    .line 203
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1

    .line 213
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1

    .line 223
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1

    .line 62
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    .line 72
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    .line 67
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 233
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    .line 243
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    .line 238
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 248
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 251
    :cond_0
    iput-object p1, p0, Luk/co/senab/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    .line 257
    iget-object v0, p0, Luk/co/senab/photoview/PhotoView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
