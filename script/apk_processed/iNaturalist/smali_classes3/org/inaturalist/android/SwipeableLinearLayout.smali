.class public Lorg/inaturalist/android/SwipeableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SwipeableLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;
    }
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x50


# instance fields
.field private mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

.field private mStartEventX:F

.field private mStartEventY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 32
    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 32
    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 32
    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 32
    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 48
    iget-object v0, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    return v1

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_2
    iget v0, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v4, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    sub-float/2addr v0, v4

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v4, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    sub-float/2addr p1, v4

    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v4, v0

    const/high16 v0, 0x42a00000    # 80.0f

    cmpl-float v4, v4, v0

    if-lez v4, :cond_4

    .line 64
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 66
    iget-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    invoke-interface {p1}, Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;->onSwipeRight()V

    goto :goto_0

    .line 68
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    invoke-interface {p1}, Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;->onSwipeLeft()V

    .line 70
    :goto_0
    iput v2, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    .line 71
    iput v2, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 78
    :catch_0
    :cond_4
    iput v2, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventX:F

    .line 79
    iput v2, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mStartEventY:F

    :cond_5
    return v1
.end method

.method public setOnSwipeListener(Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/inaturalist/android/SwipeableLinearLayout;->mOnSwipeListener:Lorg/inaturalist/android/SwipeableLinearLayout$SwipeListener;

    return-void
.end method
