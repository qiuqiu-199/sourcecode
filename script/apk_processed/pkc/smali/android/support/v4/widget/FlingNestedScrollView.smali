.class public Landroid/support/v4/widget/FlingNestedScrollView;
.super Landroid/widget/FrameLayout;
.source "FlingNestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/FlingNestedScrollView$SavedState;,
        Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;

.field private static final SCROLLVIEW_STYLEABLE:[I


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/FlingNestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    .line 91
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/FlingNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/FlingNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/FlingNestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 108
    iput-boolean v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 111
    iput-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 112
    iput v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 113
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    .line 114
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollConsumed:[I

    .line 115
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->initScrollView()V

    .line 116
    sget-object v2, Landroid/support/v4/widget/FlingNestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 117
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->setFillViewport(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    new-instance p1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 120
    new-instance p1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 121
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 122
    sget-object p1, Landroid/support/v4/widget/FlingNestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/FlingNestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/FlingNestedScrollView;)I
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result p0

    return p0
.end method

.method private canScroll()Z
    .locals 4

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 279
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_0

    if-ltz p0, :cond_0

    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int p0, p2, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private doScrollY(I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 883
    iget-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    .line 1165
    iput-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 1166
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->recycleVelocityTracker()V

    .line 1167
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->stopNestedScroll()V

    .line 1168
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1170
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_0
    return-void
.end method

.method private ensureGlows()V
    .locals 2

    .line 1188
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1189
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 1190
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1191
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1192
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1195
    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1196
    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    :cond_1
    :goto_0
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 12

    const/4 v0, 0x2

    .line 728
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v1, :cond_8

    .line 734
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 735
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 736
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    const/4 v9, 0x1

    if-ge p2, v8, :cond_7

    if-ge v7, p3, :cond_7

    if-ge p2, v7, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-nez v4, :cond_1

    move-object v4, v6

    move v5, v10

    goto :goto_4

    :cond_1
    if-eqz p1, :cond_2

    .line 743
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    if-lt v7, v11, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v8, v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v5, :cond_5

    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_5
    if-eqz v10, :cond_6

    move-object v4, v6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    move-object v4, v6

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return-object v4
.end method

.method private flingWithNestedDispatch(I)V
    .locals 6

    .line 1153
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    if-lez p1, :cond_1

    .line 1154
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result v3

    if-lt v0, v3, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v3, p1

    const/4 v4, 0x0

    .line 1155
    invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/FlingNestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_3

    .line 1158
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->fling(I)Z

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_4

    const/4 v1, 0x1

    .line 1159
    :cond_4
    invoke-virtual {p0, v4, v3, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->dispatchNestedFling(FFZ)Z

    :cond_5
    return-void
.end method

.method private getScrollRange()I
    .locals 4

    .line 718
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 719
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    .line 657
    iget v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 658
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 659
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 660
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVerticalScrollFactor:F

    .line 667
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVerticalScrollFactor:F

    return v0
.end method

.method private inChild(II)Z
    .locals 4

    .line 372
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    .line 376
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v0

    if-lt p2, v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p2, v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initScrollView()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 235
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->setWillNotDraw(Z)V

    .line 237
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTouchSlop:I

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mMinimumVelocity:I

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 391
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    .line 872
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1130
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 877
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 878
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 615
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 616
    iget v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 618
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 619
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    .line 620
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 621
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 6

    .line 803
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v0

    .line 804
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 807
    :goto_0
    invoke-direct {p0, v4, p2, p3}, Landroid/support/v4/widget/FlingNestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, p0

    :cond_1
    if-lt p2, v1, :cond_2

    if-gt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    sub-int/2addr p2, v1

    goto :goto_1

    :cond_3
    sub-int p2, p3, v0

    .line 816
    :goto_1
    invoke-direct {p0, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->doScrollY(I)V

    const/4 v2, 0x1

    .line 819
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p2

    if-eq v5, p2, :cond_4

    .line 820
    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_4
    return v2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 983
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 984
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 985
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 987
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 993
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 997
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollBy(II)V

    goto :goto_1

    .line 999
    :cond_1
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->smoothScrollBy(II)V

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    .line 252
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 253
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 255
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 7

    .line 827
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 832
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 833
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_1

    .line 835
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/FlingNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    iget-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 837
    iget-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 838
    iget-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 839
    invoke-direct {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->doScrollY(I)V

    .line 840
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_2

    :cond_1
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_2

    .line 843
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 844
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    .line 845
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 846
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 847
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_3

    move v2, v1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v3

    :cond_4
    if-ne p1, v4, :cond_5

    goto :goto_1

    :cond_5
    neg-int v2, v2

    .line 857
    :goto_1
    invoke-direct {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->doScrollY(I)V

    :goto_2
    if-eqz v0, :cond_6

    .line 860
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 861
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 863
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->setDescendantFocusability(I)V

    .line 864
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->requestFocus()Z

    .line 865
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->setDescendantFocusability(I)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public computeScroll()V
    .locals 14

    .line 959
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 960
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v4

    .line 961
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    .line 962
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    .line 963
    iget-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    if-ne v4, v1, :cond_0

    if-eq v0, v11, :cond_4

    .line 965
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result v12

    .line 966
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    if-lez v12, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    :goto_1
    sub-int v2, v1, v4

    sub-int v3, v11, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v5, v0

    move v7, v12

    .line 968
    invoke-virtual/range {v1 .. v10}, Landroid/support/v4/widget/FlingNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    if-eqz v13, :cond_4

    .line 970
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->ensureGlows()V

    if-gtz v11, :cond_3

    if-lez v0, :cond_3

    .line 972
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_2

    :cond_3
    if-lt v11, v12, :cond_4

    if-ge v0, v12, :cond_4

    .line 974
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_4
    :goto_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 7

    .line 1007
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1010
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v0

    .line 1011
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1013
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1014
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    .line 1018
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_2

    sub-int/2addr v3, v4

    .line 1023
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4

    .line 1024
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 1025
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_0

    .line 1027
    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 1030
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1032
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 1033
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6

    .line 1034
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 1035
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_1

    .line 1037
    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1040
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_2
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 939
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .line 920
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    .line 921
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 925
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 926
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    .line 927
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 329
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 146
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1203
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    .line 1204
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    .line 1207
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1209
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1211
    iget-object v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1212
    iget-object v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1213
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1216
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1219
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1221
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1222
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v3

    neg-int v4, v2

    .line 1223
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    .line 1224
    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1225
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1226
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1230
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 334
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-eqz v0, :cond_5

    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 337
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v0, v3, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 347
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 340
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/FlingNestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/FlingNestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v2, 0x21

    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->pageScroll(I)Z

    :cond_4
    :goto_0
    return v1

    .line 358
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 359
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_6

    const/4 p1, 0x0

    .line 364
    :cond_6
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    if-eq p1, p0, :cond_7

    .line 365
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :cond_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fling(I)Z
    .locals 14

    .line 1142
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1143
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1144
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1145
    iget-object v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v12, 0x0

    div-int/lit8 v13, v0, 0x2

    move v7, p1

    invoke-virtual/range {v3 .. v13}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    .line 1146
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1147
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public fullScroll(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 786
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v3

    .line 787
    iget-object v4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 788
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_1

    .line 790
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 792
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 793
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 794
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 798
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 217
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 221
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    return v1
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .line 207
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    return v1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    .line 944
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p2, v0, p3}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    .line 946
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 947
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 952
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, v0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p5, p3}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 954
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 955
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1108
    iput-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 628
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    .line 632
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    .line 634
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 635
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result v0

    .line 636
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_3

    .line 645
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    iget-boolean v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    return v2

    .line 417
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 444
    :pswitch_0
    iget v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    if-eq v0, v3, :cond_5

    .line 446
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid pointerId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 450
    :cond_2
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 451
    iget v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 452
    iget v5, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_5

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_5

    .line 453
    iput-boolean v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 454
    iput v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 455
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 456
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 457
    iput v4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    .line 458
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 460
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 438
    :pswitch_1
    iput-boolean v4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 439
    iput v3, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    .line 440
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->recycleVelocityTracker()V

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->stopNestedScroll()V

    goto :goto_0

    .line 423
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 425
    iput-boolean v4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 426
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->recycleVelocityTracker()V

    goto :goto_0

    .line 428
    :cond_3
    iput v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 429
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    .line 430
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->initOrResetVelocityTracker()V

    .line 431
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 432
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    .line 433
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->startNestedScroll(I)Z

    goto :goto_0

    .line 470
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 473
    :cond_5
    :goto_0
    iget-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1080
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1081
    iput-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLayoutDirty:Z

    .line 1082
    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {p2, p0}, Landroid/support/v4/widget/FlingNestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1083
    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 p2, 0x0

    .line 1086
    iput-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1087
    iget-boolean p4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_4

    .line 1088
    iget-object p4, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSavedState:Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    if-eqz p4, :cond_1

    .line 1089
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSavedState:Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    iget v0, v0, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollTo(II)V

    .line 1090
    iput-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSavedState:Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    .line 1093
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    sub-int/2addr p5, p3

    .line 1094
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1095
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_3

    .line 1096
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollTo(II)V

    goto :goto_1

    .line 1097
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_4

    .line 1098
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollTo(II)V

    .line 1102
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1103
    iput-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 306
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 307
    iget-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mFillViewport:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 311
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 312
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getMeasuredHeight()I

    move-result v0

    .line 313
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 314
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v2, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 317
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 319
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 320
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    float-to-int p1, p3

    .line 187
    invoke-direct {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->flingWithNestedDispatch(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 175
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    .line 176
    invoke-virtual {p0, p2, p5}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollBy(II)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result p2

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/FlingNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    .line 167
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 671
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0x82

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 p1, 0x21

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1064
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 1065
    invoke-direct {p0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1066
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1241
    check-cast p1, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    .line 1242
    invoke-virtual {p1}, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1243
    iput-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSavedState:Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    .line 1244
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1248
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1249
    new-instance v1, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1250
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    iput v0, v1, Landroid/support/v4/widget/FlingNestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1113
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p2, 0x0

    .line 1115
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/widget/FlingNestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1116
    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1117
    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1118
    iget-object p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1119
    invoke-direct {p0, p1}, Landroid/support/v4/widget/FlingNestedScrollView;->doScrollY(I)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 478
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 479
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 480
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 482
    iput v1, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    .line 485
    :cond_0
    iget v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    int-to-float v2, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v2, -0x1

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 601
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/FlingNestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 602
    iget v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    invoke-static {v11, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {v11, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    goto/16 :goto_4

    .line 596
    :pswitch_2
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 597
    invoke-static {v11, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 598
    invoke-static {v11, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    goto/16 :goto_4

    .line 588
    :pswitch_3
    iget-boolean v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 589
    iput v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    .line 590
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->endDrag()V

    goto/16 :goto_4

    .line 523
    :pswitch_4
    iget v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    invoke-static {v11, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v15

    if-ne v15, v2, :cond_1

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 527
    :cond_1
    invoke-static {v11, v15}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    float-to-int v0, v0

    .line 528
    iget v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    sub-int/2addr v2, v0

    .line 529
    iget-object v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    invoke-virtual {v10, v1, v2, v3, v4}, Landroid/support/v4/widget/FlingNestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    iget-object v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollConsumed:[I

    aget v3, v3, v14

    sub-int/2addr v2, v3

    .line 531
    iget-object v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v3, v3, v14

    int-to-float v3, v3

    invoke-virtual {v12, v13, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 532
    iget v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    iget-object v4, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v4, v4, v14

    add-int/2addr v3, v4

    iput v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    .line 535
    :cond_2
    iget-boolean v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_5

    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 538
    invoke-interface {v3, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 541
    :cond_3
    iput-boolean v14, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-lez v2, :cond_4

    .line 543
    iget v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 545
    :cond_4
    iget v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mTouchSlop:I

    add-int/2addr v2, v3

    :cond_5
    :goto_0
    move v9, v2

    .line 549
    iget-boolean v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_11

    .line 550
    iget-object v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v2, v2, v14

    sub-int/2addr v0, v2

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v16

    .line 552
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollRange()I

    move-result v8

    .line 553
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v14, :cond_6

    if-lez v8, :cond_6

    goto :goto_1

    :cond_6
    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v17, 0x1

    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v0, v10

    move v2, v9

    move v6, v8

    move/from16 v20, v8

    move/from16 v8, v18

    move v13, v9

    move/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/FlingNestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->hasNestedScrollingParent()Z

    move-result v0

    if-nez v0, :cond_8

    .line 556
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 559
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    sub-int v4, v13, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 561
    iget-object v5, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/FlingNestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 562
    iget v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 563
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v0, v0, v14

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 564
    iget v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScrollOffset:[I

    aget v1, v1, v14

    add-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mNestedYOffset:I

    goto/16 :goto_4

    :cond_9
    if-eqz v17, :cond_11

    .line 566
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->ensureGlows()V

    add-int v0, v16, v13

    if-gez v0, :cond_a

    .line 569
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v11, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 570
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 571
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_3

    :cond_a
    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 574
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v11, v15}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 575
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 576
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 580
    :cond_b
    :goto_3
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_11

    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 581
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_4

    .line 510
    :pswitch_5
    iget-boolean v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 512
    iget v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 513
    iget v1, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 514
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mMinimumVelocity:I

    if-le v1, v3, :cond_d

    neg-int v0, v0

    .line 515
    invoke-direct {v10, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->flingWithNestedDispatch(I)V

    .line 518
    :cond_d
    iput v2, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    .line 519
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->endDrag()V

    goto :goto_4

    .line 490
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 494
    :cond_e
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v14

    iput-boolean v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 497
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 501
    :cond_f
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 502
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 505
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mLastMotionY:I

    .line 506
    invoke-static {v11, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    .line 507
    invoke-virtual {v10, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->startNestedScroll(I)Z

    .line 605
    :cond_11
    :goto_4
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_12

    .line 606
    iget-object v0, v10, Landroid/support/v4/widget/FlingNestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 609
    :cond_12
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v14

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .locals 5

    .line 675
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result p9

    .line 676
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->computeHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 677
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->computeVerticalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz p9, :cond_3

    if-ne p9, v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eqz p9, :cond_5

    if-ne p9, v3, :cond_4

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p9, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p9, 0x1

    :goto_5
    add-int/2addr p3, p1

    if-nez v0, :cond_6

    const/4 p7, 0x0

    :cond_6
    add-int/2addr p4, p2

    if-nez p9, :cond_7

    const/4 p8, 0x0

    :cond_7
    neg-int p1, p7

    add-int p2, p7, p5

    neg-int p5, p8

    add-int/2addr p6, p8

    if-le p3, p2, :cond_8

    move p1, p2

    :goto_6
    const/4 p2, 0x1

    goto :goto_7

    :cond_8
    if-ge p3, p1, :cond_9

    goto :goto_6

    :cond_9
    move p1, p3

    const/4 p2, 0x0

    :goto_7
    if-le p4, p6, :cond_a

    move p4, p6

    :goto_8
    const/4 p3, 0x1

    goto :goto_9

    :cond_a
    if-ge p4, p5, :cond_b

    move p4, p5

    goto :goto_8

    :cond_b
    const/4 p3, 0x0

    .line 712
    :goto_9
    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/support/v4/widget/FlingNestedScrollView;->onOverScrolled(IIZZ)V

    if-nez p2, :cond_c

    if-eqz p3, :cond_d

    :cond_c
    const/4 v2, 0x1

    :cond_d
    return v2
.end method

.method public pageScroll(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 763
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_1

    .line 765
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 766
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    sub-int/2addr v0, v1

    .line 768
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 769
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 770
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 774
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 775
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_2

    .line 776
    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 780
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 781
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollAndFocus(III)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1048
    iget-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    .line 1049
    invoke-direct {p0, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_0

    .line 1051
    :cond_0
    iput-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1054
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1070
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1071
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 407
    invoke-direct {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->recycleVelocityTracker()V

    .line 410
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1075
    iput-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mIsLayoutDirty:Z

    .line 1076
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .line 1176
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 1177
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1178
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/FlingNestedScrollView;->clamp(III)I

    move-result p1

    .line 1179
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->clamp(III)I

    move-result p2

    .line 1180
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 1181
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    .line 290
    iget-boolean v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 291
    iput-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mFillViewport:Z

    .line 292
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 6

    .line 893
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastScroll:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0xfa

    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 896
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 897
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/FlingNestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    .line 898
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 899
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr p2, v1

    .line 900
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 901
    iget-object p2, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIII)V

    .line 902
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 905
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 908
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->scrollBy(II)V

    .line 911
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mLastScroll:J

    :cond_2
    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    .line 916
    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/FlingNestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/FlingNestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/v4/widget/FlingNestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
