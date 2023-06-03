.class public Lorg/lucasr/twowayview/TwoWayView;
.super Landroid/widget/AdapterView;
.source "TwoWayView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lucasr/twowayview/TwoWayView$PositionScroller;,
        Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;,
        Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;,
        Lorg/lucasr/twowayview/TwoWayView$CheckForTap;,
        Lorg/lucasr/twowayview/TwoWayView$PerformClick;,
        Lorg/lucasr/twowayview/TwoWayView$WindowRunnnable;,
        Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;,
        Lorg/lucasr/twowayview/TwoWayView$SavedState;,
        Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;,
        Lorg/lucasr/twowayview/TwoWayView$RecycleBin;,
        Lorg/lucasr/twowayview/TwoWayView$LayoutParams;,
        Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;,
        Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;,
        Lorg/lucasr/twowayview/TwoWayView$Orientation;,
        Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field private static final LAYOUT_FORCE_TOP:I = 0x1

.field private static final LAYOUT_MOVE_SELECTION:I = 0x6

.field private static final LAYOUT_NORMAL:I = 0x0

.field private static final LAYOUT_SET_SELECTION:I = 0x2

.field private static final LAYOUT_SPECIFIC:I = 0x4

.field private static final LAYOUT_SYNC:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "TwoWayView"

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0xa

.field private static final NO_POSITION:I = -0x1

.field public static final STATE_NOTHING:[I

.field private static final SYNC_FIRST_POSITION:I = 0x1

.field private static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field private static final SYNC_SELECTED_POSITION:I = 0x0

.field private static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field private static final TOUCH_MODE_DOWN:I = 0x0

.field private static final TOUCH_MODE_DRAGGING:I = 0x3

.field private static final TOUCH_MODE_FLINGING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field private static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field private static final TOUCH_MODE_REST:I = -0x1

.field private static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1


# instance fields
.field private mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

.field private mBlockLayoutRequests:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

.field private final mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDataChanged:Z

.field private mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mDrawSelectorOnTop:Z

.field private mEmptyView:Landroid/view/View;

.field private mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFirstPosition:I

.field private final mFlingVelocity:I

.field private mHasStableIds:Z

.field private mInLayout:Z

.field private mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mIsVertical:Z

.field private mItemCount:I

.field private mItemMargin:I

.field private mItemsCanFocus:Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field private mLastTouchPos:F

.field private mLayoutMode:I

.field private final mMaximumVelocity:I

.field private mMotionPosition:I

.field private mNeedSync:Z

.field private mNextSelectedPosition:I

.field private mNextSelectedRowId:J

.field private mOldItemCount:I

.field private mOldSelectedPosition:I

.field private mOldSelectedRowId:J

.field private mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

.field private mOverScroll:I

.field private final mOverscrollDistance:I

.field private mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

.field private mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

.field private mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

.field private mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

.field private mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field private mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

.field private final mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

.field private mResurrectToPosition:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSelectedPosition:I

.field private mSelectedRowId:J

.field private mSelectedStart:I

.field private mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

.field private mSelector:Landroid/graphics/drawable/Drawable;

.field private mSelectorPosition:I

.field private final mSelectorRect:Landroid/graphics/Rect;

.field private mSpecificStart:I

.field private mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mSyncMode:I

.field private mSyncPosition:I

.field private mSyncRowId:J

.field private mSyncSize:J

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchRemainderPos:F

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Lorg/lucasr/twowayview/TwoWayView;->STATE_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, p1, p2, v0}, Lorg/lucasr/twowayview/TwoWayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 324
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 160
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    .line 326
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 328
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    const/4 v2, -0x1

    .line 329
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 330
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    .line 332
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    .line 334
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 335
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchSlop:I

    .line 336
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mMaximumVelocity:I

    .line 337
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFlingVelocity:I

    .line 338
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    .line 340
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    .line 342
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    .line 344
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    .line 346
    new-instance v3, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;-><init>(Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    .line 348
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 350
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    .line 352
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 354
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 355
    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 356
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 357
    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    .line 358
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 359
    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 361
    sget-object v3, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    .line 363
    new-instance v3, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-direct {v3, p0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 365
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 367
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setClickable(Z)V

    .line 368
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setFocusableInTouchMode(Z)V

    .line 369
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setWillNotDraw(Z)V

    .line 370
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 371
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setWillNotDraw(Z)V

    .line 372
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setClipToPadding(Z)V

    .line 374
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOverScrollMode(Landroid/view/View;I)V

    .line 376
    sget-object v3, Lorg/lucasr/twowayview/R$styleable;->TwoWayView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 378
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    .line 381
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 383
    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_1

    .line 388
    invoke-static {}, Lorg/lucasr/twowayview/TwoWayView$Orientation;->values()[Lorg/lucasr/twowayview/TwoWayView$Orientation;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->setOrientation(Lorg/lucasr/twowayview/TwoWayView$Orientation;)V

    :cond_1
    const/4 p2, 0x3

    .line 391
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2

    .line 393
    invoke-static {}, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->values()[Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->setChoiceMode(Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;)V

    .line 396
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$1200(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    return p0
.end method

.method static synthetic access$1702(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    return p1
.end method

.method static synthetic access$1800(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return p0
.end method

.method static synthetic access$1802(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return p1
.end method

.method static synthetic access$1900(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->rememberSyncState()V

    return-void
.end method

.method static synthetic access$2100(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V

    return-void
.end method

.method static synthetic access$2200(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$2202(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2300(Lorg/lucasr/twowayview/TwoWayView;)J
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    return-wide v0
.end method

.method static synthetic access$2302(Lorg/lucasr/twowayview/TwoWayView;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2402(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    return p1
.end method

.method static synthetic access$2502(Lorg/lucasr/twowayview/TwoWayView;J)J
    .locals 0

    .line 91
    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    return-wide p1
.end method

.method static synthetic access$2602(Lorg/lucasr/twowayview/TwoWayView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$2900(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method static synthetic access$3000(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    return p0
.end method

.method static synthetic access$3400(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    return p0
.end method

.method static synthetic access$3502(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    return p1
.end method

.method static synthetic access$3600(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    return-void
.end method

.method static synthetic access$3700(Lorg/lucasr/twowayview/TwoWayView;ILandroid/view/View;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/lucasr/twowayview/TwoWayView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$3900(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->triggerCheckForLongPress()V

    return-void
.end method

.method static synthetic access$400(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    return p0
.end method

.method static synthetic access$4000(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;IJ)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lucasr/twowayview/TwoWayView;->performLongPress(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$402(Lorg/lucasr/twowayview/TwoWayView;I)I
    .locals 0

    .line 91
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$4100(Lorg/lucasr/twowayview/TwoWayView;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$4700(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    return p0
.end method

.method static synthetic access$4900(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;)I
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/lucasr/twowayview/TwoWayView;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/lucasr/twowayview/TwoWayView;)I
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lorg/lucasr/twowayview/TwoWayView;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$602(Lorg/lucasr/twowayview/TwoWayView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method private adjustViewsStartOrEnd()V
    .locals 3

    .line 5390
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5394
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5398
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    if-gez v2, :cond_1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-eqz v2, :cond_2

    .line 5399
    :cond_1
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v1, v2

    :cond_2
    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    neg-int v0, v0

    .line 5408
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    :cond_4
    return-void
.end method

.method private amountToScroll(II)I
    .locals 7

    .line 2398
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2400
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x82

    if-eq p1, v3, :cond_6

    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    goto :goto_2

    .line 2444
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result p1

    if-eq p2, v1, :cond_1

    .line 2448
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, p2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2451
    :goto_0
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v3, v0

    .line 2452
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-lez v3, :cond_2

    .line 2456
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v3

    add-int/2addr v3, p1

    goto :goto_1

    :cond_2
    move v3, p1

    .line 2459
    :goto_1
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v4

    .line 2460
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    if-lt v4, v3, :cond_3

    return v2

    :cond_3
    if-eq p2, v1, :cond_4

    sub-int/2addr v0, v3

    .line 2467
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result p2

    if-lt v0, p2, :cond_4

    return v2

    :cond_4
    sub-int/2addr v3, v4

    .line 2475
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez p2, :cond_5

    .line 2476
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    .line 2480
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2483
    :cond_5
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 2403
    :cond_6
    :goto_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result p1

    add-int/lit8 v3, v0, -0x1

    if-eq p2, v1, :cond_7

    .line 2407
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v4, p2, v4

    goto :goto_3

    :cond_7
    move v4, v3

    .line 2410
    :goto_3
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 2411
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2414
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_8

    .line 2415
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v5

    sub-int v5, p1, v5

    goto :goto_4

    :cond_8
    move v5, p1

    .line 2418
    :goto_4
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v6

    .line 2419
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v4

    if-gt v4, v5, :cond_9

    return v2

    :cond_9
    if-eq p2, v1, :cond_a

    sub-int p2, v5, v6

    .line 2426
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v1

    if-lt p2, v1, :cond_a

    return v2

    :cond_a
    sub-int/2addr v4, v5

    .line 2434
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne p2, v0, :cond_b

    .line 2435
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p2, p1

    .line 2439
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2442
    :cond_b
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .locals 1

    .line 2500
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2504
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2505
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 2518
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result p1

    .line 2519
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    if-le v0, p1, :cond_5

    sub-int p2, v0, p1

    .line 2523
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge p3, p1, :cond_5

    .line 2524
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result p1

    add-int/2addr p2, p1

    goto :goto_3

    .line 2508
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result p1

    .line 2509
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_2
    if-ge v0, p1, :cond_5

    sub-int/2addr p1, v0

    if-lez p3, :cond_4

    .line 2514
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result p2

    add-int/2addr p1, p2

    :cond_4
    move p2, p1

    :cond_5
    :goto_3
    return p2
.end method

.method private arrowScroll(I)Z
    .locals 2

    .line 2052
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2055
    :try_start_0
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    .line 2057
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->arrowScrollImpl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    :cond_0
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    return v0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    throw p1
.end method

.method private arrowScrollFocused(I)Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;
    .locals 9

    .line 2167
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2169
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x42

    const/16 v2, 0x82

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2173
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2174
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2175
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_a

    :cond_0
    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_1

    goto :goto_3

    .line 2191
    :cond_1
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 2193
    :goto_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v6

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    sub-int/2addr v6, v5

    if-eqz v0, :cond_4

    .line 2197
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v6

    .line 2202
    :goto_2
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7

    .line 2178
    :cond_5
    :goto_3
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 2179
    :goto_4
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v6

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getArrowScrollPreviewLength()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    add-int/2addr v6, v5

    if-eqz v0, :cond_8

    .line 2184
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    goto :goto_6

    :cond_8
    move v0, v6

    .line 2189
    :goto_6
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2205
    :goto_7
    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    move v5, v0

    .line 2206
    :goto_8
    iget-boolean v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    .line 2207
    :goto_9
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v0, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2209
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v5, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_a
    const/4 v5, 0x0

    if-eqz v0, :cond_13

    .line 2213
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v6

    .line 2217
    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_11

    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v6, v7, :cond_11

    .line 2218
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePositionOnScreen(I)I

    move-result v7

    if-eq p1, v2, :cond_c

    if-ne p1, v1, :cond_b

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v1, 0x1

    :goto_c
    const/16 v2, 0x21

    if-eq p1, v2, :cond_e

    const/16 v2, 0x11

    if-ne p1, v2, :cond_d

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    :cond_e
    :goto_d
    if-eq v7, v8, :cond_11

    if-eqz v1, :cond_f

    if-lt v7, v6, :cond_10

    :cond_f
    if-eqz v3, :cond_11

    if-le v7, v6, :cond_11

    :cond_10
    return-object v5

    .line 2232
    :cond_11
    invoke-direct {p0, p1, v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v1

    .line 2234
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getMaxScrollAmount()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 2237
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2238
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    invoke-virtual {p1, v6, v1}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->populate(II)V

    .line 2239
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    return-object p1

    .line 2240
    :cond_12
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->distanceToView(Landroid/view/View;)I

    move-result v1

    if-ge v1, v2, :cond_13

    .line 2245
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2246
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    invoke-virtual {p1, v6, v2}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->populate(II)V

    .line 2247
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mArrowScrollFocusResult:Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    return-object p1

    :cond_13
    return-object v5
.end method

.method private arrowScrollImpl(I)Z
    .locals 10

    .line 2298
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 2300
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2304
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2305
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 2307
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePositionOnScreen(I)I

    move-result v3

    .line 2308
    invoke-direct {p0, p1, v3}, Lorg/lucasr/twowayview/TwoWayView;->amountToScroll(II)I

    move-result v4

    .line 2311
    iget-boolean v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->arrowScrollFocused(I)Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_2

    .line 2313
    invoke-virtual {v5}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v3

    .line 2314
    invoke-virtual {v5}, Lorg/lucasr/twowayview/TwoWayView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v4

    :cond_2
    const/4 v7, 0x1

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    if-eq v3, v9, :cond_6

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 2319
    :goto_2
    invoke-direct {p0, v0, p1, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2321
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 2322
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 2324
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2327
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 2330
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2332
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2337
    :cond_5
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    move v2, v3

    const/4 v8, 0x1

    :cond_6
    if-lez v4, :cond_9

    const/16 v8, 0x21

    if-eq p1, v8, :cond_8

    const/16 v8, 0x11

    if-ne p1, v8, :cond_7

    goto :goto_3

    :cond_7
    neg-int v4, v4

    .line 2341
    :cond_8
    :goto_3
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    const/4 v8, 0x1

    .line 2348
    :cond_9
    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz p1, :cond_b

    if-nez v5, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2350
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 2351
    invoke-direct {p0, p1, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->distanceToView(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_b

    .line 2352
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_b
    if-ne v3, v9, :cond_c

    if-eqz v0, :cond_c

    .line 2357
    invoke-direct {p0, v0, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 2360
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 2364
    iput v9, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    move-object v0, v6

    :cond_c
    if-eqz v8, :cond_f

    if-eqz v0, :cond_d

    .line 2369
    invoke-direct {p0, v2, v0}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 2370
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 2373
    :cond_d
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result p1

    if-nez p1, :cond_e

    .line 2374
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 2377
    :cond_e
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    return v7

    :cond_f
    return v1
.end method

.method private awakenScrollbarsInternal()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 3270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->awakenScrollBars()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cancelCheckForLongPress()V
    .locals 1

    .line 3131
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    if-nez v0, :cond_0

    return-void

    .line 3135
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private cancelCheckForTap()V
    .locals 1

    .line 3112
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    if-nez v0, :cond_0

    return-void

    .line 3116
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkFocus()V
    .locals 4

    .line 6283
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6284
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6289
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-super {p0, v3}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    if-eqz v0, :cond_2

    .line 6290
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 6292
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 6293
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateEmptyStatus()V

    :cond_3
    return-void
.end method

.method private checkSelectionChanged()V
    .locals 5

    .line 3536
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    iget-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3537
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->selectionChanged()V

    .line 3538
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    .line 3539
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method private cloneCheckStates()Landroid/util/SparseBooleanArray;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 5414
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5420
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 5421
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    goto :goto_1

    .line 5423
    :cond_1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v1, 0x0

    .line 5425
    :goto_0
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5426
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private contentFits()Z
    .locals 5

    .line 3087
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3092
    :cond_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 3096
    :cond_1
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sub-int/2addr v0, v1

    .line 3097
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3099
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v4

    if-lt v2, v4, :cond_2

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v2

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private correctTooHigh(I)V
    .locals 4

    .line 5296
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 5297
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 5302
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p1

    .line 5305
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    .line 5306
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    .line 5312
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 5313
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    if-lez v1, :cond_3

    .line 5317
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-gtz v3, :cond_1

    if-ge v2, v0, :cond_3

    .line 5318
    :cond_1
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v3, :cond_2

    sub-int/2addr v0, v2

    .line 5320
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5324
    :cond_2
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    .line 5326
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v0, :cond_3

    .line 5327
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p1

    .line 5331
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr p1, v1

    invoke-direct {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5334
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private correctTooLow(I)V
    .locals 5

    .line 5342
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 5346
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 5348
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v1

    .line 5349
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v2

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 5355
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5356
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    .line 5358
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lez v0, :cond_4

    .line 5364
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-lt v4, p1, :cond_2

    if-le v3, v2, :cond_1

    goto :goto_0

    .line 5383
    :cond_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_4

    .line 5384
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_1

    .line 5365
    :cond_2
    :goto_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v4, p1, :cond_3

    sub-int/2addr v3, v2

    .line 5367
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    neg-int p1, v0

    .line 5371
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    .line 5373
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 p1, p1, -0x1

    if-ge v4, p1, :cond_4

    .line 5374
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p1

    add-int/lit8 v4, v4, 0x1

    .line 5378
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr p1, v0

    invoke-direct {p0, v4, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 5381
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 5628
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method private distanceToView(Landroid/view/View;)I
    .locals 4

    .line 2540
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2541
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2543
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result p1

    .line 2544
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v0

    .line 2546
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2547
    :goto_0
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    :goto_1
    const/4 v3, 0x0

    if-ge v2, p1, :cond_2

    sub-int v3, p1, v2

    goto :goto_2

    :cond_2
    if-le v1, v0, :cond_3

    sub-int v3, v1, v0

    :cond_3
    :goto_2
    return v3
.end method

.method private drawEndEdge(Landroid/graphics/Canvas;)Z
    .locals 5

    .line 3347
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3351
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3352
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v1

    .line 3353
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v2

    .line 3355
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    neg-int v3, v1

    int-to-float v3, v3

    int-to-float v2, v2

    .line 3356
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43340000    # 180.0f

    int-to-float v1, v1

    .line 3357
    invoke-virtual {p1, v2, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    .line 3359
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    .line 3360
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3363
    :goto_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 3364
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3379
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3380
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3381
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3382
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawStartEdge(Landroid/graphics/Canvas;)Z
    .locals 3

    .line 3327
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3331
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3332
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result p1

    return p1

    .line 3335
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3336
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    int-to-float v1, v1

    .line 3338
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43870000    # 270.0f

    .line 3339
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3341
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    .line 3342
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1
.end method

.method private fillAfter(II)Landroid/view/View;
    .locals 5

    .line 5151
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p2, v0, :cond_2

    .line 5153
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge p1, v2, :cond_2

    .line 5154
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5156
    :goto_1
    invoke-direct {p0, p1, p2, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p2

    .line 5157
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v3, v4

    if-eqz v2, :cond_1

    move-object v1, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p2, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private fillBefore(II)Landroid/view/View;
    .locals 5

    .line 5128
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v0, :cond_2

    if-ltz p1, :cond_2

    .line 5131
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5133
    :goto_1
    invoke-direct {p0, p1, p2, v4, v2}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p2

    .line 5134
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v3, v4

    if-eqz v2, :cond_1

    move-object v1, p2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    move p2, v3

    goto :goto_0

    :cond_2
    add-int/2addr p1, v2

    .line 5143
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    return-object v1
.end method

.method private fillBeforeAndAfter(Landroid/view/View;I)V
    .locals 2

    .line 5236
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, -0x1

    .line 5237
    invoke-direct {p0, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5239
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 5241
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    .line 5242
    invoke-direct {p0, p2, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    return-void
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .locals 2

    sub-int/2addr p2, p1

    .line 5212
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->reconcileSelectedPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 5214
    invoke-direct {p0, v0, p1, v1, v1}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    .line 5215
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5217
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_0

    .line 5218
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gt v1, p2, :cond_1

    sub-int/2addr p2, v1

    .line 5220
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 5223
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gt v1, p2, :cond_1

    sub-int/2addr p2, v1

    .line 5225
    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 5229
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 5230
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    return-object p1
.end method

.method private fillFromOffset(I)Landroid/view/View;
    .locals 2

    .line 5200
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5201
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5203
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 5204
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5207
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 3

    .line 5246
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    .line 5247
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 5249
    invoke-direct {p0, p2, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMinSelectionPixel(III)I

    move-result p2

    .line 5250
    invoke-direct {p0, p3, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMaxSelectionPixel(III)I

    move-result p3

    const/4 v0, 0x1

    .line 5252
    invoke-direct {p0, v1, p1, v0, v0}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    .line 5254
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    .line 5255
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v2

    if-le v2, p3, :cond_0

    sub-int/2addr v0, p2

    sub-int/2addr v2, p3

    .line 5267
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    neg-int p2, p2

    .line 5270
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_0
    if-ge v0, p2, :cond_1

    sub-int/2addr p2, v0

    sub-int/2addr p3, v2

    .line 5280
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5283
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5287
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    .line 5288
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    return-object p1
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 5

    .line 5170
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5171
    :goto_0
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p2

    .line 5174
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5176
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int/2addr v2, v3

    add-int/lit8 v3, p1, -0x1

    .line 5177
    invoke-direct {p0, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    move-result-object v2

    .line 5180
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 5182
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr v3, v4

    add-int/2addr p1, v1

    .line 5183
    invoke-direct {p0, p1, v3}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    move-result-object p1

    .line 5185
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 5187
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    :cond_1
    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    return-object p1
.end method

.method private findClosestMotionRowOrColumn(I)I
    .locals 2

    .line 3000
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 3005
    :cond_0
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    return p1

    .line 3009
    :cond_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private findMotionRowOrColumn(I)I
    .locals 4

    .line 2984
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2990
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2991
    invoke-direct {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 2992
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private findSyncPosition()I
    .locals 17

    move-object/from16 v0, p0

    .line 5434
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 5440
    :cond_0
    iget-wide v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    return v2

    .line 5448
    :cond_1
    iget v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    const/4 v6, 0x0

    .line 5449
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    .line 5450
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5452
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x64

    add-long/2addr v8, v10

    .line 5473
    iget-object v10, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v10, :cond_2

    return v2

    :cond_2
    move v11, v5

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    .line 5478
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-gtz v16, :cond_b

    .line 5479
    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v16, v14, v3

    if-nez v16, :cond_4

    return v5

    :cond_4
    if-ne v11, v1, :cond_5

    const/4 v14, 0x1

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-nez v12, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v15, :cond_7

    goto :goto_5

    :cond_7
    if-nez v15, :cond_a

    if-eqz v13, :cond_8

    if-nez v14, :cond_8

    goto :goto_4

    :cond_8
    if-nez v14, :cond_9

    if-nez v13, :cond_3

    if-nez v15, :cond_3

    :cond_9
    add-int/lit8 v12, v12, -0x1

    move v5, v12

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v5, v11

    goto :goto_0

    :cond_b
    :goto_5
    return v2
.end method

.method private finishEdgeGlows()V
    .locals 1

    .line 3317
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 3318
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 3321
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 3322
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    :cond_1
    return-void
.end method

.method private finishSmoothScrolling()V
    .locals 1

    const/4 v0, -0x1

    .line 3369
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v0, 0x0

    .line 3370
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 3372
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3373
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    :cond_0
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .line 3566
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3571
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1

    .line 3573
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 3574
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 3577
    :cond_1
    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :goto_0
    return-void
.end method

.method private forceValidFocusDirection(I)V
    .locals 1

    .line 1871
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1872
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Focus direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for vertical orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1874
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1875
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Focus direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private forceValidInnerFocusDirection(I)V
    .locals 1

    .line 1881
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1882
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT} for vertical orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1884
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 1885
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "direction must be one of {View.FOCUS_UP, View.FOCUS_DOWN} for horizontal orientation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private getArrowScrollPreviewLength()I
    .locals 3

    .line 2266
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getAvailableSize()I
    .locals 2

    .line 3039
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 3040
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 3042
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getChildEndEdge(Landroid/view/View;)I
    .locals 1

    .line 3051
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I
    .locals 2

    .line 4768
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 4769
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 4770
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    .line 4771
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    .line 4772
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 4774
    :cond_1
    iget p1, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->height:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private getChildMeasuredSize(Landroid/view/View;)I
    .locals 1

    .line 3059
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getChildSize(Landroid/view/View;)I
    .locals 1

    .line 3055
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getChildStartEdge(Landroid/view/View;)I
    .locals 1

    .line 3047
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I
    .locals 2

    .line 4757
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_0

    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 4758
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 4759
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 4760
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 4761
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 4763
    :cond_1
    iget p1, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->width:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private final getCurrVelocity()F
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 3261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3262
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 2972
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2965
    :pswitch_0
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2966
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 2967
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 2968
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    goto :goto_0

    .line 2943
    :cond_0
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2944
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2945
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 2946
    iget v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2936
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 2937
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 2938
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 2939
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    goto :goto_0

    .line 2957
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 2958
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 2959
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 2960
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2950
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 2951
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    .line 2952
    iget p0, p1, Landroid/graphics/Rect;->right:I

    .line 2953
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    :goto_0
    sub-int/2addr p0, p2

    sub-int/2addr v1, v0

    mul-int v1, v1, v1

    mul-int p0, p0, p0

    add-int/2addr v1, p0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEndEdge()I
    .locals 2

    .line 3027
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 3028
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 3030
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getFadingEdgeLength()I
    .locals 1

    .line 3063
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getMaxSelectionPixel(III)I
    .locals 1

    .line 3079
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    sub-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getMinSelectionPixel(III)I
    .locals 0

    if-lez p3, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private getScaledOverscrollDistance(Landroid/view/ViewConfiguration;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 3015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3019
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result p1

    return p1
.end method

.method private getSize()I
    .locals 1

    .line 3035
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getStartEdge()I
    .locals 1

    .line 3023
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0
.end method

.method private handleDataChanged()V
    .locals 7

    .line 4513
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4514
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->confirmCheckedPositionsById()V

    .line 4517
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clearTransientStateViews()V

    .line 4519
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_8

    .line 4525
    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz v4, :cond_3

    .line 4527
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4528
    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 4530
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    const/4 v5, 0x5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 4572
    :pswitch_0
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4573
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    return-void

    .line 4532
    :pswitch_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4537
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4538
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    return-void

    .line 4544
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->findSyncPosition()I

    move-result v4

    if-ltz v4, :cond_3

    .line 4547
    invoke-direct {p0, v4, v3}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 4550
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 4552
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncSize:J

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v0, v2

    if-nez v6, :cond_2

    .line 4555
    iput v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 4559
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4563
    :goto_0
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    return-void

    .line 4579
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 4581
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_4

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    if-gez v0, :cond_5

    const/4 v0, 0x0

    .line 4592
    :cond_5
    invoke-direct {p0, v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v4

    if-ltz v4, :cond_6

    .line 4595
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    return-void

    .line 4599
    :cond_6
    invoke-direct {p0, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-ltz v0, :cond_8

    .line 4601
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    return-void

    .line 4607
    :cond_7
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    if-ltz v0, :cond_8

    return-void

    .line 4614
    :cond_8
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    const/4 v0, -0x1

    .line 4615
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 4616
    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    .line 4617
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    .line 4618
    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 4619
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4620
    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 4621
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 4623
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDragChange(I)V
    .locals 3

    .line 2811
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2813
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2817
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ltz v0, :cond_1

    .line 2818
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 2822
    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    const/4 v1, 0x0

    .line 2826
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2828
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 2831
    :cond_2
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    move-result v2

    .line 2833
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2835
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    if-eqz v2, :cond_3

    neg-int v2, p1

    sub-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 2839
    invoke-direct {p0, p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->updateOverScrollState(II)V

    :cond_3
    return-void
.end method

.method private handleFocusWithinItem(I)Z
    .locals 3

    .line 2000
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidInnerFocusDirection(I)V

    .line 2002
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    .line 2004
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2005
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2007
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2010
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2011
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2017
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2018
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2020
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2030
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getRootView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2034
    invoke-direct {p0, p1, p0}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private handleKeyEvent(IILandroid/view/KeyEvent;)Z
    .locals 8

    .line 2581
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2585
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2586
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 2590
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const/16 v3, 0x3e

    const/16 v4, 0x11

    const/16 v5, 0x82

    const/16 v6, 0x21

    const/16 v7, 0x42

    if-eq p1, v3, :cond_f

    if-eq p1, v7, :cond_e

    packed-switch p1, :pswitch_data_0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_5

    .line 2679
    :pswitch_0
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2680
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x42

    :goto_0
    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2672
    :pswitch_1
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2673
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_3

    const/16 v4, 0x21

    :cond_3
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2662
    :pswitch_2
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2663
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x42

    :goto_1
    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2665
    :cond_5
    invoke-static {p3, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2666
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0x42

    :goto_2
    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2652
    :pswitch_3
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2653
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_7

    const/16 v4, 0x21

    :cond_7
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2655
    :cond_8
    invoke-static {p3, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2656
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_9

    const/16 v4, 0x21

    :cond_9
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto/16 :goto_4

    .line 2620
    :pswitch_4
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v3, :cond_a

    .line 2621
    invoke-direct {p0, p3, p2, v7}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v3

    goto/16 :goto_6

    .line 2622
    :cond_a
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2623
    invoke-direct {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v3

    goto/16 :goto_6

    .line 2612
    :pswitch_5
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v3, :cond_b

    .line 2613
    invoke-direct {p0, p3, p2, v4}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v3

    goto/16 :goto_6

    .line 2614
    :cond_b
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2615
    invoke-direct {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v3

    goto/16 :goto_6

    .line 2603
    :pswitch_6
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_c

    .line 2604
    invoke-direct {p0, p3, p2, v5}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v3

    goto/16 :goto_6

    .line 2605
    :cond_c
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2606
    invoke-direct {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v3

    goto :goto_6

    .line 2595
    :pswitch_7
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_d

    .line 2596
    invoke-direct {p0, p3, p2, v6}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyScroll(Landroid/view/KeyEvent;II)Z

    move-result v3

    goto :goto_6

    .line 2597
    :cond_d
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2598
    invoke-direct {p0, v6}, Lorg/lucasr/twowayview/TwoWayView;->handleFocusWithinItem(I)Z

    move-result v3

    goto :goto_6

    .line 2629
    :cond_e
    :pswitch_8
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2630
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2631
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_15

    .line 2633
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->keyPressed()V

    goto :goto_4

    .line 2640
    :cond_f
    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2641
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_10

    goto :goto_3

    :cond_10
    const/16 v5, 0x42

    :goto_3
    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->pageScroll(I)Z

    move-result v3

    goto :goto_4

    .line 2643
    :cond_11
    invoke-static {p3, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2644
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_13

    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_12

    const/16 v4, 0x21

    :cond_12
    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result v3

    :cond_13
    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :cond_14
    :goto_5
    const/4 v3, 0x0

    :cond_15
    :goto_6
    if-eqz v3, :cond_16

    return v2

    :cond_16
    packed-switch v0, :pswitch_data_3

    return v1

    .line 2717
    :pswitch_9
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2696
    :pswitch_a
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_17

    return v2

    .line 2700
    :cond_17
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz p1, :cond_19

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_19

    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_19

    .line 2704
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2706
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/lucasr/twowayview/TwoWayView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2707
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2710
    :cond_18
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    return v2

    :cond_19
    return v1

    .line 2693
    :pswitch_b
    invoke-super {p0, p1, p3}, Landroid/widget/AdapterView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5c
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private handleKeyScroll(Landroid/view/KeyEvent;II)Z
    .locals 3

    .line 2562
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2563
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    move v2, p1

    :goto_0
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_3

    .line 2566
    invoke-direct {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->arrowScroll(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, p1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    .line 2573
    invoke-static {p1, p2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2574
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelectionIfNeeded()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->fullScroll(I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .locals 6

    .line 2084
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    const/4 v0, -0x1

    if-eq p3, v0, :cond_6

    .line 2094
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 2095
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr p3, v1

    const/16 v1, 0x21

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 2111
    :cond_0
    invoke-virtual {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, p3

    move p3, v0

    move-object v0, p2

    const/4 p2, 0x0

    goto :goto_1

    .line 2104
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    move v1, v0

    move-object v0, p1

    move-object p1, p2

    const/4 p2, 0x1

    .line 2114
    :goto_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    if-eqz p1, :cond_3

    if-nez p4, :cond_2

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2118
    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 2119
    invoke-direct {p0, p1, p3, v4}, Lorg/lucasr/twowayview/TwoWayView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_3
    if-eqz v0, :cond_5

    if-nez p4, :cond_4

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 2124
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 2125
    invoke-direct {p0, v0, v1, v4}, Lorg/lucasr/twowayview/TwoWayView;->measureAndAdjustDown(Landroid/view/View;II)V

    :cond_5
    return-void

    .line 2087
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newSelectedPosition needs to be valid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleOverScrollChange(I)V
    .locals 4

    .line 2888
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    sub-int v1, v0, p1

    neg-int v2, p1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    :cond_1
    neg-int v2, v0

    add-int/2addr p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 2901
    invoke-direct {p0, p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->updateOverScrollState(II)V

    :cond_3
    if-eqz p1, :cond_5

    .line 2905
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v0, :cond_4

    .line 2906
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 2907
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2910
    :cond_4
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    const/4 p1, 0x3

    .line 2911
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 2915
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->findClosestMotionRowOrColumn(I)I

    move-result p1

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    const/4 p1, 0x0

    .line 2916
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    :cond_5
    return-void
.end method

.method private hideSelector()V
    .locals 3

    .line 3414
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3415
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 3416
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 3419
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v0, v2, :cond_1

    .line 3420
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 3423
    :cond_1
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 3424
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    .line 3426
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    :cond_2
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .line 2725
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2726
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2728
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .line 2733
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2734
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private invokeOnItemScrollListener()V
    .locals 4

    .line 2749
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2750
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;->onScroll(Lorg/lucasr/twowayview/TwoWayView;III)V

    :cond_0
    const/4 v0, 0x0

    .line 2754
    invoke-virtual {p0, v0, v0, v0, v0}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    return-void
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1864
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1866
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private keyPressed()V
    .locals 4

    .line 3481
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3485
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3486
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 3488
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->touchModeDrawsInPressedState()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3491
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 3494
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 3498
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3501
    :cond_3
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 3503
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v1

    .line 3504
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3505
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 3507
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 3510
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 3514
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v0, :cond_7

    .line 3515
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    if-nez v0, :cond_6

    .line 3516
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    .line 3519
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3520
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForKeyLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :cond_8
    :goto_1
    return-void
.end method

.method private layoutChildren()V
    .locals 18

    move-object/from16 v7, p0

    .line 4035
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 4039
    :cond_0
    iget-boolean v8, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-nez v8, :cond_23

    const/4 v0, 0x1

    .line 4041
    iput-boolean v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    const/4 v9, 0x0

    .line 4047
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 4049
    iget-object v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_2

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 4293
    iput-boolean v9, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    iput-boolean v9, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    :cond_1
    return-void

    .line 4054
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v5

    .line 4055
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v6

    .line 4057
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    .line 4068
    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    packed-switch v2, :pswitch_data_0

    .line 4086
    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    goto :goto_1

    .line 4070
    :pswitch_0
    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iget v4, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v2, v4

    if-ltz v2, :cond_3

    if-ge v2, v1, :cond_3

    .line 4072
    invoke-virtual {v7, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :pswitch_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_4

    .line 4086
    :goto_1
    iget v4, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v2, v4

    if-ltz v2, :cond_4

    if-ge v2, v1, :cond_4

    .line 4088
    invoke-virtual {v7, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 4092
    :goto_2
    invoke-virtual {v7, v9}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4094
    iget v11, v7, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    if-ltz v11, :cond_5

    .line 4095
    iget v11, v7, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iget v12, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    sub-int/2addr v11, v12

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    add-int/2addr v2, v11

    .line 4099
    invoke-virtual {v7, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .line 4102
    :goto_4
    iget-boolean v12, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v12, :cond_6

    .line 4104
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->handleDataChanged()V

    .line 4109
    :cond_6
    iget v13, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-nez v13, :cond_8

    .line 4110
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_7

    .line 4293
    iput-boolean v9, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    iput-boolean v9, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    :cond_7
    return-void

    .line 4112
    :cond_8
    :try_start_2
    iget v13, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iget-object v14, v7, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    if-ne v13, v14, :cond_21

    .line 4120
    iget v13, v7, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    invoke-direct {v7, v13}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 4127
    iget v13, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4128
    iget-object v14, v7, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    if-eqz v12, :cond_9

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v1, :cond_a

    .line 4132
    invoke-virtual {v7, v15}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v9, v13, v15

    invoke-virtual {v14, v3, v9}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x0

    goto :goto_5

    .line 4135
    :cond_9
    invoke-virtual {v14, v1, v13}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->fillActiveViews(II)V

    .line 4142
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_d

    if-nez v12, :cond_c

    .line 4150
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 4153
    invoke-virtual {v9}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_b
    move-object/from16 v16, v9

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    const/16 v16, 0x0

    .line 4157
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->requestFocus()Z

    move-object v9, v3

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 4164
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->detachAllViewsFromParent()V

    .line 4166
    iget v3, v7, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    packed-switch v3, :pswitch_data_1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    .line 4202
    invoke-direct {v7, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result v2

    goto :goto_8

    :pswitch_2
    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v11

    .line 4197
    invoke-direct/range {v1 .. v6}, Lorg/lucasr/twowayview/TwoWayView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    .line 4178
    :pswitch_3
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    invoke-direct {v7, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_9

    .line 4193
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->reconcileSelectedPosition()I

    move-result v1

    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    invoke-direct {v7, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 4182
    :pswitch_5
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-direct {v7, v1, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    move-result-object v1

    .line 4183
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_9

    :pswitch_6
    if-eqz v4, :cond_e

    .line 4169
    invoke-direct {v7, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 4170
    invoke-direct {v7, v1, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 4172
    :cond_e
    invoke-direct {v7, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :pswitch_7
    const/4 v1, 0x0

    .line 4187
    iput v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4188
    invoke-direct {v7, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    .line 4189
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    goto :goto_9

    .line 4203
    :goto_8
    invoke-direct {v7, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 4204
    invoke-direct {v7, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillFromOffset(I)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 4206
    :cond_f
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v1, :cond_11

    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v3, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v1, v3, :cond_11

    if-eqz v2, :cond_10

    .line 4209
    invoke-direct {v7, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    .line 4211
    :cond_10
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-direct {v7, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    .line 4212
    :cond_11
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iget v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ge v1, v2, :cond_13

    if-eqz v10, :cond_12

    .line 4215
    invoke-direct {v7, v10}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    .line 4218
    :cond_12
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-direct {v7, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    .line 4220
    invoke-direct {v7, v1, v5}, Lorg/lucasr/twowayview/TwoWayView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    .line 4228
    :goto_9
    invoke-virtual {v14}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->scrapActiveViews()V

    if-eqz v1, :cond_1a

    .line 4231
    iget-boolean v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    const/4 v3, -0x1

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_19

    if-ne v1, v9, :cond_14

    if-eqz v16, :cond_14

    .line 4232
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_14
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_a
    if-nez v0, :cond_18

    .line 4240
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4242
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 4245
    :cond_17
    invoke-direct {v7, v3, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    .line 4247
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4248
    iget-object v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_b

    .line 4251
    :cond_19
    invoke-direct {v7, v3, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 4254
    :goto_b
    invoke-direct {v7, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    goto :goto_d

    .line 4256
    :cond_1a
    iget v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-lez v0, :cond_1b

    iget v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1b

    .line 4257
    iget v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {v7, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 4260
    iget v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    invoke-direct {v7, v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    .line 4263
    iput v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 4264
    iget-object v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4269
    :cond_1c
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v16, :cond_1d

    .line 4270
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    :cond_1d
    :goto_d
    if-eqz v16, :cond_1e

    .line 4276
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 4278
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    :cond_1e
    const/4 v1, 0x0

    .line 4281
    iput v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4282
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 4283
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 4285
    iget v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-direct {v7, v0}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 4286
    iget v0, v7, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_1f

    .line 4287
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    .line 4290
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_20

    const/4 v1, 0x0

    .line 4293
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    :cond_20
    return-void

    .line 4113
    :cond_21
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content of the adapter has changed but TwoWayView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in TwoWayView("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") with Adapter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v8, :cond_22

    const/4 v1, 0x0

    .line 4293
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 4294
    iput-boolean v1, v7, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    :cond_22
    throw v0

    :cond_23
    return-void

    :cond_24
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private lookForSelectablePosition(I)I
    .locals 1

    const/4 v0, 0x1

    .line 3590
    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result p1

    return p1
.end method

.method private lookForSelectablePosition(IZ)I
    .locals 4

    .line 3594
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    .line 3595
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 3599
    :cond_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 3600
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 3602
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 3603
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 3607
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 3608
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1

    :cond_8
    :goto_4
    return v1
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .locals 5

    .line 3638
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    .line 3640
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3641
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x82

    if-eq p1, v3, :cond_6

    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    goto :goto_4

    .line 3664
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p1

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 3666
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v3, v2, :cond_1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    :goto_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    goto :goto_0

    :goto_1
    if-ltz v3, :cond_5

    .line 3669
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    goto :goto_3

    :cond_2
    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    if-lt p1, v0, :cond_b

    .line 3678
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sub-int v3, p1, v0

    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    return p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v2

    .line 3644
    :cond_6
    :goto_4
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq p1, v2, :cond_7

    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_7
    move p1, v0

    .line 3647
    :goto_5
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_8

    return v2

    :cond_8
    if-ge p1, v0, :cond_9

    move p1, v0

    .line 3655
    :cond_9
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v3

    :goto_6
    if-gt p1, v3, :cond_b

    .line 3658
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_a

    sub-int v4, p1, v0

    invoke-virtual {p0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a

    return p1

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    return v2
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 9

    .line 5011
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    .line 5013
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    move v4, p2

    move v5, v0

    goto :goto_0

    .line 5015
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    move v5, p2

    move v4, v0

    .line 5019
    :goto_0
    iget-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez p2, :cond_1

    .line 5021
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {p2, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v6, p3

    move v7, p4

    .line 5025
    invoke-direct/range {v1 .. v8}, Lorg/lucasr/twowayview/TwoWayView;->setupChild(Landroid/view/View;IIIZZZ)V

    return-object p2

    .line 5032
    :cond_1
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    invoke-direct {p0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object p2

    .line 5035
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v8, v0, v1

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lorg/lucasr/twowayview/TwoWayView;->setupChild(Landroid/view/View;IIIZZZ)V

    return-object p2
.end method

.method private maybeScroll(I)V
    .locals 2

    .line 2801
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2802
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->handleDragChange(I)V

    goto :goto_0

    .line 2803
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2804
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->handleOverScrollChange(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeStartScrolling(I)Z
    .locals 4

    .line 2769
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2770
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchSlop:I

    if-gt p1, v3, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x5

    .line 2775
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    .line 2777
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 2782
    :goto_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2784
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2787
    :cond_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    .line 2789
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 2790
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2792
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2795
    :cond_4
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    return v2
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .locals 2

    .line 2138
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildSize(Landroid/view/View;)I

    move-result v0

    .line 2139
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;)V

    .line 2141
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 2146
    :cond_0
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->relayoutMeasuredChild(Landroid/view/View;)V

    .line 2149
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p3, :cond_1

    .line 2151
    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 1

    .line 4779
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V

    return-void
.end method

.method private measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V
    .locals 1

    .line 4783
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result v0

    .line 4784
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result p2

    .line 4785
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureHeightOfChildren(IIIII)I
    .locals 8

    .line 4852
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    .line 4853
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v1

    .line 4855
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/2addr v0, v1

    .line 4862
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    .line 4871
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 4872
    :cond_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 4873
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v5

    .line 4874
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    :goto_0
    if-gt p2, p3, :cond_7

    .line 4877
    invoke-direct {p0, p2, v6}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v7

    .line 4879
    invoke-direct {p0, v7, p2, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    if-lez p2, :cond_2

    add-int/2addr v0, v1

    :cond_2
    if-eqz v5, :cond_3

    .line 4888
    invoke-virtual {v2, v7, v4}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4891
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v0, v7

    if-lt v0, p4, :cond_5

    if-ltz p5, :cond_4

    if-le p2, p5, :cond_4

    if-lez v3, :cond_4

    if-eq v0, p4, :cond_4

    move p4, v3

    :cond_4
    return p4

    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v3, v0

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 3

    .line 4801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    if-nez v0, :cond_0

    .line 4803
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    .line 4804
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4807
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p2

    iput p2, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    const/4 p2, 0x1

    .line 4808
    iput-boolean p2, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    .line 4812
    iget-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p2, :cond_1

    .line 4814
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildHeightMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result p2

    move v2, p3

    move p3, p2

    move p2, v2

    goto :goto_0

    .line 4816
    :cond_1
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildWidthMeasureSpec(Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)I

    move-result p2

    .line 4820
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureWidthOfChildren(IIIII)I
    .locals 8

    .line 4943
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    .line 4944
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v1

    .line 4946
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    add-int/2addr v0, v1

    return v0

    :cond_0
    add-int/2addr v0, v1

    .line 4953
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    .line 4962
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    .line 4963
    :cond_1
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    .line 4964
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v5

    .line 4965
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    :goto_0
    if-gt p2, p3, :cond_7

    .line 4968
    invoke-direct {p0, p2, v6}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v7

    .line 4970
    invoke-direct {p0, v7, p2, p1}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    if-lez p2, :cond_2

    add-int/2addr v0, v1

    :cond_2
    if-eqz v5, :cond_3

    .line 4979
    invoke-virtual {v2, v7, v4}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 4982
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    if-lt v0, p4, :cond_5

    if-ltz p5, :cond_4

    if-le p2, p5, :cond_4

    if-lez v3, :cond_4

    if-eq v0, p4, :cond_4

    move p4, v3

    :cond_4
    return p4

    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v3, v0

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 6

    .line 4319
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    .line 4320
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 4322
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v2

    .line 4323
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p1

    .line 4325
    invoke-direct {p0, p4, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMinSelectionPixel(III)I

    move-result v3

    .line 4326
    invoke-direct {p0, p5, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getMaxSelectionPixel(III)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez p3, :cond_2

    add-int/lit8 p2, v1, -0x1

    .line 4352
    invoke-direct {p0, p2, v2, v5, v4}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p2

    .line 4354
    iget p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr p1, p3

    .line 4357
    invoke-direct {p0, v1, p1, v5, v5}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    .line 4359
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    .line 4360
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v2

    if-le v2, p5, :cond_1

    sub-int v3, v1, v3

    sub-int v0, v2, v0

    sub-int/2addr p5, p4

    .line 4371
    div-int/lit8 p5, p5, 0x2

    .line 4372
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 4373
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 4375
    iget-boolean p5, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p5, :cond_0

    neg-int p4, p4

    .line 4376
    invoke-virtual {p2, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 4377
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_0
    neg-int p4, p4

    .line 4379
    invoke-virtual {p2, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4380
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4385
    :cond_1
    :goto_0
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/lit8 p2, p2, -0x2

    sub-int/2addr v1, p3

    invoke-direct {p0, p2, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 4386
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->adjustViewsStartOrEnd()V

    .line 4387
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    add-int/2addr p2, v5

    add-int/2addr v2, p3

    invoke-direct {p0, p2, v2}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    goto :goto_4

    :cond_2
    if-gez p3, :cond_6

    if-eqz p2, :cond_3

    .line 4411
    invoke-direct {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p1

    .line 4412
    invoke-direct {p0, v1, p1, v5, v5}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 4416
    :cond_3
    invoke-direct {p0, v1, v2, v4, v5}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    .line 4419
    :goto_1
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p2

    .line 4420
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p3

    if-ge p2, v3, :cond_5

    sub-int/2addr v3, p2

    sub-int/2addr v0, p3

    sub-int/2addr p5, p4

    .line 4431
    div-int/lit8 p5, p5, 0x2

    .line 4432
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4433
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 4435
    iget-boolean p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p3, :cond_4

    .line 4436
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 4438
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4443
    :cond_5
    :goto_2
    invoke-direct {p0, p1, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    goto :goto_4

    .line 4449
    :cond_6
    invoke-direct {p0, v1, v2, v5, v5}, Lorg/lucasr/twowayview/TwoWayView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object p1

    .line 4451
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result p2

    .line 4452
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result p3

    if-ge v2, p4, :cond_8

    add-int/lit8 p5, p4, 0x14

    if-ge p3, p5, :cond_8

    .line 4461
    iget-boolean p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p3, :cond_7

    sub-int/2addr p4, p2

    .line 4462
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_3

    :cond_7
    sub-int/2addr p4, p2

    .line 4464
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4470
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v1}, Lorg/lucasr/twowayview/TwoWayView;->fillBeforeAndAfter(Landroid/view/View;I)V

    :goto_4
    return-object p1
.end method

.method private obtainView(I[Z)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v0, 0x0

    .line 5515
    aput-boolean v0, p2, v0

    .line 5517
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v1, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 5522
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v1, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 5526
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 5529
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {p2, v1, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0

    .line 5531
    :cond_1
    aput-boolean v2, p2, v0

    goto :goto_0

    .line 5534
    :cond_2
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5537
    :goto_0
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_3

    .line 5538
    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5541
    :cond_3
    iget-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    if-eqz p2, :cond_6

    .line 5542
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    if-nez p2, :cond_4

    .line 5545
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object p2

    goto :goto_1

    .line 5546
    :cond_4
    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5547
    invoke-virtual {p0, p2}, Lorg/lucasr/twowayview/TwoWayView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object p2

    .line 5550
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->id:J

    .line 5552
    invoke-virtual {v4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5555
    :cond_6
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    if-nez p1, :cond_7

    .line 5556
    new-instance p1, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    invoke-direct {p1, p0, v3}, Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    .line 5559
    :cond_7
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAccessibilityDelegate:Lorg/lucasr/twowayview/TwoWayView$ListItemAccessibilityDelegate;

    invoke-static {v4, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-object v4
.end method

.method private offsetChildren(I)V
    .locals 4

    .line 4304
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4307
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4309
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_0

    .line 4310
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 4312
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private overScrollByInternal(IIIIIIIIZ)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1061
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1065
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/widget/AdapterView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 1

    .line 3582
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    .line 3585
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private performLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .line 5702
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 5704
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5709
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lucasr/twowayview/TwoWayView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5710
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 5714
    invoke-virtual {p0, v6}, Lorg/lucasr/twowayview/TwoWayView;->performHapticFeedback(I)Z

    :cond_2
    return v0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .locals 3

    .line 2274
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2277
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2278
    invoke-direct {p0, p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2279
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2283
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newFocus is not a child of any of the children of the list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private positionSelector(ILandroid/view/View;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3397
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 3400
    :cond_0
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3403
    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    .line 3404
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, p1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 3405
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    .line 3407
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 3408
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->refreshDrawableState()V

    :cond_1
    return-void
.end method

.method private reconcileSelectedPosition()I
    .locals 2

    .line 4627
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-gez v0, :cond_0

    .line 4629
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    :cond_0
    const/4 v1, 0x0

    .line 4632
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4633
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .line 2739
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2740
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2741
    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private relayoutMeasuredChild(Landroid/view/View;)V
    .locals 4

    .line 4789
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 4790
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 4792
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 4794
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    .line 4797
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private rememberSyncState()V
    .locals 5

    .line 5589
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 5593
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5595
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 5596
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5598
    iget-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    iput-wide v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5599
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    if-eqz v0, :cond_1

    .line 5602
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5605
    :cond_1
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    goto :goto_1

    .line 5608
    :cond_2
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5609
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 5611
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-ltz v3, :cond_3

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 5612
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0x1

    .line 5614
    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5617
    :goto_0
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    if-eqz v1, :cond_4

    .line 5620
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5623
    :cond_4
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    :goto_1
    return-void
.end method

.method private reportScrollStateChange(I)V
    .locals 1

    .line 2758
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2762
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2763
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastScrollState:I

    .line 2764
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;->onScrollStateChanged(Lorg/lucasr/twowayview/TwoWayView;I)V

    :cond_1
    return-void
.end method

.method private scrollListItemsBy(I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3139
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    .line 3144
    invoke-virtual {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v5

    add-int/lit8 v6, v2, -0x1

    .line 3145
    invoke-virtual {v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v7

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v8

    .line 3148
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v9

    .line 3150
    iget-boolean v10, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    sub-int v9, v8, v5

    .line 3153
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v10

    sub-int v11, v7, v10

    .line 3156
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result v12

    if-gez v1, :cond_2

    sub-int/2addr v12, v3

    neg-int v12, v12

    .line 3159
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    sub-int/2addr v12, v3

    .line 3161
    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3164
    :goto_1
    iget v12, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-nez v12, :cond_3

    if-lt v5, v8, :cond_3

    if-ltz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    add-int v13, v12, v2

    .line 3168
    iget v14, v0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne v13, v14, :cond_4

    if-gt v7, v10, :cond_4

    if-gtz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-nez v5, :cond_15

    if-eqz v7, :cond_5

    goto/16 :goto_a

    .line 3175
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3177
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    :cond_6
    if-gez v1, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    neg-int v6, v1

    add-int/2addr v6, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v8, v2, :cond_9

    .line 3188
    invoke-virtual {v0, v8}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3189
    invoke-direct {v0, v13}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v14

    if-lt v14, v6, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 3196
    iget-object v14, v0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    add-int v15, v12, v8

    invoke-virtual {v14, v13, v15}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    move v2, v10

    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    sub-int/2addr v10, v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_7
    if-ltz v6, :cond_c

    .line 3202
    invoke-virtual {v0, v6}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3203
    invoke-direct {v0, v13}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v14

    if-gt v14, v10, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 3211
    iget-object v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    add-int v14, v12, v6

    invoke-virtual {v8, v13, v14}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v8, v6, -0x1

    move/from16 v16, v8

    move v8, v6

    move/from16 v6, v16

    goto :goto_7

    .line 3215
    :cond_c
    :goto_8
    iput-boolean v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-lez v2, :cond_d

    .line 3218
    invoke-virtual {v0, v8, v2}, Lorg/lucasr/twowayview/TwoWayView;->detachViewsFromParent(II)V

    .line 3223
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result v3

    if-nez v3, :cond_e

    .line 3224
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 3227
    :cond_e
    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->offsetChildren(I)V

    if-eqz v7, :cond_f

    .line 3230
    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v3, v2

    iput v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3233
    :cond_f
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v9, v1, :cond_10

    if-ge v11, v1, :cond_11

    .line 3235
    :cond_10
    invoke-virtual {v0, v7}, Lorg/lucasr/twowayview/TwoWayView;->fillGap(Z)V

    :cond_11
    const/4 v1, -0x1

    if-nez v5, :cond_12

    .line 3238
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eq v2, v1, :cond_12

    .line 3239
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_14

    .line 3240
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 3241
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto :goto_9

    .line 3243
    :cond_12
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    if-eq v2, v1, :cond_13

    .line 3244
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_14

    .line 3245
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 3246
    invoke-virtual {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    goto :goto_9

    .line 3249
    :cond_13
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3252
    :cond_14
    :goto_9
    iput-boolean v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    .line 3254
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    return v4

    :cond_15
    :goto_a
    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    :goto_b
    return v3
.end method

.method private selectionChanged()V
    .locals 2

    .line 3544
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3549
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3560
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->fireOnSelected()V

    .line 3561
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->performAccessibilityActionsOnSelected()V

    goto :goto_1

    .line 3554
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    if-nez v0, :cond_3

    .line 3555
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    .line 3558
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectionNotifier:Lorg/lucasr/twowayview/TwoWayView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private setNextSelectedPositionInt(I)V
    .locals 2

    .line 3456
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    .line 3457
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    .line 3460
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 3461
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 3462
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method private setSelectedPositionInt(I)V
    .locals 2

    .line 3431
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    .line 3432
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedRowId:J

    return-void
.end method

.method private setSelectionInt(I)V
    .locals 3

    .line 3436
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 3439
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3448
    :goto_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    if-eqz v1, :cond_2

    .line 3451
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    :cond_2
    return-void
.end method

.method private setupChild(Landroid/view/View;IIIZZZ)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    .line 5043
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->shouldShowSelector()Z

    move-result p6

    if-eqz p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    .line 5044
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eq p6, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 5045
    :goto_1
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-lez v3, :cond_2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 5047
    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ne v3, p2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 5050
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz p7, :cond_5

    if-nez v2, :cond_5

    .line 5051
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, 0x1

    .line 5054
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    if-nez v6, :cond_6

    .line 5056
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v6

    .line 5059
    :cond_6
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    iput v7, v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    const/4 v7, -0x1

    if-eqz p7, :cond_8

    .line 5061
    iget-boolean p7, v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    if-nez p7, :cond_8

    if-eqz p5, :cond_7

    const/4 v1, -0x1

    .line 5062
    :cond_7
    invoke-virtual {p0, p1, v1, v6}, Lorg/lucasr/twowayview/TwoWayView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5064
    :cond_8
    iput-boolean v1, v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->forceAdd:Z

    if-eqz p5, :cond_9

    const/4 v1, -0x1

    .line 5065
    :cond_9
    invoke-virtual {p0, p1, v1, v6, v0}, Lorg/lucasr/twowayview/TwoWayView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_6
    if-eqz v2, :cond_a

    .line 5069
    invoke-virtual {p1, p6}, Landroid/view/View;->setSelected(Z)V

    :cond_a
    if-eqz v4, :cond_b

    .line 5073
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5076
    :cond_b
    iget-object p6, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object p7, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq p6, p7, :cond_d

    iget-object p6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz p6, :cond_d

    .line 5077
    instance-of p6, p1, Landroid/widget/Checkable;

    if-eqz p6, :cond_c

    .line 5078
    move-object p6, p1

    check-cast p6, Landroid/widget/Checkable;

    iget-object p7, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p7, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-interface {p6, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_7

    .line 5079
    :cond_c
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p7, 0xb

    if-lt p6, p7, :cond_d

    .line 5080
    iget-object p6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p6, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    .line 5085
    invoke-direct {p0, p1, v6}, Lorg/lucasr/twowayview/TwoWayView;->measureChild(Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$LayoutParams;)V

    goto :goto_8

    .line 5087
    :cond_e
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->cleanupLayoutState(Landroid/view/View;)V

    .line 5090
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 5091
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p6

    .line 5093
    iget-boolean p7, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p7, :cond_f

    if-nez p5, :cond_f

    sub-int/2addr p3, p6

    .line 5094
    :cond_f
    iget-boolean p7, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez p7, :cond_10

    if-nez p5, :cond_10

    sub-int/2addr p4, p2

    :cond_10
    if-eqz v5, :cond_11

    add-int/2addr p2, p4

    add-int/2addr p6, p3

    .line 5100
    invoke-virtual {p1, p4, p3, p2, p6}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    .line 5102
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 5103
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_9
    return-void
.end method

.method private shouldShowSelector()Z
    .locals 1

    .line 3392
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private touchModeDrawsInPressedState()Z
    .locals 1

    .line 3467
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private triggerCheckForLongPress()V
    .locals 3

    .line 3120
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 3121
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    .line 3124
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3126
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForLongPress:Lorg/lucasr/twowayview/TwoWayView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private triggerCheckForTap()V
    .locals 3

    .line 3104
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    if-nez v0, :cond_0

    .line 3105
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$CheckForTap;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    .line 3108
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingCheckForTap:Lorg/lucasr/twowayview/TwoWayView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateEmptyStatus()V
    .locals 4

    .line 6298
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 6301
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6302
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6303
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    goto :goto_2

    .line 6307
    :cond_2
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    .line 6313
    :goto_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v0, :cond_5

    .line 6314
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/lucasr/twowayview/TwoWayView;->layout(IIII)V

    goto :goto_3

    .line 6317
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6318
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6321
    :cond_4
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 5633
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5634
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5637
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    .line 5640
    instance-of v5, v3, Landroid/widget/Checkable;

    if-eqz v5, :cond_0

    .line 5641
    check-cast v3, Landroid/widget/Checkable;

    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    .line 5642
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    .line 5643
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateOverScrollState(II)V
    .locals 12

    .line 2845
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    move v4, p2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    move v5, v0

    :goto_2
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    move v6, v0

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    move v9, v0

    :goto_4
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_5

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    move v10, v1

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lorg/lucasr/twowayview/TwoWayView;->overScrollByInternal(IIIIIIIIZ)Z

    .line 2854
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverscrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2856
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 2857
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2861
    :cond_6
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 2862
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->contentFits()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_7
    const/4 v0, 0x5

    .line 2864
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    int-to-float p2, p2

    .line 2866
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    if-lez p1, :cond_8

    .line 2868
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2870
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result p2

    if-nez p2, :cond_9

    .line 2871
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_6

    :cond_8
    if-gez p1, :cond_9

    .line 2874
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 2876
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result p2

    if-nez p2, :cond_9

    .line 2877
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_9
    :goto_6
    if-eqz p1, :cond_a

    .line 2882
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method private updateSelectorState()V
    .locals 2

    .line 3526
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3527
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3530
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView;->STATE_NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .line 3387
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected canAnimate()Z
    .locals 1

    .line 3730
    invoke-super {p0}, Landroid/widget/AdapterView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 5736
    instance-of p1, p1, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    return p1
.end method

.method public clearChoices()V
    .locals 1

    .line 722
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 730
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .line 1247
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v2, v0, 0x64

    .line 1254
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1255
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1257
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x64

    .line 1259
    div-int/2addr v3, v1

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1262
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1265
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 1267
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_2
    return v2
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .line 1295
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 1296
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1303
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1305
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 1307
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .line 1327
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1329
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1331
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public computeScroll()V
    .locals 3

    .line 3275
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3280
    :cond_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_1

    .line 3281
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    goto :goto_0

    .line 3283
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 3286
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 3287
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 3289
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3291
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3292
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_5

    .line 3295
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    if-lez v1, :cond_3

    .line 3297
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3300
    :goto_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3304
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3308
    :cond_4
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    :cond_5
    const/4 v0, -0x1

    .line 3311
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v0, 0x0

    .line 3312
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    :goto_2
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 4

    .line 1219
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v2, v0, 0x64

    .line 1226
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1227
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1229
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x64

    .line 1231
    div-int/2addr v3, v1

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 1234
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1237
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 1239
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_2
    return v2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 4

    .line 1275
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 1276
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1283
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1285
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 1287
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .line 1315
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1317
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz v1, :cond_0

    .line 1319
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 10

    .line 4478
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4480
    :goto_0
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 4481
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 4482
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4484
    iget-object v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    const/4 v7, 0x1

    cmp-long v8, v2, v5

    if-eqz v8, :cond_2

    add-int/lit8 v5, v4, -0x14

    .line 4487
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x14

    .line 4488
    iget v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-ge v5, v4, :cond_1

    .line 4492
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v2, v8

    if-nez v6, :cond_0

    .line 4495
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4496
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 4502
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    .line 4504
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    sub-int/2addr v2, v7

    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_3

    .line 4507
    :cond_2
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_3
    :goto_3
    add-int/2addr v1, v7

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3735
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    if-nez v0, :cond_0

    .line 3737
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3740
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 3743
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3926
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3929
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3930
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3933
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 3749
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3753
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3754
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawStartEdge(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v1, v0

    .line 3757
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 3758
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->drawEndEdge(Landroid/graphics/Canvas;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    if-eqz v1, :cond_2

    .line 3762
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 3690
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3691
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    return-void
.end method

.method fillGap(Z)V
    .locals 2

    .line 5108
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_1

    .line 5111
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result p1

    add-int/lit8 v1, v0, -0x1

    .line 5112
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v1

    if-lez v0, :cond_0

    .line 5113
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    add-int/2addr p1, v1

    .line 5114
    :cond_0
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillAfter(II)Landroid/view/View;

    .line 5115
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->correctTooHigh(I)V

    goto :goto_0

    .line 5117
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result p1

    const/4 v1, 0x0

    .line 5118
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v1

    if-lez v0, :cond_2

    .line 5119
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    sub-int p1, v1, p1

    .line 5120
    :cond_2
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->fillBefore(II)Landroid/view/View;

    .line 5121
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->correctTooLow(I)V

    :goto_0
    return-void
.end method

.method fullScroll(I)Z
    .locals 3

    .line 1953
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-eq p1, v2, :cond_2

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-eq p1, v2, :cond_1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_3

    .line 1968
    :cond_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_3

    .line 1969
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    sub-int/2addr p1, v1

    invoke-direct {p0, p1, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_4

    const/4 v0, 0x3

    .line 1971
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1972
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1973
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    goto :goto_1

    .line 1957
    :cond_2
    :goto_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-eqz p1, :cond_3

    .line 1958
    invoke-direct {p0, v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_4

    .line 1960
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1961
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1962
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1980
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1981
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    .line 1982
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    :cond_5
    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
    .locals 3

    .line 5722
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 5723
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, v2, v1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(II)V

    return-object v0

    .line 5725
    :cond_0
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 5741
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/lucasr/twowayview/TwoWayView$LayoutParams;
    .locals 1

    .line 5731
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 6

    .line 1140
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1144
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v0

    .line 1146
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1150
    :cond_1
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1154
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1155
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v2

    .line 1157
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v3

    .line 1158
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    sub-int v5, v3, v2

    if-le v1, v5, :cond_3

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    int-to-float v0, v1

    div-float/2addr v0, v4

    :cond_3
    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 568
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 633
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 638
    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 639
    new-array v3, v1, [J

    :goto_0
    if-ge v2, v1, :cond_1

    .line 642
    invoke-virtual {v0, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    .line 634
    :cond_2
    :goto_1
    new-array v0, v2, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 600
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->SINGLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 601
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 2

    .line 617
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 5746
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 841
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .line 831
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 871
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 876
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 877
    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 879
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getItemMargin()I
    .locals 1

    .line 428
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 836
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .line 1167
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1171
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1173
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1177
    :cond_1
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 1181
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1182
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    .line 1184
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    if-ge v1, v2, :cond_3

    sub-int/2addr v1, v2

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    :cond_3
    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    .line 2259
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOrientation()Lorg/lucasr/twowayview/TwoWayView$Orientation;
    .locals 1

    .line 414
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->HORIZONTAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    :goto_0
    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    .line 849
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 860
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0

    :catch_0
    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .line 1192
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1196
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1198
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1202
    :cond_1
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1206
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1207
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v2

    .line 1209
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v3

    .line 1210
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    sub-int v5, v3, v2

    if-le v1, v5, :cond_3

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    int-to-float v0, v1

    div-float/2addr v0, v4

    :cond_3
    return v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 550
    iget-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 542
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNextSelectedPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .line 3775
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3776
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .line 1115
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1119
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v0

    .line 1121
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1125
    :cond_1
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 1129
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1130
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v2

    .line 1132
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    if-ge v1, v2, :cond_3

    sub-int/2addr v1, v2

    neg-int v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    :cond_3
    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2

    .line 583
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 948
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 950
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 951
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 953
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 955
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 958
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 959
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 960
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 963
    :cond_0
    iput-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .line 3697
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsChildViewEnabled:Z

    if-eqz v0, :cond_0

    .line 3699
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3705
    :cond_0
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 3710
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 3712
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 3713
    aget v2, p1, v1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 3721
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 968
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 971
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 973
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 974
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 976
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 981
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 985
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 987
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 990
    :cond_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    const/4 v0, 0x0

    .line 992
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 9

    .line 885
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    .line 887
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 891
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 892
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 893
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 896
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    .line 899
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    .line 904
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 908
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_2

    .line 909
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 910
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 915
    :cond_2
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTempRect:Landroid/graphics/Rect;

    const v3, 0x7fffffff

    .line 917
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v4

    .line 918
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    const/4 v3, 0x0

    const v6, 0x7fffffff

    :goto_0
    if-ge v2, v4, :cond_5

    add-int v7, v5, v2

    .line 922
    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 926
    :cond_3
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 927
    invoke-virtual {v7, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 928
    invoke-virtual {p0, v7, p1}, Lorg/lucasr/twowayview/TwoWayView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 929
    invoke-static {p3, p1, p2}, Lorg/lucasr/twowayview/TwoWayView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v8

    if-ge v8, v6, :cond_4

    .line 934
    invoke-direct {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v3

    move v1, v2

    move v6, v8

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v2, v3

    :cond_6
    if-ltz v1, :cond_7

    .line 940
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v2}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionFromOffset(II)V

    goto :goto_2

    .line 942
    :cond_7
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1805
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1806
    const-class v0, Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1812
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1813
    const-class v0, Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1815
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    .line 1817
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1818
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result p1

    if-lez p1, :cond_0

    const/16 p1, 0x2000

    .line 1819
    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_1

    const/16 p1, 0x1000

    .line 1823
    invoke-virtual {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1375
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1379
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1410
    :pswitch_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1414
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->initVelocityTrackerIfNotExists()V

    .line 1415
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1417
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    if-gez v0, :cond_2

    const-string p1, "TwoWayView"

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - did TwoWayView receive an inconsistent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "event stream?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1426
    :cond_2
    iget-boolean v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v3, :cond_3

    .line 1427
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    goto :goto_0

    .line 1429
    :cond_3
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 1432
    :goto_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    add-float/2addr p1, v0

    float-to-int v0, p1

    int-to-float v3, v0

    sub-float/2addr p1, v3

    .line 1434
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1436
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->maybeStartScrolling(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :pswitch_1
    const/4 p1, -0x1

    .line 1445
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    .line 1446
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1447
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    .line 1448
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto :goto_1

    .line 1382
    :pswitch_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->initOrResetVelocityTracker()V

    .line 1383
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1385
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1386
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v0, :cond_4

    .line 1387
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 1390
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1393
    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v4, :cond_5

    move v0, v3

    :cond_5
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 1395
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result v0

    .line 1397
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    const/4 p1, 0x0

    .line 1398
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1400
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    return v2

    :cond_6
    if-ltz v0, :cond_7

    .line 1403
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    .line 1404
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1768
    invoke-direct {p0, p1, v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1773
    invoke-direct {p0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1778
    invoke-direct {p0, p1, v0, p2}, Lorg/lucasr/twowayview/TwoWayView;->handleKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 4005
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4008
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4010
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4013
    :cond_0
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->markChildrenDirty()V

    .line 4016
    :cond_1
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 4018
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    sub-int/2addr p4, p2

    .line 4020
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    sub-int/2addr p5, p3

    .line 4021
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p5, p1

    .line 4023
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz p1, :cond_3

    .line 4024
    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz p1, :cond_2

    .line 4025
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1, p4, p5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 4026
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1, p4, p5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1

    .line 4028
    :cond_2
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1, p5, p4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 4029
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1, p5, p4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 3948
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3949
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->useDefaultSelector()V

    .line 3952
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3953
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3954
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3955
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 3960
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    :goto_0
    iput v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 3961
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v4, :cond_4

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 3963
    :cond_2
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsScrap:[Z

    invoke-direct {p0, v5, v4}, Lorg/lucasr/twowayview/TwoWayView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 3965
    iget-boolean v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v6, :cond_3

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, p2

    .line 3968
    :goto_1
    invoke-direct {p0, v4, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->measureScrapChild(Landroid/view/View;II)V

    .line 3970
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 3971
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 3973
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleOnMeasure()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3974
    iget-object v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v8}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 3979
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    .line 3980
    iget-boolean v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v4, :cond_6

    .line 3981
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getVerticalScrollbarWidth()I

    move-result v4

    add-int/2addr v2, v4

    :cond_6
    move v11, v2

    if-nez v1, :cond_7

    .line 3986
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v6

    .line 3987
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v2, :cond_7

    .line 3988
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHorizontalScrollbarHeight()I

    move-result v2

    add-int/2addr v3, v2

    :cond_7
    move v8, v3

    .line 3992
    iget-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_8

    if-ne v1, v3, :cond_8

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    move-object v4, p0

    move v5, p1

    .line 3993
    invoke-direct/range {v4 .. v9}, Lorg/lucasr/twowayview/TwoWayView;->measureHeightOfChildren(IIIII)I

    move-result v8

    :cond_8
    move p1, v8

    .line 3996
    iget-boolean v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez v1, :cond_9

    if-ne v0, v3, :cond_9

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, -0x1

    move-object v7, p0

    move v8, p2

    .line 3997
    invoke-direct/range {v7 .. v12}, Lorg/lucasr/twowayview/TwoWayView;->measureWidthOfChildren(IIIII)I

    move-result v11

    .line 4000
    :cond_9
    invoke-virtual {p0, v11, p1}, Lorg/lucasr/twowayview/TwoWayView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    .line 1039
    iget-boolean p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eq p3, p2, :cond_0

    .line 1040
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollX()I

    move-result p3

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    .line 1041
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    goto :goto_0

    .line 1043
    :cond_0
    iget-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-nez p2, :cond_1

    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eq p2, p1, :cond_1

    .line 1044
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result p2

    iget p3, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/lucasr/twowayview/TwoWayView;->onScrollChanged(IIII)V

    .line 1045
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_2

    .line 1050
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    .line 1051
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 5823
    check-cast p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5824
    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 5826
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 5827
    iget v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncSize:J

    .line 5829
    iget-wide v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 5830
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5831
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5832
    iget-wide v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    iput-wide v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5833
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5834
    iget v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    const/4 v0, 0x0

    .line 5835
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    goto :goto_0

    .line 5836
    :cond_0
    iget-wide v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v1, -0x1

    .line 5837
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 5840
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 5842
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 5843
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    .line 5844
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    .line 5845
    iget-wide v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    iput-wide v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 5846
    iget v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 5847
    iget v1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 5848
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncMode:I

    .line 5851
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 5852
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 5855
    :cond_2
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_3

    .line 5856
    iget-object v0, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 5859
    :cond_3
    iget p1, p1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkedItemCount:I

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 5861
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 5751
    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 5752
    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;

    invoke-direct {v1, v0}, Lorg/lucasr/twowayview/TwoWayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 5754
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    if-eqz v0, :cond_0

    .line 5755
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget-wide v2, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    iput-wide v2, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    .line 5756
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget-wide v2, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    iput-wide v2, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    .line 5757
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5758
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5759
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    return-object v1

    .line 5764
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5765
    :goto_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemId()J

    move-result-wide v4

    .line 5766
    iput-wide v4, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->selectedId:J

    .line 5767
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSize()I

    move-result v6

    iput v6, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->size:I

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v6

    if-ltz v10, :cond_2

    .line 5770
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5771
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5772
    iput-wide v8, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 5773
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez v0, :cond_4

    .line 5786
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5788
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5789
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-lt v0, v4, :cond_3

    .line 5790
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    sub-int/2addr v0, v2

    .line 5793
    :cond_3
    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5794
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    goto :goto_1

    .line 5796
    :cond_4
    iput v3, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->viewStart:I

    .line 5797
    iput-wide v8, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->firstId:J

    .line 5798
    iput v3, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->position:I

    .line 5801
    :goto_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_5

    .line 5802
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->cloneCheckStates()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 5805
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_7

    .line 5806
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 5808
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_6

    .line 5810
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v3}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5813
    :cond_6
    iput-object v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkIdState:Landroid/support/v4/util/LongSparseArray;

    .line 5816
    :cond_7
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    iput v0, v1, Lorg/lucasr/twowayview/TwoWayView$SavedState;->checkedItemCount:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1461
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3

    .line 1464
    :cond_2
    iget-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsAttached:Z

    if-eqz v2, :cond_27

    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_3

    goto/16 :goto_13

    .line 1470
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->initVelocityTrackerIfNotExists()V

    .line 1471
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1473
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    .line 1560
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    .line 1561
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1562
    invoke-direct {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1564
    invoke-virtual {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1565
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1567
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1570
    :cond_4
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_5

    .line 1571
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int v4, v1, v2

    .line 1574
    :cond_5
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    goto/16 :goto_12

    .line 1515
    :pswitch_1
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    if-gez v2, :cond_6

    const-string v1, "TwoWayView"

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent could not find pointer with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " - did TwoWayView receive an inconsistent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "event stream?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1524
    :cond_6
    iget-boolean v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v5, :cond_7

    .line 1525
    invoke-static {v1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    goto :goto_1

    .line 1527
    :cond_7
    invoke-static {v1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1530
    :goto_1
    iget-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v2, :cond_8

    .line 1533
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 1536
    :cond_8
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    sub-float v2, v1, v2

    iget v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    add-float/2addr v2, v5

    float-to-int v5, v2

    int-to-float v7, v5

    sub-float/2addr v2, v7

    .line 1538
    iput v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1540
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eq v2, v6, :cond_9

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_12

    .line 1546
    :pswitch_2
    invoke-direct {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->maybeStartScrolling(I)Z

    goto/16 :goto_12

    .line 1551
    :cond_9
    :pswitch_3
    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    .line 1552
    invoke-direct {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->maybeScroll(I)V

    goto/16 :goto_12

    .line 1579
    :pswitch_4
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eq v2, v6, :cond_1e

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_e

    .line 1674
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->contentFits()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1675
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1676
    invoke-direct {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto/16 :goto_e

    .line 1680
    :cond_a
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1683
    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_b

    .line 1684
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    goto :goto_2

    .line 1687
    :cond_b
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    .line 1691
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_12

    .line 1692
    iput v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v2, 0x2

    .line 1693
    invoke-direct {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1695
    iget-object v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    move v2, v1

    :goto_3
    float-to-int v11, v2

    iget-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    float-to-int v12, v1

    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_e

    const/4 v13, 0x0

    goto :goto_5

    :cond_e
    const/high16 v13, -0x80000000

    :goto_5
    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    const v5, 0x7fffffff

    if-eqz v1, :cond_f

    const/4 v14, 0x0

    goto :goto_6

    :cond_f
    const v14, 0x7fffffff

    :goto_6
    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_10

    const/high16 v15, -0x80000000

    goto :goto_7

    :cond_10
    const/4 v15, 0x0

    :goto_7
    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v1, :cond_11

    const v16, 0x7fffffff

    goto :goto_8

    :cond_11
    const/16 v16, 0x0

    :goto_8
    invoke-virtual/range {v8 .. v16}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1703
    iput v7, v0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    const/4 v1, 0x1

    goto/16 :goto_f

    .line 1706
    :cond_12
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1707
    invoke-direct {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    goto/16 :goto_e

    .line 1583
    :pswitch_6
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    .line 1584
    iget v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {v0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1586
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1587
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1590
    iget-boolean v7, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v7, :cond_14

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v6, v1

    if-lez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v1, v7

    int-to-float v1, v1

    cmpg-float v1, v6, v1

    if-gez v1, :cond_13

    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_13
    const/4 v1, 0x0

    goto :goto_a

    .line 1593
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_13

    goto :goto_9

    :goto_a
    if-eqz v5, :cond_1d

    .line 1596
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v6

    if-nez v6, :cond_1d

    if-eqz v1, :cond_1d

    .line 1597
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eqz v1, :cond_15

    .line 1598
    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1601
    :cond_15
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    if-nez v1, :cond_16

    .line 1602
    new-instance v1, Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    .line 1605
    :cond_16
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mPerformClick:Lorg/lucasr/twowayview/TwoWayView$PerformClick;

    .line 1606
    iput v2, v1, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->mClickMotionPosition:I

    .line 1607
    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->rememberWindowAttachCount()V

    .line 1609
    iput v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 1611
    iget v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-eqz v6, :cond_18

    iget v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-ne v6, v3, :cond_17

    goto :goto_b

    .line 1660
    :cond_17
    iget-boolean v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v5, :cond_1d

    iget-object v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1661
    invoke-virtual {v1}, Lorg/lucasr/twowayview/TwoWayView$PerformClick;->run()V

    goto :goto_d

    .line 1612
    :cond_18
    :goto_b
    iget v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-nez v6, :cond_19

    .line 1613
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    goto :goto_c

    .line 1615
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    .line 1618
    :goto_c
    iput v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1620
    iget-boolean v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-nez v6, :cond_1c

    iget-object v6, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1621
    iput v3, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1623
    invoke-virtual {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1624
    iget v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    invoke-direct {v0, v2, v5}, Lorg/lucasr/twowayview/TwoWayView;->positionSelector(ILandroid/view/View;)V

    .line 1625
    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1627
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1a

    .line 1628
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1629
    instance-of v6, v2, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_1a

    .line 1630
    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 1634
    :cond_1a
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v2, :cond_1b

    .line 1635
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/lucasr/twowayview/TwoWayView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1638
    :cond_1b
    new-instance v2, Lorg/lucasr/twowayview/TwoWayView$1;

    invoke-direct {v2, v0, v5, v1}, Lorg/lucasr/twowayview/TwoWayView$1;-><init>(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Lorg/lucasr/twowayview/TwoWayView$PerformClick;)V

    iput-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 1654
    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v0, v1, v5, v6}, Lorg/lucasr/twowayview/TwoWayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 1657
    :cond_1c
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1658
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 1665
    :cond_1d
    :goto_d
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1667
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1668
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    goto :goto_e

    .line 1713
    :cond_1e
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1714
    invoke-direct {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    :goto_e
    const/4 v1, 0x0

    .line 1718
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForTap()V

    .line 1719
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->cancelCheckForLongPress()V

    .line 1720
    invoke-virtual {v0, v4}, Lorg/lucasr/twowayview/TwoWayView;->setPressed(Z)V

    .line 1722
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_1f

    .line 1723
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    iget-object v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v4

    or-int/2addr v2, v4

    or-int/2addr v1, v2

    :cond_1f
    move v4, v1

    .line 1726
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    goto :goto_12

    .line 1476
    :pswitch_7
    iget-boolean v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v2, :cond_20

    goto :goto_12

    .line 1480
    :cond_20
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1481
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1482
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-eqz v2, :cond_21

    .line 1483
    iget-object v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->stop()V

    .line 1486
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1487
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1489
    iget-boolean v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v8, :cond_22

    move v8, v6

    goto :goto_10

    :cond_22
    move v8, v2

    :goto_10
    iput v8, v0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v2, v2

    float-to-int v6, v6

    .line 1491
    invoke-virtual {v0, v2, v6}, Lorg/lucasr/twowayview/TwoWayView;->pointToPosition(II)I

    move-result v2

    .line 1493
    invoke-static {v1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mActivePointerId:I

    .line 1494
    iput v7, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchRemainderPos:F

    .line 1496
    iget-boolean v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    if-eqz v1, :cond_23

    goto :goto_12

    .line 1500
    :cond_23
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    if-ne v1, v5, :cond_24

    const/4 v1, 0x3

    .line 1501
    iput v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1502
    invoke-direct {v0, v3}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 1503
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lorg/lucasr/twowayview/TwoWayView;->findMotionRowOrColumn(I)I

    move-result v2

    goto :goto_11

    .line 1504
    :cond_24
    iget v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    if-ltz v1, :cond_25

    iget-object v1, v0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    invoke-interface {v1, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1505
    iput v4, v0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 1506
    invoke-direct/range {p0 .. p0}, Lorg/lucasr/twowayview/TwoWayView;->triggerCheckForTap()V

    .line 1509
    :cond_25
    :goto_11
    iput v2, v0, Lorg/lucasr/twowayview/TwoWayView;->mMotionPosition:I

    :goto_12
    if-eqz v4, :cond_26

    .line 1733
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_26
    return v3

    :cond_27
    :goto_13
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1743
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 1748
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 1749
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 1752
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    goto :goto_0

    .line 1754
    :cond_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1756
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1757
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1758
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 1759
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishEdgeGlows()V

    .line 1760
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 997
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 999
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 1002
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1003
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 1004
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    if-eqz p1, :cond_0

    .line 1005
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 1006
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishEdgeGlows()V

    .line 1007
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    :cond_0
    if-ne v0, v1, :cond_3

    .line 1013
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    goto :goto_0

    .line 1017
    :cond_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    if-eq v0, p1, :cond_3

    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    if-ne v0, v1, :cond_2

    .line 1021
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    goto :goto_0

    .line 1025
    :cond_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->hideSelector()V

    .line 1026
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1027
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->layoutChildren()V

    .line 1032
    :cond_3
    :goto_0
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchMode:I

    return-void
.end method

.method pageScroll(I)Z
    .locals 4

    .line 1900
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->forceValidFocusDirection(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x82

    if-eq p1, v2, :cond_2

    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    goto :goto_2

    .line 1908
    :cond_2
    :goto_0
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    sub-int/2addr p1, v1

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x1

    goto :goto_3

    .line 1906
    :cond_3
    :goto_1
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-gez p1, :cond_4

    return v0

    .line 1916
    :cond_4
    invoke-direct {p0, p1, v2}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 v0, 0x4

    .line 1918
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1919
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v0

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    if-eqz v2, :cond_5

    .line 1921
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_5

    const/4 v0, 0x3

    .line 1922
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    :cond_5
    if-nez v2, :cond_6

    .line 1925
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 1926
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 1929
    :cond_6
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 1930
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    .line 1932
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->awakenScrollbarsInternal()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1933
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    :cond_7
    return v1

    :cond_8
    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1831
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/4 v1, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v1

    .line 1845
    :cond_1
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    if-lez p1, :cond_2

    .line 1847
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result p1

    neg-int p1, p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    return v0

    :cond_2
    return v1

    .line 1837
    :cond_3
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 1839
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAvailableSize()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    return v0

    :cond_4
    return v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 6

    .line 5652
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->MULTIPLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 5653
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 5654
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5656
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5658
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 5660
    :cond_0
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 5665
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    .line 5667
    :cond_2
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    .line 5671
    :cond_3
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->SINGLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_7

    .line 5672
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 5674
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5675
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5677
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5678
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 5679
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5682
    :cond_4
    iput v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    .line 5683
    :cond_5
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5684
    :cond_6
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 5691
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateOnScreenCheckedViews()V

    .line 5694
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public pointToPosition(II)I
    .locals 4

    .line 1092
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1095
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1100
    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1103
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1105
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1106
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1367
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->recycleVelocityTracker()V

    .line 1370
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3768
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 3769
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method resetState()V
    .locals 4

    .line 5565
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 5567
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 5569
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedStart:I

    .line 5570
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 5571
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 5572
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    const/4 v1, 0x0

    .line 5573
    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mPendingSync:Lorg/lucasr/twowayview/TwoWayView$SavedState;

    const/4 v1, -0x1

    .line 5574
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 5575
    iput-wide v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 5577
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOverScroll:I

    .line 5579
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 5580
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 5582
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorPosition:I

    .line 5583
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 5585
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 12

    .line 4639
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 4647
    :cond_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v2

    .line 4648
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v3

    .line 4650
    iget v4, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 4651
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_3

    add-int v7, v4, v0

    if-ge v5, v7, :cond_3

    .line 4657
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, v5, v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4658
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v7

    .line 4660
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v8

    if-ge v7, v2, :cond_1

    .line 4664
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_0

    :cond_1
    if-le v8, v3, :cond_2

    .line 4666
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildMeasuredSize(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_3
    if-ge v5, v4, :cond_9

    move v3, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_8

    .line 4673
    invoke-virtual {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4674
    invoke-direct {p0, v7}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v7

    if-nez v2, :cond_6

    if-gtz v4, :cond_5

    if-ge v7, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v7

    goto :goto_4

    .line 4684
    :cond_5
    :goto_3
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    :cond_6
    :goto_4
    if-lt v7, v3, :cond_7

    add-int v0, v4, v2

    move v5, v0

    goto :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    move v7, v5

    move v5, v4

    goto :goto_0

    .line 4696
    :cond_9
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v8, v3

    const/4 v9, 0x0

    move v3, v0

    :goto_5
    if-ltz v3, :cond_e

    .line 4701
    invoke-virtual {p0, v3}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4702
    invoke-direct {p0, v10}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v11

    .line 4703
    invoke-direct {p0, v10}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v10

    if-ne v3, v0, :cond_c

    if-lt v5, v2, :cond_b

    if-le v10, v8, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v11

    goto :goto_8

    .line 4709
    :cond_b
    :goto_7
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFadingEdgeLength()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_6

    :cond_c
    :goto_8
    if-gt v10, v8, :cond_d

    add-int v5, v4, v3

    move v7, v11

    goto :goto_9

    :cond_d
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_e
    move v5, v7

    move v7, v9

    :goto_9
    const/4 v0, 0x0

    :goto_a
    const/4 v2, -0x1

    .line 4721
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    .line 4723
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    .line 4725
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    .line 4726
    invoke-direct {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 4728
    iput v7, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 4730
    invoke-direct {p0, v5, v0}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(IZ)I

    move-result v0

    if-lt v0, v4, :cond_f

    .line 4731
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_f

    const/4 v2, 0x4

    .line 4732
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 4733
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    .line 4734
    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionInt(I)V

    .line 4735
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    goto :goto_b

    :cond_f
    const/4 v0, -0x1

    :goto_b
    if-ltz v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .line 4748
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4749
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public scrollBy(I)V
    .locals 0

    neg-int p1, p1

    .line 3820
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->scrollListItemsBy(I)Z

    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1787
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getFirstVisiblePosition()I

    move-result v0

    .line 1788
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getLastVisiblePosition()I

    move-result v1

    .line 1790
    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    return-void

    .line 1794
    :cond_0
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1795
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastAccessibilityScrollEventToIndex:I

    .line 1799
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 91
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 773
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 777
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V

    .line 778
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 780
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x1

    .line 781
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    const/4 v1, -0x1

    .line 783
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedPosition:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 784
    iput-wide v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldSelectedRowId:J

    .line 786
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 790
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 794
    :cond_2
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 795
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mOldItemCount:I

    .line 796
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 798
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;-><init>(Lorg/lucasr/twowayview/TwoWayView;Lorg/lucasr/twowayview/TwoWayView$1;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    .line 799
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataSetObserver:Lorg/lucasr/twowayview/TwoWayView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 801
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->setViewTypeCount(I)V

    .line 803
    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    .line 804
    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 806
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez p1, :cond_3

    .line 807
    new-instance p1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    .line 810
    :cond_3
    invoke-direct {p0, v2}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result p1

    .line 811
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setSelectedPositionInt(I)V

    .line 812
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    .line 814
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-nez p1, :cond_5

    .line 815
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    goto :goto_0

    .line 818
    :cond_4
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    .line 819
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mHasStableIds:Z

    .line 820
    iput-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAreAllItemsSelectable:Z

    .line 822
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkSelectionChanged()V

    .line 825
    :cond_5
    :goto_0
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->checkFocus()V

    .line 826
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    return-void
.end method

.method public setChoiceMode(Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;)V
    .locals 1

    .line 753
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    .line 755
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-eq p1, v0, :cond_1

    .line 756
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez p1, :cond_0

    .line 757
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 760
    :cond_0
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 761
    new-instance p1, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p1}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 6251
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 6252
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEmptyView:Landroid/view/View;

    .line 6253
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateEmptyStatus()V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 6258
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6259
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6261
    :goto_1
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    if-nez p1, :cond_2

    .line 6263
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 6266
    :goto_2
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .line 6271
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 6272
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6274
    :goto_1
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_2

    .line 6276
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDesiredFocusableState:Z

    :cond_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 6279
    :cond_3
    invoke-super {p0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 5

    .line 658
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->NONE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mChoiceMode:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    sget-object v1, Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;->MULTIPLE:Lorg/lucasr/twowayview/TwoWayView$ChoiceMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 663
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 664
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 666
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 668
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v3, v4, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 670
    :cond_1
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    :cond_2
    :goto_0
    if-eq v0, p2, :cond_b

    if-eqz p2, :cond_3

    .line 676
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2

    .line 678
    :cond_3
    iget p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2

    .line 682
    :cond_4
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 686
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 687
    :cond_6
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v0, :cond_7

    .line 690
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V

    :cond_7
    if-eqz p2, :cond_9

    .line 697
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_8

    .line 700
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedIdStates:Landroid/support/v4/util/LongSparseArray;

    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 703
    :cond_8
    iput v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    goto :goto_2

    .line 704
    :cond_9
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 705
    :cond_a
    iput v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mCheckedItemCount:I

    .line 710
    :cond_b
    :goto_2
    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mInLayout:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mBlockLayoutRequests:Z

    if-nez p1, :cond_c

    .line 711
    iput-boolean v2, p0, Lorg/lucasr/twowayview/TwoWayView;->mDataChanged:Z

    .line 712
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->rememberSyncState()V

    .line 713
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    :cond_c
    return-void
.end method

.method public setItemMargin(I)V
    .locals 1

    .line 418
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    if-ne v0, p1, :cond_0

    return-void

    .line 422
    :cond_0
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemMargin:I

    .line 423
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemsCanFocus:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x60000

    .line 441
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setDescendantFocusability(I)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mOnScrollListener:Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;

    .line 461
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOrientation(Lorg/lucasr/twowayview/TwoWayView$Orientation;)V
    .locals 1

    .line 400
    sget-object v0, Lorg/lucasr/twowayview/TwoWayView$Orientation;->VERTICAL:Lorg/lucasr/twowayview/TwoWayView$Orientation;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 401
    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 405
    :cond_1
    iput-boolean p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    .line 407
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->resetState()V

    .line 408
    iget-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-virtual {p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->clear()V

    .line 410
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1077
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v0, :cond_2

    .line 1078
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1080
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1081
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mStartEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1085
    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mEndEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1088
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    return-void
.end method

.method public setRecyclerListener(Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mRecycler:Lorg/lucasr/twowayview/TwoWayView$RecycleBin;

    invoke-static {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->access$102(Lorg/lucasr/twowayview/TwoWayView$RecycleBin;Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 3784
    invoke-virtual {p0, p1, v0}, Lorg/lucasr/twowayview/TwoWayView;->setSelectionFromOffset(II)V

    return-void
.end method

.method public setSelectionFromOffset(II)V
    .locals 1

    .line 3788
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 3792
    :cond_0
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3793
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->lookForSelectablePosition(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 3795
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 3798
    :cond_1
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mResurrectToPosition:I

    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    .line 3802
    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mLayoutMode:I

    .line 3804
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_3

    .line 3805
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    goto :goto_1

    .line 3807
    :cond_3
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSpecificStart:I

    .line 3810
    :goto_1
    iget-boolean p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mNeedSync:Z

    if-eqz p2, :cond_4

    .line 3811
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncPosition:I

    .line 3812
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSyncRowId:J

    .line 3815
    :cond_4
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->requestLayout()V

    :cond_5
    return-void
.end method

.method public setSelector(I)V
    .locals 1

    .line 502
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 515
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_0
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 519
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 520
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 522
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 523
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->updateSelectorState()V

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 9

    .line 1339
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    const/4 v0, 0x0

    if-ltz v6, :cond_2

    .line 1341
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 1344
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    .line 1346
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 1351
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7, v8}, Lorg/lucasr/twowayview/TwoWayView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1355
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 12

    .line 3897
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mFirstPosition:I

    .line 3898
    invoke-virtual {p0}, Lorg/lucasr/twowayview/TwoWayView;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    .line 3900
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getStartEdge()I

    move-result v3

    .line 3901
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->getEndEdge()I

    move-result v4

    if-eqz p1, :cond_4

    .line 3903
    iget v5, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v5}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildStartEdge(Landroid/view/View;)I

    move-result v0

    if-ne v0, v3, :cond_0

    if-ltz p1, :cond_4

    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mItemCount:I

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildEndEdge(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_1

    if-lez p1, :cond_1

    goto :goto_2

    .line 3909
    :cond_1
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    neg-int v0, p1

    move v9, v0

    :goto_0
    iget-boolean v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mIsVertical:Z

    if-eqz v0, :cond_3

    neg-int v5, p1

    move v10, v5

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x0

    .line 3914
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mLastTouchPos:F

    const/4 p1, 0x4

    .line 3916
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView;->mTouchMode:I

    const/4 p1, 0x2

    .line 3917
    invoke-direct {p0, p1}, Lorg/lucasr/twowayview/TwoWayView;->reportScrollStateChange(I)V

    .line 3919
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_3

    .line 3907
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView;->finishSmoothScrolling()V

    :goto_3
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 3829
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3830
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3832
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    .line 3884
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3885
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3887
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromOffset(II)V
    .locals 1

    .line 3867
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3868
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3870
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromOffset(III)V
    .locals 1

    .line 3849
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    if-nez v0, :cond_0

    .line 3850
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-direct {v0, p0}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;-><init>(Lorg/lucasr/twowayview/TwoWayView;)V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    .line 3852
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView;->mPositionScroller:Lorg/lucasr/twowayview/TwoWayView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lucasr/twowayview/TwoWayView$PositionScroller;->startWithOffset(III)V

    return-void
.end method
