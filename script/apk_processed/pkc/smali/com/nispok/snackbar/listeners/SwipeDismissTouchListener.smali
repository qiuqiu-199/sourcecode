.class public Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

.field private mContainerView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    .line 93
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 94
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 97
    iput-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    .line 98
    iput-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 99
    iput-object p3, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->performDismiss(Landroid/view/View;)V

    return-void
.end method

.method private performDismiss(Landroid/view/View;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->onDismiss(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 105
    iget v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 107
    iget v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    .line 111
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 187
    :pswitch_0
    iget-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez p2, :cond_1

    goto/16 :goto_9

    .line 191
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v7, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 194
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 195
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 196
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v4, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 198
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 199
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 200
    iput-object v3, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 201
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 202
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 203
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 204
    iput-boolean v6, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_9

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr v0, v2

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    sub-float/2addr v2, v3

    .line 216
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    const/high16 v7, 0x40000000    # 2.0f

    if-lez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v7

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 217
    iput-boolean v5, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 218
    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSlop:I

    neg-int v2, v2

    :goto_0
    iput v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 225
    :cond_4
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/lit8 p2, p2, 0x3

    .line 226
    invoke-virtual {v2, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 229
    invoke-virtual {p1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 230
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 233
    :cond_5
    iget-boolean p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_13

    .line 234
    iput v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 235
    iget p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float p2, p2

    sub-float p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, v7

    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v2, v2

    div-float/2addr p2, v2

    sub-float p2, v4, p2

    .line 237
    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 239
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    const p2, 0x3e4ccccd    # 0.2f

    .line 240
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    .line 239
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return v5

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    goto/16 :goto_9

    .line 129
    :cond_6
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    invoke-interface {v0, v6}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v7, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    sub-float/2addr v0, v7

    .line 131
    iget-object v7, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 132
    iget-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {p2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 133
    iget-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 134
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 135
    iget-object v8, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 138
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    div-int/2addr v10, v2

    int-to-float v2, v10

    cmpl-float v2, v9, v2

    if-lez v2, :cond_8

    iget-boolean v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v2, :cond_8

    cmpl-float p2, v0, v1

    if-lez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    move v5, p2

    const/4 p2, 0x1

    goto :goto_5

    .line 141
    :cond_8
    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v2, v2

    cmpg-float v2, v2, v7

    if-gtz v2, :cond_c

    iget v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v2, v2

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_c

    cmpg-float v2, v8, v7

    if-gez v2, :cond_c

    cmpg-float v2, v8, v7

    if-gez v2, :cond_c

    iget-boolean v2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v2, :cond_c

    cmpg-float p2, p2, v1

    if-gez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    :goto_2
    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-ne p2, v0, :cond_b

    const/4 p2, 0x1

    goto :goto_4

    :cond_b
    const/4 p2, 0x0

    .line 146
    :goto_4
    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    :cond_d
    const/4 v5, 0x0

    :goto_5
    if-eqz p2, :cond_f

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz v5, :cond_e

    iget v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    :goto_6
    int-to-float v0, v0

    goto :goto_7

    :cond_e
    iget v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v0, v0

    goto :goto_6

    .line 151
    :goto_7
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 152
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v4, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 153
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 154
    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 155
    iget-object p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 156
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v4, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 157
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;

    invoke-direct {v0, p0, p1}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$1;-><init>(Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V

    .line 158
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_8

    .line 164
    :cond_f
    iget-boolean p2, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz p2, :cond_10

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v7, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 169
    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 171
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 172
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v4, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mAnimationTime:J

    .line 173
    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 175
    :cond_10
    :goto_8
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    .line 176
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 177
    iput-object v3, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 179
    :cond_11
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mTranslationX:F

    .line 180
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 181
    iput v1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 182
    iput-boolean v6, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mSwiping:Z

    goto :goto_9

    .line 114
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownX:F

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mDownY:F

    .line 116
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v0, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 117
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mCallbacks:Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;

    invoke-interface {p1, v5}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;->pauseTimer(Z)V

    .line 118
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 119
    iget-object p1, p0, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_12
    return v6

    :cond_13
    :goto_9
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
