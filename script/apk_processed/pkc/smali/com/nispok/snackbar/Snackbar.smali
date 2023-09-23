.class public Lcom/nispok/snackbar/Snackbar;
.super Lcom/nispok/snackbar/layouts/SnackbarLayout;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nispok/snackbar/Snackbar$SnackbarPosition;,
        Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
    }
.end annotation


# instance fields
.field private mActionClickListener:Lcom/nispok/snackbar/listeners/ActionClickListener;

.field private mActionClicked:Z

.field private mActionColor:I

.field private mActionLabel:Ljava/lang/CharSequence;

.field private mActionSwipeListener:Lcom/nispok/snackbar/listeners/ActionSwipeListener;

.field private mActionTypeface:Landroid/graphics/Typeface;

.field private mCanSwipeToDismiss:Z

.field private mColor:I

.field private mCustomDuration:J

.field private mDismissAnimated:Z

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDrawable:I

.field private mDuration:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field private mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

.field private mIsDismissing:Z

.field private mIsReplacePending:Z

.field private mIsShowing:Z

.field private mIsShowingByReplace:Z

.field private mLineColor:Ljava/lang/Integer;

.field private mMarginBottom:I

.field private mMarginLeft:I

.field private mMarginRight:I

.field private mMarginTop:I

.field private mMaxWidthPercentage:Ljava/lang/Float;

.field private mOffset:I

.field private mPhonePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

.field private mShouldAllowMultipleActionClicks:Z

.field private mShouldDismissOnActionClicked:Z

.field private mShowAnimated:Z

.field private mSnackbarFinish:J

.field private mSnackbarStart:J

.field private mTargetActivity:Landroid/app/Activity;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field private mTextTypeface:Landroid/graphics/Typeface;

.field private mTimeRemaining:J

.field private mType:Lcom/nispok/snackbar/enums/SnackbarType;

.field private mUndefinedColor:I

.field private mUndefinedDrawable:I

.field private mUsePhoneLayout:Z

.field private mWidePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

.field private mWindowInsets:Landroid/graphics/Rect;

.field private snackbarAction:Landroid/widget/TextView;

.field private snackbarText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 136
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/layouts/SnackbarLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, -0x2710

    .line 75
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    .line 76
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedDrawable:I

    .line 78
    sget-object p1, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 79
    sget-object p1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mDuration:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    .line 83
    iget p1, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    .line 84
    iget p1, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mTextColor:I

    .line 87
    sget-object p1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mPhonePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 88
    sget-object p1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->BOTTOM_CENTER:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mWidePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 89
    iget p1, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedDrawable:I

    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mDrawable:I

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mMarginTop:I

    .line 91
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mMarginBottom:I

    .line 92
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mMarginLeft:I

    .line 93
    iput p1, p0, Lcom/nispok/snackbar/Snackbar;->mMarginRight:I

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mTimeRemaining:J

    .line 98
    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    iput v2, p0, Lcom/nispok/snackbar/Snackbar;->mActionColor:I

    const/4 v2, 0x1

    .line 99
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->mShowAnimated:Z

    .line 100
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->mDismissAnimated:Z

    .line 101
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mIsReplacePending:Z

    .line 102
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 103
    iput-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mCustomDuration:J

    .line 108
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    .line 112
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    .line 113
    iput-boolean v2, p0, Lcom/nispok/snackbar/Snackbar;->mCanSwipeToDismiss:Z

    .line 114
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    .line 115
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    .line 116
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mDisplayFrame:Landroid/graphics/Rect;

    .line 117
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mDisplaySize:Landroid/graphics/Point;

    .line 118
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mRealDisplaySize:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    .line 122
    new-instance p1, Lcom/nispok/snackbar/Snackbar$1;

    invoke-direct {p1, p0}, Lcom/nispok/snackbar/Snackbar$1;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    .line 128
    new-instance p1, Lcom/nispok/snackbar/Snackbar$2;

    invoke-direct {p1, p0}, Lcom/nispok/snackbar/Snackbar$2;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    .line 139
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 140
    new-instance p1, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nispok/snackbar/SnackbarHelperChildViewJB;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/nispok/snackbar/Snackbar;->mActionClickListener:Lcom/nispok/snackbar/listeners/ActionClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mTimeRemaining:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->mTimeRemaining:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mSnackbarStart:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->mSnackbarStart:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/nispok/snackbar/Snackbar;J)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->startTimer(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/EventListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowingByReplace:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/nispok/snackbar/Snackbar;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowingByReplace:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mShowAnimated:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/nispok/snackbar/Snackbar;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/nispok/snackbar/Snackbar;Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/Snackbar;->focusForAccessibility(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->shouldStartTimer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->startTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mActionClicked:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/nispok/snackbar/Snackbar;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->finish()V

    return-void
.end method

.method static synthetic access$202(Lcom/nispok/snackbar/Snackbar;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mActionClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mShouldAllowMultipleActionClicks:Z

    return p0
.end method

.method static synthetic access$400(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/nispok/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    return p0
.end method

.method static synthetic access$500(Lcom/nispok/snackbar/Snackbar;)Lcom/nispok/snackbar/listeners/ActionSwipeListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/nispok/snackbar/Snackbar;->mActionSwipeListener:Lcom/nispok/snackbar/listeners/ActionSwipeListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nispok/snackbar/Snackbar;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/Snackbar;->dismiss(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/nispok/snackbar/Snackbar;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->isIndefiniteDuration()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/nispok/snackbar/Snackbar;)Ljava/lang/Runnable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/nispok/snackbar/Snackbar;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mSnackbarFinish:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/nispok/snackbar/Snackbar;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->mSnackbarFinish:J

    return-wide p1
.end method

.method private static createMarginLayoutParams(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 563
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 564
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 565
    invoke-virtual {p3}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result p1

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object p0

    .line 567
    :cond_0
    instance-of v0, p0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 568
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 570
    sget-object p1, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    const/4 p2, -0x1

    if-ne p3, p1, :cond_1

    const/16 p1, 0xa

    .line 571
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    .line 573
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    return-object p0

    .line 576
    :cond_2
    instance-of p0, p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_3

    .line 577
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 578
    invoke-virtual {p3}, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->getLayoutGravity()I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p0

    .line 581
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Requires FrameLayout or RelativeLayout for the parent of Snackbar"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dismiss(Z)V
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 988
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    .line 990
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    if-eqz v0, :cond_2

    .line 991
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsReplacePending:Z

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    invoke-interface {v0, p0}, Lcom/nispok/snackbar/listeners/EventListener;->onDismissByReplace(Lcom/nispok/snackbar/Snackbar;)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    invoke-interface {v0, p0}, Lcom/nispok/snackbar/listeners/EventListener;->onDismiss(Lcom/nispok/snackbar/Snackbar;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 999
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->finish()V

    return-void

    .line 1003
    :cond_3
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mPhonePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {v0}, Lcom/nispok/snackbar/Snackbar;->getOutAnimationResource(Lcom/nispok/snackbar/Snackbar$SnackbarPosition;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 1004
    new-instance v0, Lcom/nispok/snackbar/Snackbar$8;

    invoke-direct {v0, p0}, Lcom/nispok/snackbar/Snackbar$8;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1023
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private static dpToPx(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private finish()V
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->clearAnimation()V

    .line 1028
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    invoke-interface {v0, p0}, Lcom/nispok/snackbar/listeners/EventListener;->onDismissed(Lcom/nispok/snackbar/Snackbar;)V

    :cond_1
    const/4 v0, 0x0

    .line 1035
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    .line 1036
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    .line 1037
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsReplacePending:Z

    const/4 v0, 0x0

    .line 1038
    iput-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    return-void
.end method

.method private focusForAccessibility(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x8

    .line 926
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 928
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;)V

    .line 930
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static getInAnimationResource(Lcom/nispok/snackbar/Snackbar$SnackbarPosition;)I
    .locals 1

    .line 1203
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    if-ne p0, v0, :cond_0

    sget p0, Lcom/nispok/snackbar/R$anim;->sb__top_in:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/nispok/snackbar/R$anim;->sb__bottom_in:I

    :goto_0
    return p0
.end method

.method public static getOutAnimationResource(Lcom/nispok/snackbar/Snackbar$SnackbarPosition;)I
    .locals 1

    .line 1213
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarPosition;->TOP:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    if-ne p0, v0, :cond_0

    sget p0, Lcom/nispok/snackbar/R$anim;->sb__top_out:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/nispok/snackbar/R$anim;->sb__bottom_out:I

    :goto_0
    return p0
.end method

.method private init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 6

    .line 594
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/nispok/snackbar/R$layout;->sb__template:I

    const/4 v1, 0x1

    .line 595
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/nispok/snackbar/layouts/SnackbarLayout;

    .line 596
    invoke-virtual {p1, v1}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setOrientation(I)V

    .line 598
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 599
    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/nispok/snackbar/R$color;->sb__background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    .line 600
    sget v2, Lcom/nispok/snackbar/R$dimen;->sb__offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/nispok/snackbar/Snackbar;->mOffset:I

    .line 601
    iput-boolean p4, p0, Lcom/nispok/snackbar/Snackbar;->mUsePhoneLayout:Z

    .line 602
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->density:F

    .line 604
    sget v2, Lcom/nispok/snackbar/R$id;->sb__divider:I

    invoke-virtual {p1, v2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 607
    iget-boolean v3, p0, Lcom/nispok/snackbar/Snackbar;->mUsePhoneLayout:Z

    const/4 v4, -0x2

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    .line 609
    iget-object p2, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {p2}, Lcom/nispok/snackbar/enums/SnackbarType;->getMinHeight()I

    move-result p2

    invoke-static {p2, p4}, Lcom/nispok/snackbar/Snackbar;->dpToPx(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMinimumHeight(I)V

    .line 610
    iget-object p2, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {p2}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result p2

    invoke-static {p2, p4}, Lcom/nispok/snackbar/Snackbar;->dpToPx(IF)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMaxHeight(I)V

    .line 611
    iget p2, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    invoke-virtual {p1, p2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setBackgroundColor(I)V

    const/4 p2, -0x1

    .line 612
    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mPhonePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {p3, p2, v4, p4}, Lcom/nispok/snackbar/Snackbar;->createMarginLayoutParams(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    .line 615
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 616
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 618
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 622
    :cond_2
    sget-object v3, Lcom/nispok/snackbar/enums/SnackbarType;->SINGLE_LINE:Lcom/nispok/snackbar/enums/SnackbarType;

    iput-object v3, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 623
    sget v3, Lcom/nispok/snackbar/R$dimen;->sb__min_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMinimumWidth(I)V

    .line 624
    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    if-nez v3, :cond_3

    sget p2, Lcom/nispok/snackbar/R$dimen;->sb__max_width:I

    .line 626
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/nispok/snackbar/Snackbar;->mMaxWidthPercentage:Ljava/lang/Float;

    .line 627
    invoke-static {p2, v3}, Lcom/nispok/snackbar/DisplayCompat;->getWidthFromPercentage(Landroid/app/Activity;Ljava/lang/Float;)I

    move-result p2

    .line 624
    :goto_1
    invoke-virtual {p1, p2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setMaxWidth(I)V

    .line 628
    sget p2, Lcom/nispok/snackbar/R$drawable;->sb__bg:I

    invoke-virtual {p1, p2}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->setBackgroundResource(I)V

    .line 629
    invoke-virtual {p1}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    .line 630
    iget v3, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 632
    iget-object p2, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    .line 633
    invoke-virtual {p2}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxHeight()I

    move-result p2

    invoke-static {p2, p4}, Lcom/nispok/snackbar/Snackbar;->dpToPx(IF)I

    move-result p2

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mWidePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    .line 632
    invoke-static {p3, v4, p2, p4}, Lcom/nispok/snackbar/Snackbar;->createMarginLayoutParams(Landroid/view/ViewGroup;IILcom/nispok/snackbar/Snackbar$SnackbarPosition;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    .line 635
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    if-eqz p3, :cond_4

    .line 636
    sget p3, Lcom/nispok/snackbar/R$drawable;->sb__divider_bg:I

    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 637
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 638
    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 640
    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :goto_2
    iget p3, p0, Lcom/nispok/snackbar/Snackbar;->mDrawable:I

    iget p4, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedDrawable:I

    if-eq p3, p4, :cond_5

    .line 645
    iget p3, p0, Lcom/nispok/snackbar/Snackbar;->mDrawable:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/nispok/snackbar/Snackbar;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 647
    :cond_5
    sget p3, Lcom/nispok/snackbar/R$id;->sb__text:I

    invoke-virtual {p1, p3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    .line 648
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 651
    iget p3, p0, Lcom/nispok/snackbar/Snackbar;->mTextColor:I

    iget p4, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    if-eq p3, p4, :cond_6

    .line 652
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget p4, p0, Lcom/nispok/snackbar/Snackbar;->mTextColor:I

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :cond_6
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {p4}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 657
    sget p3, Lcom/nispok/snackbar/R$id;->sb__action:I

    invoke-virtual {p1, p3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    .line 658
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 659
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->requestLayout()V

    .line 660
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mActionTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 663
    iget p3, p0, Lcom/nispok/snackbar/Snackbar;->mActionColor:I

    iget p4, p0, Lcom/nispok/snackbar/Snackbar;->mUndefinedColor:I

    if-eq p3, p4, :cond_7

    .line 664
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget p4, p0, Lcom/nispok/snackbar/Snackbar;->mActionColor:I

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 667
    :cond_7
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    new-instance p4, Lcom/nispok/snackbar/Snackbar$4;

    invoke-direct {p4, p0}, Lcom/nispok/snackbar/Snackbar$4;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    invoke-virtual {p4}, Lcom/nispok/snackbar/enums/SnackbarType;->getMaxLines()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_3

    .line 688
    :cond_8
    iget-object p3, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    :goto_3
    sget p3, Lcom/nispok/snackbar/R$id;->sb__inner:I

    invoke-virtual {p1, p3}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 692
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 694
    iget-boolean p3, p0, Lcom/nispok/snackbar/Snackbar;->mCanSwipeToDismiss:Z

    if-eqz p3, :cond_9

    sget p3, Lcom/nispok/snackbar/R$bool;->sb__is_swipeable:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 695
    new-instance p3, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;

    const/4 p4, 0x0

    new-instance v0, Lcom/nispok/snackbar/Snackbar$5;

    invoke-direct {v0, p0}, Lcom/nispok/snackbar/Snackbar$5;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-direct {p3, p0, p4, v0}, Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lcom/nispok/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_9
    return-object p2
.end method

.method private isIndefiniteDuration()Z
    .locals 5

    .line 941
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v0

    sget-object v2, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v2}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNavigationBarHidden(Landroid/view/ViewGroup;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 947
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    return v1

    .line 951
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowSystemUiVisibility()I

    move-result p1

    const/16 v0, 0x200

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isNavigationBarTranslucent(Landroid/app/Activity;)Z
    .locals 3

    .line 958
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ge v0, v2, :cond_0

    return v1

    .line 962
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, 0x8000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1224
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1226
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private shouldStartTimer()Z
    .locals 1

    .line 937
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->isIndefiniteDuration()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static shouldUsePhoneLayout(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 589
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/nispok/snackbar/R$bool;->sb__is_phone:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V
    .locals 3

    .line 836
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 840
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 841
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 842
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Landroid/view/View;->getElevation()F

    move-result v1

    .line 844
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getElevation()F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 845
    invoke-virtual {p0, v1}, Lcom/nispok/snackbar/Snackbar;->setElevation(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_1
    invoke-virtual {p3, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->bringToFront()V

    .line 854
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p2, v0, :cond_2

    .line 855
    invoke-virtual {p3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 856
    invoke-virtual {p3}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    const/4 p2, 0x1

    .line 859
    iput-boolean p2, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    .line 860
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    .line 862
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/nispok/snackbar/Snackbar$6;

    invoke-direct {p2, p0}, Lcom/nispok/snackbar/Snackbar$6;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 881
    iget-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mShowAnimated:Z

    if-nez p1, :cond_4

    .line 882
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->shouldStartTimer()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 883
    invoke-direct {p0}, Lcom/nispok/snackbar/Snackbar;->startTimer()V

    :cond_3
    return-void

    .line 888
    :cond_4
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/nispok/snackbar/Snackbar;->mPhonePosition:Lcom/nispok/snackbar/Snackbar$SnackbarPosition;

    invoke-static {p2}, Lcom/nispok/snackbar/Snackbar;->getInAnimationResource(Lcom/nispok/snackbar/Snackbar$SnackbarPosition;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 889
    new-instance p2, Lcom/nispok/snackbar/Snackbar$7;

    invoke-direct {p2, p0}, Lcom/nispok/snackbar/Snackbar$7;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 922
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startTimer()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getDuration()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nispok/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startTimer(J)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateWindowInsets(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v0, 0x0

    .line 735
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 742
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 744
    invoke-direct {p0, p1}, Lcom/nispok/snackbar/Snackbar;->isNavigationBarTranslucent(Landroid/app/Activity;)Z

    move-result p1

    .line 745
    invoke-direct {p0, v1}, Lcom/nispok/snackbar/Snackbar;->isNavigationBarHidden(Landroid/view/ViewGroup;)Z

    move-result v3

    .line 747
    iget-object v4, p0, Lcom/nispok/snackbar/Snackbar;->mDisplayFrame:Landroid/graphics/Rect;

    .line 748
    iget-object v5, p0, Lcom/nispok/snackbar/Snackbar;->mRealDisplaySize:Landroid/graphics/Point;

    .line 749
    iget-object v6, p0, Lcom/nispok/snackbar/Snackbar;->mDisplaySize:Landroid/graphics/Point;

    .line 751
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 753
    invoke-static {v2, v5}, Lcom/nispok/snackbar/DisplayCompat;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 754
    invoke-static {v2, v6}, Lcom/nispok/snackbar/DisplayCompat;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 756
    iget v1, v6, Landroid/graphics/Point;->x:I

    iget v2, v5, Landroid/graphics/Point;->x:I

    if-ge v1, v2, :cond_2

    if-nez p1, :cond_1

    if-eqz v3, :cond_4

    .line 759
    :cond_1
    iget p1, v5, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v1

    .line 760
    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 761
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 763
    :cond_2
    iget v1, v6, Landroid/graphics/Point;->y:I

    iget v2, v5, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_4

    if-nez p1, :cond_3

    if-eqz v3, :cond_4

    .line 767
    :cond_3
    iget p1, v5, Landroid/graphics/Point;->y:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    .line 768
    iget v1, v5, Landroid/graphics/Point;->y:I

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 769
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    :cond_4
    :goto_0
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 145
    new-instance v0, Lcom/nispok/snackbar/Snackbar;

    invoke-direct {v0, p0}, Lcom/nispok/snackbar/Snackbar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public actionLabel(I)Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->actionLabel(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method public actionLabel(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    .line 266
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 267
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->snackbarAction:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public actionListener(Lcom/nispok/snackbar/listeners/ActionClickListener;)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mActionClickListener:Lcom/nispok/snackbar/listeners/ActionClickListener;

    return-object p0
.end method

.method public animation(Z)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 436
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mShowAnimated:Z

    .line 437
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mDismissAnimated:Z

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 980
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissAnimated:Z

    invoke-direct {p0, v0}, Lcom/nispok/snackbar/Snackbar;->dismiss(Z)V

    return-void
.end method

.method public dismissAnimation(Z)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 459
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mDismissAnimated:Z

    return-object p0
.end method

.method public dismissByReplace()V
    .locals 1

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsReplacePending:Z

    .line 976
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->dismiss()V

    return-void
.end method

.method public dismissOnActionClicked(Z)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z

    return-object p0
.end method

.method dispatchOnWindowSystemUiVisibilityChangedCompat(I)V
    .locals 0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->onWindowSystemUiVisibilityChangedCompat(I)V

    return-void
.end method

.method public duration(J)Lcom/nispok/snackbar/Snackbar;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->mCustomDuration:J

    :goto_0
    iput-wide p1, p0, Lcom/nispok/snackbar/Snackbar;->mCustomDuration:J

    return-object p0
.end method

.method public duration(Lcom/nispok/snackbar/Snackbar$SnackbarDuration;)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mDuration:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-object p0
.end method

.method public eventListener(Lcom/nispok/snackbar/listeners/EventListener;)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mEventListener:Lcom/nispok/snackbar/listeners/EventListener;

    return-object p0
.end method

.method public getActionColor()I
    .locals 1

    .line 1106
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mActionColor:I

    return v0
.end method

.method public getActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mActionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 1118
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mColor:I

    return v0
.end method

.method public getDuration()J
    .locals 5

    .line 1130
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mCustomDuration:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mDuration:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar;->mCustomDuration:J

    :goto_0
    return-wide v0
.end method

.method public getLineColor()I
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1153
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mOffset:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1114
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mTextColor:I

    return v0
.end method

.method public getType()Lcom/nispok/snackbar/enums/SnackbarType;
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    return-object v0
.end method

.method public isDimissing()Z
    .locals 1

    .line 1186
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1179
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    return v0
.end method

.method public lineColor(Ljava/lang/Integer;)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mLineColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public lineColorResource(I)Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->lineColor(Ljava/lang/Integer;)Lcom/nispok/snackbar/Snackbar;

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1043
    invoke-super {p0}, Lcom/nispok/snackbar/layouts/SnackbarLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1045
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowing:Z

    .line 1047
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onWindowSystemUiVisibilityChangedCompat(I)V
    .locals 0

    .line 1060
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1061
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mRefreshLayoutParamsMarginsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected refreshLayoutParamsMargins()V
    .locals 2

    .line 1066
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 1070
    :cond_0
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 1075
    :cond_1
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1077
    iget-object v1, p0, Lcom/nispok/snackbar/Snackbar;->mTargetActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1, v0}, Lcom/nispok/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1079
    invoke-virtual {p0, v0}, Lcom/nispok/snackbar/Snackbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x1020002

    .line 800
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 801
    invoke-static {p1}, Lcom/nispok/snackbar/Snackbar;->shouldUsePhoneLayout(Landroid/content/Context;)Z

    move-result v1

    .line 802
    invoke-direct {p0, p1, p1, v0, v1}, Lcom/nispok/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    .line 803
    invoke-virtual {p0, p1, v1}, Lcom/nispok/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 804
    invoke-direct {p0, p1, v1, v0}, Lcom/nispok/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 825
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/nispok/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    .line 826
    invoke-virtual {p0, v1, p2}, Lcom/nispok/snackbar/Snackbar;->updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 827
    invoke-direct {p0, v1, p2, p1}, Lcom/nispok/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAnimation(Z)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 448
    iput-boolean p1, p0, Lcom/nispok/snackbar/Snackbar;->mShowAnimated:Z

    return-object p0
.end method

.method public showByReplace(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 780
    invoke-virtual {p0, p1}, Lcom/nispok/snackbar/Snackbar;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public showByReplace(Landroid/view/ViewGroup;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mIsShowingByReplace:Z

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/nispok/snackbar/Snackbar;->show(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    .line 167
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/nispok/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public type(Lcom/nispok/snackbar/enums/SnackbarType;)Lcom/nispok/snackbar/Snackbar;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/nispok/snackbar/Snackbar;->mType:Lcom/nispok/snackbar/enums/SnackbarType;

    return-object p0
.end method

.method protected updateLayoutParamsMargins(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .line 1083
    iget-boolean v0, p0, Lcom/nispok/snackbar/Snackbar;->mUsePhoneLayout:Z

    if-eqz v0, :cond_0

    .line 1085
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1086
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginRight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1087
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginLeft:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1088
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginBottom:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1091
    :cond_0
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1092
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginRight:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1093
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginLeft:I

    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1094
    iget v0, p0, Lcom/nispok/snackbar/Snackbar;->mMarginBottom:I

    iget v1, p0, Lcom/nispok/snackbar/Snackbar;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1098
    :goto_0
    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/nispok/snackbar/Snackbar;->updateWindowInsets(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 1100
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1101
    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/nispok/snackbar/Snackbar;->mWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method
