.class public Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;
.super Landroid/widget/FrameLayout;
.source "IndicatorLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mInAnim:Landroid/view/animation/Animation;

.field private mOutAnim:Landroid/view/animation/Animation;

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
    .locals 11

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_arrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/handmark/pulltorefresh/library/R$dimen;->indicator_internal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 55
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->addView(Landroid/view/View;)V

    .line 58
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 72
    sget p2, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_top:I

    .line 73
    sget v0, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_top:I

    .line 74
    sget v2, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_top:I

    invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 60
    :cond_0
    sget p2, Lcom/handmark/pulltorefresh/library/R$anim;->slide_in_from_bottom:I

    .line 61
    sget v2, Lcom/handmark/pulltorefresh/library/R$anim;->slide_out_to_bottom:I

    .line 62
    sget v3, Lcom/handmark/pulltorefresh/library/R$drawable;->indicator_bg_bottom:I

    invoke-virtual {p0, v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setBackgroundResource(I)V

    .line 65
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x43340000    # 180.0f

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 68
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    move v0, v2

    .line 78
    :goto_0
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    .line 79
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    .line 82
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 85
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 87
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 91
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/high16 v5, -0x3ccc0000    # -180.0f

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    .line 93
    iget-object p2, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p2, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final isVisible()Z
    .locals 4

    .line 100
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 102
    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mOutAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    const/16 p1, 0x8

    .line 121
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->setVisibility(I)V

    return-void
.end method

.method public pullToRefresh()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->mInAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
