.class final Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0xf

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lorg/inaturalist/android/OnSwipeTouchListener;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;->this$0:Lorg/inaturalist/android/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/inaturalist/android/OnSwipeTouchListener;Lorg/inaturalist/android/OnSwipeTouchListener$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;-><init>(Lorg/inaturalist/android/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 34
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 35
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    cmpl-float p1, p2, v3

    if-lez p1, :cond_0

    .line 37
    iget-object p1, p0, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;->this$0:Lorg/inaturalist/android/OnSwipeTouchListener;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnSwipeTouchListener;->onSwipeRight()Z

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    .line 39
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;->this$0:Lorg/inaturalist/android/OnSwipeTouchListener;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnSwipeTouchListener;->onSwipeLeft()Z

    move-result p1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    cmpl-float p1, v1, v3

    if-lez p1, :cond_2

    .line 45
    iget-object p1, p0, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;->this$0:Lorg/inaturalist/android/OnSwipeTouchListener;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnSwipeTouchListener;->onSwipeBottom()Z

    move-result p1

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/OnSwipeTouchListener$GestureListener;->this$0:Lorg/inaturalist/android/OnSwipeTouchListener;

    invoke-virtual {p1}, Lorg/inaturalist/android/OnSwipeTouchListener;->onSwipeTop()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method
