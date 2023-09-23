.class public Leu/davidea/flexibleadapter/FlexibleAdapter;
.super Leu/davidea/flexibleadapter/AnimatorAdapter;
.source "FlexibleAdapter.java"

# interfaces
.implements Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnActionStateListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;,
        Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Leu/davidea/flexibleadapter/items/IFlexible;",
        ">",
        "Leu/davidea/flexibleadapter/AnimatorAdapter;",
        "Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static ANIMATE_TO_LIMIT:I = 0x3e8

.field private static final AUTO_SCROLL_DELAY:J = 0x96L

.field private static final EXTRA_CHILD:Ljava/lang/String;

.field private static final EXTRA_FILTER:Ljava/lang/String;

.field private static final EXTRA_HEADERS:Ljava/lang/String;

.field private static final EXTRA_LEVEL:Ljava/lang/String;

.field private static final EXTRA_PARENT:Ljava/lang/String;

.field private static final EXTRA_STICKY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FlexibleAdapter"


# instance fields
.field protected final FILTER:I

.field protected final LOAD_MORE_COMPLETE:I

.field protected final UPDATE:I

.field private adjustSelected:Z

.field private autoMap:Z

.field private childSelected:Z

.field private collapseOnExpand:Z

.field private collapseSubLevels:Z

.field private diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

.field private diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

.field private endlessLoading:Z

.field private endlessScrollEnabled:Z

.field private filtering:Z

.field private headersShown:Z

.field private mAnimateToLimit:I

.field protected mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

.field private mEndlessPageSize:I

.field protected mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

.field private mEndlessScrollThreshold:I

.field private mEndlessTargetCount:I

.field private mExpandedFilterFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>.FilterAsyncTask;"
        }
    .end annotation
.end field

.field private mFilterEntity:Ljava/io/Serializable;

.field protected mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

.field protected mHandler:Landroid/os/Handler;

.field private mHashItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

.field public mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

.field protected mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

.field protected mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMinCollapsibleLevel:I

.field private mNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mOldFilterEntity:Ljava/io/Serializable;

.field private mOriginalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRestoreList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>.RestoreInfo;>;"
        }
    .end annotation
.end field

.field private mScrollableFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mScrollableHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSelectedLevel:I

.field private mStickyContainer:Landroid/view/ViewGroup;

.field private mStickyElevation:I

.field protected mStickyHeaderChangeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

.field private mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

.field private mTempItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTopEndless:Z

.field private mTypeInstances:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private mUndoPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

.field private multiRange:Z

.field private notifyChangeOfUnfilteredItems:Z

.field private notifyMoveOfFilteredItems:Z

.field private parentSelected:Z

.field private permanentDelete:Z

.field private recursive:Z

.field private restoreSelection:Z

.field private scrollOnExpand:Z

.field private start:J

.field private time:J

.field private unlinkOnRemoveHeader:Z

.field private useDiffUtil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_parentSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_childSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_headersShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_stickyHeaders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_selectedLevel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;-><init>(Ljava/util/List;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 242
    invoke-direct {p0, p3}, Leu/davidea/flexibleadapter/AnimatorAdapter;-><init>(Z)V

    const/4 p3, 0x0

    .line 120
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->UPDATE:I

    const/4 v1, 0x2

    iput v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->FILTER:I

    const/16 v1, 0x8

    iput v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->LOAD_MORE_COMPLETE:I

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;

    invoke-direct {v3, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$HandlerCallback;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    .line 131
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    .line 138
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    .line 147
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    .line 152
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    .line 155
    sget v2, Leu/davidea/flexibleadapter/FlexibleAdapter;->ANIMATE_TO_LIMIT:I

    iput v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    .line 158
    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    const/4 v2, -0x1

    iput v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 159
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 167
    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    iput p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    .line 168
    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-nez p1, :cond_0

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    goto :goto_0

    .line 245
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 247
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    .line 248
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    .line 249
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    .line 250
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 256
    :cond_1
    new-instance p1, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;

    invoke-direct {p1, p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$AdapterDataObserver;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$1;)V

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic access$100(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    return-object p0
.end method

.method static synthetic access$1000(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    return p0
.end method

.method static synthetic access$1002(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    return p1
.end method

.method static synthetic access$102(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;)Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;
    .locals 0

    .line 99
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    return-object p1
.end method

.method static synthetic access$1100(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoScrollWithDelay(II)V

    return-void
.end method

.method static synthetic access$1200(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    return-void
.end method

.method static synthetic access$1300(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performScroll(I)V

    return-void
.end method

.method static synthetic access$1400(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    return p0
.end method

.method static synthetic access$1402(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    return p1
.end method

.method static synthetic access$1500(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    return-void
.end method

.method static synthetic access$1600(Leu/davidea/flexibleadapter/FlexibleAdapter;ILjava/util/List;I)I
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursiveCollapse(ILjava/util/List;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1802(Leu/davidea/flexibleadapter/FlexibleAdapter;J)J
    .locals 0

    .line 99
    iput-wide p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->start:J

    return-wide p1
.end method

.method static synthetic access$1900(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->prepareItemsForUpdate(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/view/ViewGroup;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$2000(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    return-void
.end method

.method static synthetic access$2100(Leu/davidea/flexibleadapter/FlexibleAdapter;Ljava/util/List;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItemsAsync(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2200(Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/util/DiffUtil$DiffResult;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

    return-object p0
.end method

.method static synthetic access$2300(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2400(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/Payload;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->executeNotifications(Leu/davidea/flexibleadapter/Payload;)V

    return-void
.end method

.method static synthetic access$2500(Leu/davidea/flexibleadapter/FlexibleAdapter;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-object p0
.end method

.method static synthetic access$2502(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;)Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;
    .locals 0

    .line 99
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    return-object p1
.end method

.method static synthetic access$2600(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideProgressItem()V

    return-void
.end method

.method static synthetic access$300(Leu/davidea/flexibleadapter/FlexibleAdapter;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return p0
.end method

.method static synthetic access$302(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return p1
.end method

.method static synthetic access$400(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    return-void
.end method

.method static synthetic access$502(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    return p1
.end method

.method static synthetic access$600(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Leu/davidea/flexibleadapter/FlexibleAdapter;)Ljava/util/List;
    .locals 0

    .line 99
    iget-object p0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IHeader;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideHeader(ILeu/davidea/flexibleadapter/items/IHeader;)V

    return-void
.end method

.method static synthetic access$900(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showProgressItem()V

    return-void
.end method

.method private addSubItems(IILeu/davidea/flexibleadapter/items/IExpandable;Ljava/util/List;ZLjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            "Ljava/util/List<",
            "TT;>;Z",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 3116
    invoke-interface {p3}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p5

    if-nez p5, :cond_0

    .line 3117
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(I)I

    .line 3121
    :cond_0
    invoke-interface {p3}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p5

    if-eqz p5, :cond_1

    add-int/lit8 p5, p1, 0x1

    .line 3122
    invoke-direct {p0, p3, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getRecursiveSubItemCount(Leu/davidea/flexibleadapter/items/IExpandable;I)I

    move-result p2

    add-int/2addr p5, p2

    invoke-virtual {p0, p5, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p6, :cond_2

    .line 3125
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 3126
    invoke-virtual {p0, p1, p6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return p2
.end method

.method private adjustSelected(II)V
    .locals 7

    .line 5014
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    if-lez p2, :cond_0

    .line 5020
    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$15;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$15;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v1, "+"

    .line 5028
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5029
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, p1, :cond_1

    .line 5031
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeSelection(I)Z

    .line 5032
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addAdjustedSelection(I)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 5037
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "AdjustedSelected(%s)=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object p2

    aput-object p2, v3, v5

    invoke-virtual {p1, v0, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private declared-synchronized animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Leu/davidea/flexibleadapter/Payload;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 4278
    :try_start_0
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    if-eqz v0, :cond_1

    .line 4279
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animate changes with DiffUtils! oldSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4280
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    if-nez p2, :cond_0

    .line 4281
    new-instance p2, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    invoke-direct {p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;-><init>()V

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    .line 4283
    :cond_0
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p2, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->setItems(Ljava/util/List;Ljava/util/List;)V

    .line 4284
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    invoke-static {p1, p2}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;Z)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

    goto :goto_0

    .line 4286
    :cond_1
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateTo(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4288
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4277
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized animateTo(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Leu/davidea/flexibleadapter/Payload;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 4306
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4307
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    if-gt v4, v5, :cond_0

    .line 4308
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Animate changes! oldSize=%s newSize=%s limit=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4309
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4310
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateRemovals(Ljava/util/List;Ljava/util/List;)V

    .line 4311
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateAdditions(Ljava/util/List;Ljava/util/List;)V

    .line 4312
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    if-eqz v0, :cond_2

    .line 4313
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyAndAnimateMovedItems(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 4315
    :cond_0
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "NotifyDataSetChanged! oldSize=%s newSize=%s limit=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, "0"

    :goto_0
    aput-object v6, v2, v1

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-virtual {v4, v5, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4316
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4317
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4320
    :cond_2
    :goto_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->executeNotifications(Leu/davidea/flexibleadapter/Payload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4321
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4305
    monitor-exit p0

    throw p1
.end method

.method private applyAndAnimateAdditions(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 4390
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4392
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    .line 4393
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v3}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 4394
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4395
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4396
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v6, "calculateAdditions add position=%s item=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v3, v7, v4

    invoke-virtual {v5, v6, v7}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4397
    iget-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    if-eqz v5, :cond_1

    .line 4399
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4400
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v5, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4403
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {p1, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4404
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4405
    :goto_1
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v5, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-direct {v5, v1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4410
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4411
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "calculateAdditions total new=%s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyAndAnimateMovedItems(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 4422
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 4423
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v4, :cond_0

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v4}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 4424
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4425
    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2

    if-eq v4, v0, :cond_2

    .line 4427
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v6, "calculateMovedItems fromPosition=%s toPosition=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4428
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 4430
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4431
    :goto_1
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v6, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v7, 0x4

    invoke-direct {v6, v4, v0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(III)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4435
    :cond_3
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "calculateMovedItems total move=%s"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyAndAnimateRemovals(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 4353
    invoke-direct {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->applyModifications(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 4356
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4358
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ltz v1, :cond_4

    .line 4359
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v6, :cond_0

    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v6}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 4360
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4361
    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1

    .line 4362
    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v9, "calculateRemovals remove position=%s item=%s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    aput-object v6, v8, v2

    invoke-virtual {v7, v9, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4363
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4364
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v7, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    const/4 v8, 0x3

    invoke-direct {v7, v1, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4366
    :cond_1
    iget-boolean v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v7, :cond_3

    .line 4368
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4371
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isFiltering()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v6, v7}, Leu/davidea/flexibleadapter/items/IFlexible;->shouldNotifyChange(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4372
    :cond_2
    invoke-interface {p1, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4373
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    new-instance v7, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    invoke-direct {v7, v1, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 4378
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4379
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "calculateModifications total mod=%s"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4380
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "calculateRemovals total out=%s"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyModifications(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4331
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v0, :cond_3

    .line 4333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    .line 4334
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 4335
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4336
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4337
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4339
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHashItems:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private autoScrollWithDelay(II)V
    .locals 3

    .line 4986
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Leu/davidea/flexibleadapter/FlexibleAdapter$14;

    invoke-direct {v2, p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$14;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;II)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    .line 5010
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private collapseSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")Z"
        }
    .end annotation

    .line 2751
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private createRestoreItemInfo(ILeu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 4902
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 4905
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4908
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 4911
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    new-instance v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    invoke-direct {v2, p0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4912
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Recycled Item %s on position=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p2, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private createRestoreSubItemInfo(Leu/davidea/flexibleadapter/items/IExpandable;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4888
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v1

    .line 4889
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4890
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    new-instance v3, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    invoke-direct {v3, p0, p1, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IFlexible;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4891
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Recycled SubItem %s with Parent position=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    .line 4892
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    .line 4891
    invoke-virtual {p2, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized executeNotifications(Leu/davidea/flexibleadapter/Payload;)V
    .locals 10

    monitor-enter p0

    .line 4439
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4440
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Dispatching notifications"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v4}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4441
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;->getNewItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 4442
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-virtual {p1, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 4443
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffResult:Landroid/support/v7/util/DiffUtil$DiffResult;

    goto :goto_2

    .line 4445
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v4, "Performing %s notifications"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4446
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 4447
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    .line 4448
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;

    .line 4449
    iget v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->operation:I

    packed-switch v5, :pswitch_data_0

    .line 4463
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    goto :goto_1

    .line 4460
    :pswitch_0
    iget v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->fromPosition:I

    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v5, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemMoved(II)V

    goto :goto_0

    .line 4457
    :pswitch_1
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 4454
    :pswitch_2
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 4451
    :pswitch_3
    iget v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$Notification;->position:I

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemInserted(I)V

    goto :goto_0

    :goto_1
    const-string v5, "notifyDataSetChanged!"

    .line 4463
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4464
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4468
    :cond_1
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTempItems:Ljava/util/List;

    .line 4469
    iput-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mNotifications:Ljava/util/List;

    .line 4470
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    .line 4472
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->start:J

    const/4 p1, 0x0

    sub-long v8, v4, v6

    iput-wide v8, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->time:J

    .line 4473
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Animate changes DONE in %sms"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4474
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4438
    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private expand(IZZZ)I
    .locals 10

    .line 2567
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 2568
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2570
    :cond_0
    move-object v1, v0

    check-cast v1, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2571
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 2572
    invoke-interface {v1, v2}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    .line 2573
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p3, "No subItems to Expand on position %s expanded %s"

    new-array p4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p4, v5

    invoke-virtual {p2, p3, p4}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    const/4 v3, 0x3

    if-nez p3, :cond_2

    if-nez p2, :cond_2

    .line 2577
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v7, "Request to Expand on position=%s expanded=%s anyParentSelected=%s"

    new-array v8, v3, [Ljava/lang/Object;

    .line 2578
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    iget-boolean v9, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    .line 2577
    invoke-virtual {v6, v7, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez p3, :cond_3

    .line 2581
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v6

    if-nez v6, :cond_b

    iget-boolean v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    if-eqz v6, :cond_3

    .line 2582
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v6

    iget v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    if-gt v6, v7, :cond_b

    .line 2586
    :cond_3
    iget-boolean v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    if-eqz v6, :cond_4

    if-nez p2, :cond_4

    iget v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseAll(I)I

    move-result v6

    if-lez v6, :cond_4

    .line 2587
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    .line 2592
    :cond_4
    invoke-direct {p0, v1, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v0

    .line 2593
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    add-int/lit8 v7, p1, 0x1

    invoke-interface {v6, v7, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 2594
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2596
    invoke-interface {v1, v5}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    if-nez p3, :cond_5

    .line 2600
    iget-boolean v8, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    if-eqz v8, :cond_5

    if-nez p2, :cond_5

    .line 2601
    invoke-direct {p0, p1, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoScrollWithDelay(II)V

    :cond_5
    if-eqz p4, :cond_6

    .line 2605
    sget-object p2, Leu/davidea/flexibleadapter/Payload;->EXPANDED:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 2606
    :cond_6
    invoke-virtual {p0, v7, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeInserted(II)V

    if-nez p3, :cond_8

    .line 2609
    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p2, :cond_8

    .line 2611
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :cond_7
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/IFlexible;

    add-int/2addr p4, v5

    add-int v7, p1, p4

    .line 2612
    invoke-direct {p0, v7, v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2617
    :cond_8
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expandSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 2618
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expandSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z

    .line 2620
    :cond_9
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p4, "%s %s subItems on position=%s"

    new-array v0, v3, [Ljava/lang/Object;

    if-eqz p3, :cond_a

    const-string p3, "Initially expanded"

    goto :goto_1

    :cond_a
    const-string p3, "Expanded"

    :goto_1
    aput-object p3, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {p2, p4, v0}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v6

    :cond_b
    return v2
.end method

.method private expandSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")Z"
        }
    .end annotation

    .line 2626
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2628
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2629
    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1

    .line 2631
    :cond_0
    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private filterExpandableObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4122
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4123
    check-cast p1, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 4125
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4126
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 4127
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    .line 4128
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4131
    :cond_1
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getCurrentChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4133
    instance-of v3, v2, Leu/davidea/flexibleadapter/items/IExpandable;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4137
    :cond_3
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/io/Serializable;)Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-interface {v2, v3}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 4138
    invoke-interface {v2}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4140
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4145
    :cond_4
    invoke-interface {p1, v1}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    :cond_5
    return v1
.end method

.method private declared-synchronized filterItemsAsync(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4042
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "filterItems with filterEntity=\"%s\""

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4044
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    .line 4046
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4047
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4048
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    .line 4050
    :cond_0
    :try_start_1
    invoke-direct {p0, v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z

    goto :goto_0

    .line 4052
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4054
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->resetFilterFlags(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 4055
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    .line 4056
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 4057
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreScrollableHeadersAndFooters(Ljava/util/List;)V

    .line 4058
    :cond_2
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 4062
    :goto_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasNewFilter(Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4063
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    .line 4064
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->FILTER:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateDiff(Ljava/util/List;Leu/davidea/flexibleadapter/Payload;)V

    .line 4068
    :cond_4
    iput-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4069
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4041
    monitor-exit p0

    throw p1
.end method

.method private filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4091
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterAsyncTask:Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$FilterAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 4093
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 4098
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4099
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4101
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterExpandableObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4104
    const-class v2, Ljava/io/Serializable;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/io/Serializable;)Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_5

    .line 4108
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v3

    .line 4109
    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4110
    invoke-interface {v3, v1}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    .line 4111
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4113
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-nez v2, :cond_6

    const/4 v1, 0x1

    .line 4115
    :cond_6
    invoke-interface {p1, v1}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    return v2
.end method

.method private getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 4923
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4924
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    .line 4925
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4927
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4929
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 4931
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 4932
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 4933
    invoke-direct {p0, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPendingRemovedItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>.RestoreInfo;"
        }
    .end annotation

    .line 4875
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 4877
    iget-object v2, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refPosition:I

    if-gez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRecursiveSubItemCount(Leu/davidea/flexibleadapter/items/IExpandable;I)I
    .locals 5

    .line 2462
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 2465
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2467
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2468
    check-cast v3, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2469
    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 2470
    :goto_1
    invoke-direct {p0, v3, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getRecursiveSubItemCount(Leu/davidea/flexibleadapter/items/IExpandable;I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getViewTypeInstance(I)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 4867
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1
.end method

.method private hasSubItemsSelected(ILjava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 4951
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/IFlexible;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 4952
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4953
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 4954
    invoke-direct {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v0

    .line 4953
    invoke-direct {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItemsSelected(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method private hideHeader(ILeu/davidea/flexibleadapter/items/IHeader;)V
    .locals 5

    if-ltz p1, :cond_0

    .line 1623
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Hiding header position=%s header=$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1624
    invoke-interface {p2, v3}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    .line 1626
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1627
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method private hideHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1614
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1616
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideHeader(ILeu/davidea/flexibleadapter/items/IHeader;)V

    :cond_0
    return-void
.end method

.method private hideProgressItem()V
    .locals 3

    .line 2149
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2151
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "onLoadMore     remove progressItem"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2152
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v0, :cond_0

    .line 2153
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)V

    goto :goto_0

    .line 2155
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initializeItemTouchHelper()V
    .locals 3

    .line 4488
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-nez v0, :cond_2

    .line 4489
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 4490
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView cannot be null. Enabling LongPressDrag or Swipe must be done after the Adapter has been attached to the RecyclerView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4492
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-nez v0, :cond_1

    .line 4493
    new-instance v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;-><init>(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    .line 4494
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Initialized default ItemTouchHelperCallback"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4496
    :cond_1
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 4497
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_2
    return-void
.end method

.method private linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1645
    instance-of v0, p1, Leu/davidea/flexibleadapter/items/ISectionable;

    if-eqz v0, :cond_2

    .line 1646
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 1648
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1649
    sget-object v1, Leu/davidea/flexibleadapter/Payload;->UNLINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkHeaderFrom(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V

    .line 1651
    :cond_0
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 1652
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Link header %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1654
    invoke-interface {v0, p2}, Leu/davidea/flexibleadapter/items/ISectionable;->setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V

    if-eqz p3, :cond_3

    .line 1657
    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1658
    :cond_1
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    .line 1662
    :cond_2
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private mapViewTypeFrom(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4853
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4854
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTypeInstances:Ljava/util/HashMap;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4855
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Mapped viewType %s from %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private noMoreLoad(I)V
    .locals 3

    .line 2164
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "noMoreLoad!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2165
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2167
    sget-object v1, Leu/davidea/flexibleadapter/Payload;->NO_MORE_LOAD:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 2168
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

    if-eqz v0, :cond_1

    .line 2169
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

    invoke-interface {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;->noMoreLoad(I)V

    :cond_1
    return-void
.end method

.method private performInsert(ILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2961
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2963
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 2965
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move p1, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 2970
    iget-object p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "addItems on position=%s itemCount=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2971
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeInserted(II)V

    :cond_1
    return-void
.end method

.method private performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 3290
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3291
    iput-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    .line 3292
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(I)V

    .line 3293
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return-void
.end method

.method private performScroll(I)V
    .locals 2

    .line 4979
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4980
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method private prepareItemsForUpdate(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 5527
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    if-eqz v0, :cond_0

    .line 5528
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->discardBoundViewHolders()V

    .line 5531
    :cond_0
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreScrollableHeadersAndFooters(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 5537
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5538
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 5540
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 5541
    move-object v4, v3

    check-cast v4, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 5542
    invoke-interface {v4, v5}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    .line 5543
    invoke-direct {p0, v4, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v4

    .line 5544
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 5546
    invoke-interface {p1, v6, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 5548
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5552
    :cond_2
    :goto_1
    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v4

    if-nez v4, :cond_3

    .line 5553
    iput-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 5555
    :cond_3
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5556
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5557
    invoke-interface {v3, v1}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    .line 5559
    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    :cond_4
    add-int/2addr v0, v5

    goto :goto_0

    :cond_5
    return-void
.end method

.method private recursiveCollapse(ILjava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;I)I"
        }
    .end annotation

    .line 2756
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 2757
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2758
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2759
    check-cast v3, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2760
    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v3

    if-lt v3, p3, :cond_0

    add-int v3, p1, v0

    .line 2761
    invoke-virtual {p0, v3, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(IZ)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private resetFilterFlags(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 4180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 4181
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4182
    invoke-interface {v3, v1}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 4183
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4184
    move-object v4, v3

    check-cast v4, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 4186
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    if-eqz v5, :cond_1

    .line 4187
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mExpandedFilterFlags:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    .line 4188
    :cond_1
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4189
    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v5

    .line 4191
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 4192
    invoke-interface {v7, v1}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 4193
    instance-of v8, v7, Leu/davidea/flexibleadapter/items/IExpandable;

    if-eqz v8, :cond_2

    .line 4194
    check-cast v7, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 4195
    invoke-interface {v7, v1}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    .line 4196
    invoke-interface {v7}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->resetFilterFlags(Ljava/util/List;)V

    goto :goto_1

    .line 4200
    :cond_3
    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 4201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p1, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_2

    .line 4202
    :cond_4
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4203
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 4208
    :cond_5
    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v4, :cond_6

    .line 4209
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 4210
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4211
    invoke-interface {v3, v1}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    .line 4213
    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private restoreScrollableHeadersAndFooters(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 1139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1140
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1142
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private showAllHeaders(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1500
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "showAllHeaders at startup"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 1502
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    goto :goto_0

    .line 1504
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "showAllHeaders with insert notification (in Post!)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1506
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$6;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$6;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private showAllHeadersWithReset(Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1536
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    .line 1537
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1539
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1540
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1542
    invoke-interface {v4, v3}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    move-object v1, v4

    .line 1544
    :cond_0
    invoke-direct {p0, v0, v2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 1548
    :cond_2
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return-void
.end method

.method private showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)Z"
        }
    .end annotation

    .line 1561
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1563
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getPendingRemovedItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1564
    :cond_0
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1565
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Showing header position=%s header=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p2, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    invoke-interface {v0, v1}, Leu/davidea/flexibleadapter/items/IHeader;->setHidden(Z)V

    .line 1569
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    xor-int/2addr p3, v4

    invoke-direct {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    return v4

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private showOrUpdateHeaders(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2980
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 2981
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    .line 2983
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2984
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2985
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2986
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 2989
    :cond_0
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v5

    invoke-direct {p0, v5, v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2991
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2994
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2998
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2999
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/IHeader;

    .line 3000
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    .line 3002
    :cond_3
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    :cond_4
    return-void
.end method

.method private showProgressItem()V
    .locals 3

    .line 2136
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2137
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "onLoadMore     show progressItem"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2138
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    goto :goto_0

    .line 2141
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    :goto_0
    return-void
.end method

.method private unlinkHeaderFrom(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1677
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 1679
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v1

    .line 1680
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "Unlink header %s from %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 1681
    invoke-interface {v0, v2}, Leu/davidea/flexibleadapter/items/ISectionable;->setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V

    if-eqz p2, :cond_1

    .line 1684
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1685
    :cond_0
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2916
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addItem No item to add!"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 2919
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "addItem delegates addition to addItems!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2920
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public addItem(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2898
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;I)I
    .locals 12

    .line 3206
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "addItemToSection relativePosition=%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3207
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v7

    if-ltz p3, :cond_1

    .line 3209
    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/ISectionable;->setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V

    if-ltz v7, :cond_0

    .line 3210
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v10, 0x0

    .line 3211
    sget-object v11, Leu/davidea/flexibleadapter/Payload;->ADD_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    move-object v6, p0

    move v8, p3

    move-object v9, p1

    invoke-virtual/range {v6 .. v11}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    add-int/2addr v7, v2

    add-int/2addr v7, p3

    .line 3213
    invoke-virtual {p0, v7, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    .line 3215
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    return p1
.end method

.method public addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/ISectionable;",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 3180
    invoke-interface {p2}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3181
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v0

    .line 3182
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3184
    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3186
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    goto :goto_0

    .line 3188
    :cond_0
    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p3

    .line 3190
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItemToSection(Leu/davidea/flexibleadapter/items/ISectionable;Leu/davidea/flexibleadapter/items/IHeader;I)I

    move-result p1

    return p1
.end method

.method public addItemWithDelay(ILeu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;JZ)V"
        }
    .end annotation

    .line 2881
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$10;

    invoke-direct {v1, p0, p1, p2, p5}, Leu/davidea/flexibleadapter/FlexibleAdapter$10;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;ILeu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addItems(ILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2940
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2944
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v1

    if-gez p1, :cond_1

    .line 2946
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "addItems Position is negative! adding items to the end"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2947
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :cond_1
    const/4 v0, 0x1

    .line 2950
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 2952
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showOrUpdateHeaders(Ljava/util/List;)V

    .line 2954
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursive:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    if-nez p1, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 2955
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result p2

    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;->onUpdateEmptyView(I)V

    :cond_2
    return v0

    .line 2941
    :cond_3
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addItems No items to add!"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public addListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Invalid listener class: null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 274
    :cond_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Adding listener class %s as:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemClickListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    .line 278
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 279
    invoke-virtual {v2}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 282
    :cond_1
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemLongClickListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    .line 286
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 287
    invoke-virtual {v2}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 290
    :cond_2
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemMoveListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    .line 294
    :cond_3
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-eqz v1, :cond_4

    .line 295
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnItemSwipeListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    .line 298
    :cond_4
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    if-eqz v1, :cond_5

    .line 299
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnDeleteCompleteListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    .line 302
    :cond_5
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    if-eqz v1, :cond_6

    .line 303
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnStickyHeaderChangeListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderChangeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    .line 306
    :cond_6
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-eqz v1, :cond_7

    .line 307
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnUpdateListener"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    iput-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    .line 309
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;->onUpdateEmptyView(I)V

    .line 311
    :cond_7
    instance-of v1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    if-eqz v1, :cond_8

    .line 312
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "- OnFilterListener"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    check-cast p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    :cond_8
    return-object p0
.end method

.method public final addScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 969
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "Add scrollable footer %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    invoke-interface {p1, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setSelectable(Z)V

    .line 971
    invoke-interface {p1, v2}, Leu/davidea/flexibleadapter/items/IFlexible;->setDraggable(Z)V

    .line 972
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 974
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 975
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 977
    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :goto_1
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v2, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    return v1

    .line 982
    :cond_2
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "Scrollable footer %s already added"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final addScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Enqueued adding scrollable footer (%sms) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$2;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$2;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final addScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Add scrollable header %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 930
    invoke-interface {p1, v5}, Leu/davidea/flexibleadapter/items/IFlexible;->setSelectable(Z)V

    .line 931
    invoke-interface {p1, v5}, Leu/davidea/flexibleadapter/items/IFlexible;->setDraggable(Z)V

    .line 932
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 933
    :goto_0
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    .line 935
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 936
    invoke-virtual {p0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    return v2

    .line 939
    :cond_1
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Scrollable header %s already added"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public final addScrollableHeaderWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Enqueued adding scrollable header (%sms) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1062
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$1;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$1;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public addSection(Leu/davidea/flexibleadapter/items/IHeader;)I
    .locals 1

    const/4 v0, 0x0

    .line 3139
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSection(Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I

    move-result p1

    return p1
.end method

.method public addSection(Leu/davidea/flexibleadapter/items/IHeader;Ljava/util/Comparator;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    .line 3158
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p2

    .line 3159
    invoke-virtual {p0, p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    return p2
.end method

.method public addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 3016
    sget-object v5, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;Z",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 3040
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addSubItem No items to add!"

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p4}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 3044
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItems(IILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 3057
    sget-object v5, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addSubItems(IILjava/util/List;ZLjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "TT;>;Z",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3080
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 3081
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3082
    move-object v5, v0

    check-cast v5, Leu/davidea/flexibleadapter/items/IExpandable;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 3083
    invoke-direct/range {v2 .. v8}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItems(IILeu/davidea/flexibleadapter/items/IExpandable;Ljava/util/List;ZLjava/lang/Object;)Z

    move-result p1

    return p1

    .line 3085
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "addSubItems Provided parentPosition doesn\'t belong to an Expandable item!"

    const/4 p3, 0x0

    new-array p4, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p4}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method

.method public areHeadersShown()Z
    .locals 1

    .line 1292
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return v0
.end method

.method public areHeadersSticky()Z
    .locals 1

    .line 1302
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public calculatePositionFor(Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "Leu/davidea/flexibleadapter/items/IFlexible;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 835
    :cond_0
    instance-of v1, p1, Leu/davidea/flexibleadapter/items/ISectionable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 836
    move-object v1, p1

    check-cast v1, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 837
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 838
    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IHeader;->isHidden()Z

    move-result v5

    if-nez v5, :cond_2

    .line 839
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v5

    .line 840
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-static {v5, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 842
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p2

    .line 843
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_1

    if-ge p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 847
    :goto_0
    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v4, p2

    .line 848
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v7, "Calculated finalPosition=%s sectionPosition=%s relativePosition=%s fix=%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 849
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v2

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v8, p1

    .line 848
    invoke-virtual {v6, v7, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 854
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 855
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_3
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 857
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v4, "Calculated position %s for item=%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    aput-object p1, v2, v3

    invoke-virtual {p2, v4, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 3232
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "clearAll views"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3233
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllScrollableHeaders()V

    .line 3234
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllScrollableFooters()V

    .line 3235
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public varargs clearAllBut([Ljava/lang/Integer;)V
    .locals 4

    .line 3250
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3251
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "clearAll retaining views %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3253
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3254
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3256
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3260
    :cond_1
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 546
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 547
    invoke-super {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter;->clearSelection()V

    return-void
.end method

.method public collapse(I)I
    .locals 1

    const/4 v0, 0x0

    .line 2694
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(IZ)I

    move-result p1

    return p1
.end method

.method public collapse(IZ)I
    .locals 11

    .line 2707
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 2708
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2710
    :cond_0
    move-object v1, v0

    check-cast v1, Leu/davidea/flexibleadapter/items/IExpandable;

    const/4 v3, 0x1

    .line 2712
    invoke-direct {p0, v1, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableList(Leu/davidea/flexibleadapter/items/IExpandable;Z)Ljava/util/List;

    move-result-object v4

    .line 2713
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2715
    iget-object v6, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v7, "Request to Collapse on position=%s expanded=%s hasSubItemsSelected=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 2716
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-direct {p0, p1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItemsSelected(ILjava/util/List;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 2715
    invoke-virtual {v6, v7, v8}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2718
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_6

    if-lez v5, :cond_6

    .line 2719
    invoke-direct {p0, p1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItemsSelected(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getPendingRemovedItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 2722
    :cond_1
    iget-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    if-eqz v5, :cond_2

    add-int/lit8 v5, p1, 0x1

    .line 2723
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursiveCollapse(ILjava/util/List;I)I

    .line 2725
    :cond_2
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 2726
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 2728
    invoke-interface {v1, v2}, Leu/davidea/flexibleadapter/items/IExpandable;->setExpanded(Z)V

    if-eqz p2, :cond_3

    .line 2731
    sget-object p2, Leu/davidea/flexibleadapter/Payload;->COLLAPSED:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 p2, p1, 0x1

    .line 2732
    invoke-virtual {p0, p2, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeRemoved(II)V

    .line 2735
    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2736
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2737
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)V

    goto :goto_0

    .line 2742
    :cond_4
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 2743
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSHF(Ljava/util/List;Leu/davidea/flexibleadapter/items/IExpandable;)Z

    .line 2745
    :cond_5
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Collapsed %s subItems on position %s"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v5
.end method

.method public collapseAll()I
    .locals 1

    .line 2779
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseAll(I)I

    move-result v0

    return v0
.end method

.method public collapseAll(I)I
    .locals 2

    .line 2792
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->recursiveCollapse(ILjava/util/List;I)I

    move-result p1

    return p1
.end method

.method public confirmDeletion()V
    .locals 3

    .line 3730
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "confirmDeletion!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3731
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3732
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3734
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->emptyBin()V

    return-void
.end method

.method public contains(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized emptyBin()V
    .locals 3

    monitor-enter p0

    .line 3745
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "emptyBin!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3746
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3747
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3748
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 3744
    monitor-exit p0

    throw v0
.end method

.method public final ensureHeaderParent()V
    .locals 1

    .line 1321
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->ensureHeaderParent()V

    :cond_0
    return-void
.end method

.method public expand(I)I
    .locals 1

    const/4 v0, 0x0

    .line 2491
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZ)I

    move-result p1

    return p1
.end method

.method public expand(IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 2508
    invoke-direct {p0, p1, v0, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expand(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2526
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expand(Leu/davidea/flexibleadapter/items/IFlexible;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 2548
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result p1

    return p1
.end method

.method public expandAll()I
    .locals 1

    .line 2646
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expandAll(I)I

    move-result v0

    return v0
.end method

.method public expandAll(I)I
    .locals 6

    .line 2662
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    .line 2663
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v4

    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_1

    .line 2664
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v4

    .line 2665
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2666
    check-cast v4, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2667
    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v5

    if-gt v5, p1, :cond_0

    invoke-direct {p0, v0, v1, v2, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result v5

    if-lez v5, :cond_0

    .line 2668
    invoke-interface {v4}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public expandItemsAtStartUp()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 426
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    .line 427
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 428
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 429
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    .line 430
    iget-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 433
    :cond_0
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-direct {p0, v2, v1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(IZZZ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_2
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 441
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setScrollAnimate(Z)V

    return-object p0
.end method

.method public filterItems()V
    .locals 1

    .line 3956
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    .line 3957
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems(Ljava/util/List;)V

    return-void
.end method

.method public filterItems(J)V
    .locals 1

    .line 3973
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    .line 3974
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems(Ljava/util/List;J)V

    return-void
.end method

.method public filterItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 4037
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4038
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public filterItems(Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;J)V"
        }
    .end annotation

    .line 3994
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3995
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected filterObject(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/Serializable;",
            ")Z"
        }
    .end annotation

    .line 4169
    instance-of v0, p1, Leu/davidea/flexibleadapter/items/IFilterable;

    if-eqz v0, :cond_0

    check-cast p1, Leu/davidea/flexibleadapter/items/IFilterable;

    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/items/IFilterable;->filter(Ljava/io/Serializable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getCardinalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 1

    .line 780
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    .line 781
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public final getCurrentChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3832
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3836
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3838
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3839
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getDeletedChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0

    .line 3833
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final getCurrentItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getDeletedChildren(Leu/davidea/flexibleadapter/items/IExpandable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IExpandable;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3812
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3813
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3814
    iget-object v3, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-eqz v3, :cond_0

    iget-object v3, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    if-ltz v3, :cond_0

    .line 3815
    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDeletedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 3764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3765
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3766
    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getEndlessCurrentPage()I
    .locals 4

    .line 1873
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    if-lez v0, :cond_0

    .line 1874
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEndlessPageSize()I
    .locals 1

    .line 1889
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    return v0
.end method

.method public getEndlessTargetCount()I
    .locals 1

    .line 1919
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    return v0
.end method

.method public getExpandableOf(I)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 0

    .line 2330
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object p1

    return-object p1
.end method

.method public getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Leu/davidea/flexibleadapter/items/IExpandable;"
        }
    .end annotation

    .line 2345
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2346
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2347
    check-cast v1, Leu/davidea/flexibleadapter/items/IExpandable;

    .line 2348
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2349
    invoke-interface {v1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    .line 2350
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2352
    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IFlexible;->isHidden()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getExpandableOfDeletedChild(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Leu/davidea/flexibleadapter/items/IExpandable;"
        }
    .end annotation

    .line 3796
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3797
    iget-object v2, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3798
    iget-object p1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->refItem:Leu/davidea/flexibleadapter/items/IFlexible;

    check-cast p1, Leu/davidea/flexibleadapter/items/IExpandable;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpandablePositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2372
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    return p1
.end method

.method public getExpandedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2427
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 2428
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2429
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getExpandedPositions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2445
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2446
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2448
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFilter(Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)TF;"
        }
    .end annotation

    .line 3905
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    return-object p1
.end method

.method public final getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 763
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getHeaderItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ">;"
        }
    .end annotation

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 1174
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1175
    check-cast v2, Leu/davidea/flexibleadapter/items/IHeader;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Leu/davidea/flexibleadapter/items/IHeader;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1222
    instance-of v0, p1, Leu/davidea/flexibleadapter/items/ISectionable;

    if-eqz v0, :cond_0

    .line 1223
    check-cast p1, Leu/davidea/flexibleadapter/items/ISectionable;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/ISectionable;->getHeader()Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 641
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItem(ILjava/lang/Class;)Leu/davidea/flexibleadapter/items/IFlexible;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(I",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leu/davidea/flexibleadapter/items/IFlexible;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 687
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final varargs getItemCountOfTypes([Ljava/lang/Integer;)I
    .locals 3

    .line 719
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 721
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 722
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 668
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 669
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    .line 4509
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4510
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method public final getItemTouchHelperCallback()Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
    .locals 1

    .line 4522
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4523
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 1707
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1709
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Item for ViewType not found! position=%s, items=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 1713
    :cond_0
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->mapViewTypeFrom(Leu/davidea/flexibleadapter/items/IFlexible;)V

    .line 1714
    iput-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    .line 1715
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public final getMainItemCount()I
    .locals 2

    .line 705
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMinCollapsibleLevel()I
    .locals 1

    .line 2289
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    return v0
.end method

.method public final getSameTypePositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 5

    .line 799
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/items/IFlexible;

    .line 800
    invoke-interface {v2}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v3

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->getItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 802
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return v1
.end method

.method public final getScrollableFooters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getScrollableHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 873
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;
    .locals 3

    .line 1237
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    if-ltz p1, :cond_2

    .line 1240
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 1241
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v0, Leu/davidea/flexibleadapter/items/IHeader;

    return-object v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getSectionItemPositions(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1276
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1277
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1278
    :goto_0
    invoke-virtual {p0, v2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 1280
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")",
            "Ljava/util/List<",
            "Leu/davidea/flexibleadapter/items/ISectionable;",
            ">;"
        }
    .end annotation

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1257
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    .line 1258
    :goto_0
    invoke-virtual {p0, v2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1259
    check-cast v2, Leu/davidea/flexibleadapter/items/ISectionable;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    .line 1260
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSiblingsOf(Leu/davidea/flexibleadapter/items/IFlexible;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2412
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2413
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getStickyHeaderElevation()I
    .locals 1

    .line 1424
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyElevation:I

    return v0
.end method

.method public final getStickyPosition()I
    .locals 1

    .line 1312
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getSubPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 2390
    instance-of v0, p1, Leu/davidea/flexibleadapter/items/ISectionable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v0

    .line 2392
    instance-of v1, v0, Leu/davidea/flexibleadapter/items/IExpandable;

    if-nez v1, :cond_0

    .line 2393
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 2396
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSiblingsOf(Leu/davidea/flexibleadapter/items/IFlexible;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTime()J
    .locals 2

    .line 4480
    iget-wide v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->time:J

    return-wide v0
.end method

.method public getUndoPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3777
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    return-object v0
.end method

.method public hasFilter()Z
    .locals 2

    .line 3853
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3854
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3856
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1197
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasNewFilter(Ljava/io/Serializable;)Z
    .locals 2

    .line 3867
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3868
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 3870
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOldFilterEntity:Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public hasSameHeader(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Leu/davidea/flexibleadapter/items/IHeader;",
            ")Z"
        }
    .end annotation

    .line 1209
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1210
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasSubItems(Leu/davidea/flexibleadapter/items/IExpandable;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2316
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2317
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hideAllHeaders()V
    .locals 2

    .line 1584
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$7;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$7;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final invalidateItemDecorations(J)V
    .locals 2

    .line 5048
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$16;

    invoke-direct {v1, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$16;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isAnimateChangesWithDiffUtil()Z
    .locals 1

    .line 4245
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    return v0
.end method

.method public isAnyChildSelected()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    return v0
.end method

.method public isAnyParentSelected()Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    return v0
.end method

.method public isAutoCollapseOnExpand()Z
    .locals 1

    .line 2182
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    return v0
.end method

.method public isAutoScrollOnExpand()Z
    .locals 1

    .line 2232
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 749
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isItemEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isEndlessScrollEnabled()Z
    .locals 1

    .line 1860
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    return v0
.end method

.method public isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2281
    instance-of p1, p1, Leu/davidea/flexibleadapter/items/IExpandable;

    return p1
.end method

.method public isExpanded(I)Z
    .locals 0

    .line 2258
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2270
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Leu/davidea/flexibleadapter/items/IExpandable;

    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IExpandable;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFiltering()Z
    .locals 1

    .line 4075
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->filtering:Z

    return v0
.end method

.method public final isHandleDragEnabled()Z
    .locals 1

    .line 4588
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isHandleDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1186
    instance-of p1, p1, Leu/davidea/flexibleadapter/items/IHeader;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isItemEnabled(I)Z
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 467
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isLongPressDragEnabled()Z
    .locals 1

    .line 4554
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isLongPressDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPermanentDelete()Z
    .locals 1

    .line 3616
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return v0
.end method

.method public isRecursiveCollapse()Z
    .locals 1

    .line 2206
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    return v0
.end method

.method public final declared-synchronized isRestoreInTime()Z
    .locals 1

    monitor-enter p0

    .line 3755
    :try_start_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRestoreWithSelection()Z
    .locals 1

    .line 3643
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    return v0
.end method

.method public final isScrollableHeaderOrFooter(I)Z
    .locals 0

    .line 892
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 893
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result p1

    return p1
.end method

.method public final isScrollableHeaderOrFooter(Leu/davidea/flexibleadapter/items/IFlexible;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 904
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSelectable(I)Z
    .locals 0

    .line 477
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 478
    invoke-interface {p1}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSwipeEnabled()Z
    .locals 1

    .line 4618
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->isItemViewSwipeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopEndless()Z
    .locals 1

    .line 1837
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    return v0
.end method

.method public moveItem(II)V
    .locals 1

    .line 4652
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->MOVE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->moveItem(IILjava/lang/Object;)V

    return-void
.end method

.method public moveItem(IILjava/lang/Object;)V
    .locals 6

    .line 4667
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "moveItem fromPosition=%s toPosition=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4669
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4670
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeSelection(I)Z

    .line 4671
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSelection(I)Z

    .line 4673
    :cond_0
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 4675
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4676
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    .line 4678
    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4679
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p2, v2, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performInsert(ILjava/util/List;Z)V

    .line 4680
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemMoved(II)V

    if-eqz p3, :cond_2

    .line 4681
    invoke-virtual {p0, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 4683
    :cond_2
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p1, :cond_3

    .line 4684
    invoke-direct {p0, p2, v0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showHeaderOf(ILeu/davidea/flexibleadapter/items/IFlexible;Z)Z

    :cond_3
    if-eqz v1, :cond_4

    .line 4687
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->expand(I)I

    :cond_4
    return-void
.end method

.method public onActionStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 4793
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-eqz v0, :cond_0

    .line 4794
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;->onActionStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 4795
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-eqz v0, :cond_1

    .line 4796
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;->onActionStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 392
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 393
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Attached Adapter to RecyclerView"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 3

    .line 1771
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    if-nez v0, :cond_0

    .line 1773
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AutoMap is not active, this method cannot be called. You should implement the AutoMap properly."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1776
    :cond_0
    invoke-super {p0, p1, p2, p3}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1778
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1780
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1781
    invoke-interface {v0, p0, p1, p2, p3}, Leu/davidea/flexibleadapter/items/IFlexible;->bindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1784
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->isFastScroll:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->getStickyPosition()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1785
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object p3

    invoke-interface {p3}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p3, p2, :cond_1

    .line 1787
    iget-object p3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1792
    :cond_1
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMore(I)V

    .line 1794
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->animateView(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1733
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getViewTypeInstance(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1734
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->autoMap:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 1739
    :cond_0
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_1

    .line 1740
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1742
    :cond_1
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->getLayoutRes()I

    move-result v2

    invoke-virtual {p2, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Leu/davidea/flexibleadapter/items/IFlexible;->createViewHolder(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 1736
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewType instance not found for viewType %s. You should implement the AutoMap properly."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1737
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 408
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;->detachFromRecyclerView()V

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderHelper:Leu/davidea/flexibleadapter/helpers/StickyHeaderHelper;

    .line 412
    :cond_0
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 413
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Detached Adapter from RecyclerView"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onItemMove(II)Z
    .locals 1

    .line 4820
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->swapItems(Ljava/util/List;II)V

    .line 4822
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-eqz v0, :cond_0

    .line 4823
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;->onItemMove(II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onItemSwiped(II)V
    .locals 1

    .line 4837
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-eqz v0, :cond_0

    .line 4838
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;->onItemSwipe(II)V

    :cond_0
    return-void
.end method

.method protected onLoadMore(I)V
    .locals 6

    .line 2035
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 2039
    :cond_0
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    .line 2040
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    goto :goto_2

    .line 2041
    :cond_2
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    sub-int/2addr v0, v2

    .line 2042
    :goto_2
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v2

    if-eq p1, v2, :cond_5

    if-lt p1, v0, :cond_5

    :cond_4
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz v2, :cond_6

    if-lez p1, :cond_6

    if-le p1, v0, :cond_6

    :cond_5
    return-void

    .line 2046
    :cond_6
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "onLoadMore     topEndless=%s, loading=%s, position=%s, itemCount=%s threshold=%s, currentThreshold=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    .line 2047
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x3

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x4

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p1

    .line 2046
    invoke-virtual {v2, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2050
    iput-boolean v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessLoading:Z

    .line 2053
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$9;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$9;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method public onLoadMoreComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 2079
    invoke-virtual {p0, p1, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMoreComplete(Ljava/util/List;J)V

    return-void
.end method

.method public onLoadMoreComplete(Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;J)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2102
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2103
    :goto_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v2

    add-int/2addr v2, v1

    .line 2104
    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v3

    .line 2106
    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    if-lez v4, :cond_1

    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    if-lt v1, v4, :cond_2

    :cond_1
    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    if-lez v4, :cond_3

    iget v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    if-lt v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 2109
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    const/4 v6, 0x1

    if-lez v2, :cond_5

    if-eqz v1, :cond_4

    .line 2113
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2114
    :cond_4
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v4, "onLoadMore     enqueued removing progressItem (%sms)"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v0

    invoke-virtual {v2, v4, v5}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2115
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    cmp-long v2, p2, v4

    if-ltz v2, :cond_6

    .line 2117
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideProgressItem()V

    :cond_6
    :goto_1
    if-lez v1, :cond_8

    .line 2121
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p3, "onLoadMore     performing adding %s new items on page=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getEndlessCurrentPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p2, p3, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2122
    iget-boolean p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    if-eqz p2, :cond_7

    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2123
    :cond_7
    invoke-virtual {p0, v3, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItems(ILjava/util/List;)Z

    :cond_8
    if-eqz v1, :cond_9

    .line 2126
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isEndlessScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    .line 2127
    :cond_9
    invoke-direct {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->noMoreLoad(I)V

    :cond_a
    return-void
.end method

.method protected onPostFilter()V
    .locals 2

    .line 5589
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    if-eqz v0, :cond_0

    .line 5590
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;->onUpdateFilterView(I)V

    :cond_0
    return-void
.end method

.method protected onPostUpdate()V
    .locals 2

    .line 5575
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-eqz v0, :cond_0

    .line 5576
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;->onUpdateEmptyView(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 5095
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5097
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->hideAllHeaders()V

    goto :goto_0

    .line 5098
    :cond_0
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v2, :cond_1

    .line 5099
    invoke-direct {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeadersWithReset(Z)V

    .line 5101
    :cond_1
    :goto_0
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    .line 5102
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5103
    invoke-virtual {p0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 5106
    :cond_2
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5107
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 5109
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    .line 5112
    :cond_3
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 5113
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    .line 5114
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 5116
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 5069
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 5071
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected(II)V

    .line 5073
    :cond_0
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5075
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_CHILD:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5076
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_PARENT:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5077
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_LEVEL:Ljava/lang/String;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5079
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_FILTER:Ljava/lang/String;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 5081
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_HEADERS:Ljava/lang/String;

    iget-boolean v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5082
    sget-object v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->EXTRA_STICKY:Ljava/lang/String;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1800
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1802
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1803
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->onViewAttached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1809
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1811
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1812
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->onViewDetached(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1818
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1819
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->areHeadersSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1823
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 1824
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1825
    invoke-interface {v1, p0, p1, v0}, Leu/davidea/flexibleadapter/items/IFlexible;->unbindViewHolder(Leu/davidea/flexibleadapter/FlexibleAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    return-void
.end method

.method public final removeAllScrollableFooters()V
    .locals 3

    .line 1041
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1042
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Remove all scrollable footers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1044
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeRemoved(II)V

    .line 1045
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final removeAllScrollableHeaders()V
    .locals 4

    .line 1025
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1026
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Remove all scrollable headers"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1028
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeRemoved(II)V

    .line 1029
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public removeAllSelectedItems()V
    .locals 1

    const/4 v0, 0x0

    .line 3580
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeAllSelectedItems(Ljava/lang/Object;)V

    return-void
.end method

.method public removeAllSelectedItems(Ljava/lang/Object;)V
    .locals 1

    .line 3600
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 3326
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->CHANGE:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItem(ILjava/lang/Object;)V

    return-void
.end method

.method public removeItem(ILjava/lang/Object;)V
    .locals 3

    .line 3346
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    .line 3347
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "removeItem delegates removal to removeRange"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3348
    invoke-virtual {p0, p1, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public removeItemWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .line 3281
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$11;

    invoke-direct {v1, p0, p1, p4}, Leu/davidea/flexibleadapter/FlexibleAdapter$11;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3363
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3384
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "removeItems selectedPositions=%s payload=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 3386
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3387
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 3389
    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$12;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$12;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3395
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "removeItems after reverse sort selectedPositions=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3399
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3400
    iput-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sub-int v6, v0, v1

    .line 3402
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 3404
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 3408
    invoke-virtual {p0, v2, v1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    .line 3409
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    const/4 v1, 0x1

    .line 3413
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    goto :goto_0

    .line 3415
    :cond_4
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    if-lez v1, :cond_5

    .line 3418
    invoke-virtual {p0, v2, v1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public varargs removeItemsOfType([Ljava/lang/Integer;)V
    .locals 4

    .line 3437
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3439
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3440
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v1, :cond_1

    .line 3442
    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3443
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3445
    :cond_1
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 338
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "No listener class to remove!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    .line 341
    :cond_0
    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 342
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-ne p1, v2, :cond_2

    .line 343
    :cond_1
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    .line 344
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnItemClickListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 346
    invoke-virtual {v5}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 349
    :cond_2
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-nez v2, :cond_3

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-ne p1, v2, :cond_4

    .line 350
    :cond_3
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    .line 351
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnItemLongClickListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getAllBoundViewHolders()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/viewholders/FlexibleViewHolder;

    .line 353
    invoke-virtual {v5}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 356
    :cond_4
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-nez v2, :cond_5

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-ne p1, v2, :cond_6

    .line 357
    :cond_5
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    .line 358
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnItemMoveListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    :cond_6
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-nez v2, :cond_7

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    if-ne p1, v2, :cond_8

    .line 361
    :cond_7
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemSwipeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemSwipeListener;

    .line 362
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnItemSwipeListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_8
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    if-nez v2, :cond_9

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    if-ne p1, v2, :cond_a

    .line 365
    :cond_9
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mDeleteCompleteListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnDeleteCompleteListener;

    .line 366
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnDeleteCompleteListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    :cond_a
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    if-nez v2, :cond_b

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    if-ne p1, v2, :cond_c

    .line 369
    :cond_b
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyHeaderChangeListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnStickyHeaderChangeListener;

    .line 370
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnStickyHeaderChangeListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :cond_c
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-nez v2, :cond_d

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-ne p1, v2, :cond_e

    .line 373
    :cond_d
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    .line 374
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v5, "Removed %s as OnUpdateListener"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v0

    invoke-virtual {v2, v5, v6}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_e
    instance-of v2, p1, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    if-nez v2, :cond_f

    const-class v2, Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    if-ne p1, v2, :cond_10

    .line 377
    :cond_f
    iput-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnFilterListener;

    .line 378
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "Removed %s as OnFilterListener"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    return-object p0
.end method

.method public removeRange(II)V
    .locals 1

    .line 3463
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->REM_SUB_ITEM:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, p1, p2, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeRange(IILjava/lang/Object;)V

    return-void
.end method

.method public removeRange(IILjava/lang/Object;)V
    .locals 10

    .line 3499
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    .line 3500
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "removeRange positionStart=%s itemCount=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_e

    add-int v1, p1, p2

    if-le v1, v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_d

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    move v3, p1

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-ge v3, v1, :cond_9

    .line 3512
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    .line 3515
    :cond_2
    iget-boolean v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-nez v7, :cond_5

    if-nez v5, :cond_3

    .line 3517
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object v5

    :cond_3
    if-nez v5, :cond_4

    .line 3520
    invoke-direct {p0, p1, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->createRestoreItemInfo(ILeu/davidea/flexibleadapter/items/IFlexible;)V

    goto :goto_1

    .line 3522
    :cond_4
    invoke-direct {p0, v5, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->createRestoreSubItemInfo(Leu/davidea/flexibleadapter/items/IExpandable;Leu/davidea/flexibleadapter/items/IFlexible;)V

    .line 3526
    :cond_5
    :goto_1
    invoke-interface {v4, v6}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 3528
    iget-boolean v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3529
    move-object v7, v4

    check-cast v7, Leu/davidea/flexibleadapter/items/IHeader;

    .line 3531
    invoke-virtual {p0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v7

    .line 3532
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 3533
    invoke-interface {v8, v2}, Leu/davidea/flexibleadapter/items/ISectionable;->setHeader(Leu/davidea/flexibleadapter/items/IHeader;)V

    if-eqz p3, :cond_6

    .line 3535
    invoke-virtual {p0, v8}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v8

    sget-object v9, Leu/davidea/flexibleadapter/Payload;->UNLINK:Leu/davidea/flexibleadapter/Payload;

    invoke-virtual {p0, v8, v9}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_2

    .line 3540
    :cond_7
    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3541
    iget-boolean v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-eqz v7, :cond_8

    .line 3542
    iget-object v7, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3544
    :cond_8
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeSelection(I)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3548
    :cond_9
    invoke-virtual {p0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemRangeRemoved(II)V

    .line 3551
    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p1

    if-ltz p1, :cond_a

    .line 3553
    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 3556
    :cond_a
    invoke-virtual {p0, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result p2

    if-ltz p2, :cond_b

    if-eq p2, p1, :cond_b

    .line 3558
    invoke-virtual {p0, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 3562
    :cond_b
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    if-nez p1, :cond_c

    if-lez v0, :cond_c

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_c

    .line 3563
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result p2

    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;->onUpdateEmptyView(I)V

    :cond_c
    return-void

    .line 3505
    :cond_d
    :goto_4
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "removeRange Nothing to delete!"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3502
    :cond_e
    :goto_5
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "Cannot removeRange with positionStart OutOfBounds!"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final removeScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Remove scrollable footer %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    invoke-direct {p0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    :cond_0
    return-void
.end method

.method public final removeScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Enqueued removing scrollable footer (%sms) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$4;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$4;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final removeScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Remove scrollable header %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    invoke-direct {p0, p1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->performRemove(Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    :cond_0
    return-void
.end method

.method public final removeScrollableHeaderWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Enqueued removing scrollable header (%sms) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$3;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$3;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeSection(Leu/davidea/flexibleadapter/items/IHeader;)V
    .locals 6

    .line 3305
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItemPositions(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v0

    .line 3306
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v1

    .line 3307
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "removeSection %s with all subItems at position=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItems(Ljava/util/List;)V

    return-void
.end method

.method public restoreDeletedItems()V
    .locals 14

    const/4 v0, 0x1

    .line 3671
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3672
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    .line 3674
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedItemCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->clearSelection()V

    .line 3676
    :cond_0
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_3

    .line 3677
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->adjustSelected:Z

    .line 3678
    iget-object v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3680
    iget v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    if-ltz v5, :cond_1

    .line 3682
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v6, "Restore SubItem %s"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3683
    invoke-virtual {v4, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->getRestorePosition(Z)I

    move-result v9

    iget v10, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->relativePosition:I

    iget-object v11, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    const/4 v12, 0x0

    sget-object v13, Leu/davidea/flexibleadapter/Payload;->UNDO:Leu/davidea/flexibleadapter/Payload;

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSubItem(IILeu/davidea/flexibleadapter/items/IFlexible;ZLjava/lang/Object;)Z

    goto :goto_1

    .line 3687
    :cond_1
    iget-object v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v6, "Restore Item %s"

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3688
    invoke-virtual {v4, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->getRestorePosition(Z)I

    move-result v5

    iget-object v6, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v5, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addItem(ILeu/davidea/flexibleadapter/items/IFlexible;)Z

    .line 3691
    :goto_1
    iget-object v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v5, v3}, Leu/davidea/flexibleadapter/items/IFlexible;->setHidden(Z)V

    .line 3693
    iget-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    if-eqz v3, :cond_2

    iget-object v3, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHeader(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3694
    iget-object v3, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    check-cast v3, Leu/davidea/flexibleadapter/items/IHeader;

    .line 3695
    invoke-virtual {p0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object v4

    .line 3696
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 3697
    sget-object v6, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, v5, v3, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3702
    :cond_3
    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3703
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    iget-object v2, v2, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 3706
    :cond_4
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    goto :goto_4

    .line 3704
    :cond_5
    :goto_3
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    .line 3708
    :goto_4
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRestoreList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;

    .line 3709
    iget-object v5, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-interface {v5}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3710
    iget-object v4, v4, Leu/davidea/flexibleadapter/FlexibleAdapter$RestoreInfo;->item:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v4

    invoke-virtual {p0, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->addSelection(I)Z

    goto :goto_5

    .line 3713
    :cond_7
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v4, "Selected positions after restore %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {v2, v4, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3716
    :cond_8
    iput-boolean v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->multiRange:Z

    .line 3717
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    if-eqz v0, :cond_9

    if-nez v1, :cond_9

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 3718
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUpdateListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMainItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnUpdateListener;->onUpdateEmptyView(I)V

    .line 3720
    :cond_9
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->emptyBin()V

    return-void
.end method

.method public saveUndoPositions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3785
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mUndoPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs selectAll([Ljava/lang/Integer;)V
    .locals 2

    .line 531
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 532
    new-array p1, p1, [Ljava/lang/Integer;

    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->selectAll([Ljava/lang/Integer;)V

    goto :goto_0

    .line 534
    :cond_0
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->selectAll([Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method public setAnimateChangesWithDiffUtil(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4261
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->useDiffUtil:Z

    return-object p0
.end method

.method public setAnimateToLimit(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4231
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set animateToLimit=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4232
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mAnimateToLimit:I

    return-object p0
.end method

.method public setAutoCollapseOnExpand(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2196
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set autoCollapseOnExpand=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseOnExpand:Z

    return-object p0
.end method

.method public setAutoScrollOnExpand(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2246
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set setAutoScrollOnExpand=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->scrollOnExpand:Z

    return-object p0
.end method

.method public setDiffUtilCallback(Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4273
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->diffUtilCallback:Leu/davidea/flexibleadapter/FlexibleAdapter$DiffUtilCallback;

    return-object p0
.end method

.method public setDisplayHeadersAtStartUp(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1458
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1459
    invoke-direct {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V

    :cond_0
    return-object p0
.end method

.method public setEndlessPageSize(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set endlessPageSize=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1906
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessPageSize:I

    return-object p0
.end method

.method public setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1976
    :goto_0
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->endlessScrollEnabled:Z

    if-eqz p1, :cond_1

    .line 1978
    iget v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    invoke-virtual {p0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessScrollThreshold(I)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 1979
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mProgressItem:Leu/davidea/flexibleadapter/items/IFlexible;

    .line 1980
    iget-object v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v3, "Set progressItem=%s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v2, v3, v0}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1981
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Enabled EndlessScrolling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1983
    :cond_1
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Disabled EndlessScrolling"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object p0
.end method

.method public setEndlessScrollListener(Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;",
            "TT;)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set endlessScrollListener=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2003
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollListener:Leu/davidea/flexibleadapter/FlexibleAdapter$EndlessScrollListener;

    .line 2004
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setEndlessProgressItem(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setEndlessScrollThreshold(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2018
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFlexibleLayoutManager()Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;

    move-result-object v0

    invoke-interface {v0}, Leu/davidea/flexibleadapter/common/IFlexibleLayoutManager;->getSpanCount()I

    move-result v0

    mul-int p1, p1, v0

    .line 2021
    :cond_0
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    .line 2022
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Set endlessScrollThreshold=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessScrollThreshold:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setEndlessTargetCount(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set endlessTargetCount=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1937
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mEndlessTargetCount:I

    return-object p0
.end method

.method public setFilter(Ljava/io/Serializable;)V
    .locals 1

    .line 3889
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3890
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 3892
    :cond_0
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mFilterEntity:Ljava/io/Serializable;

    return-void
.end method

.method public final setHandleDragEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4601
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4602
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set handleDragEnabled=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4603
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setHandleDragEnabled(Z)V

    return-object p0
.end method

.method public setHeadersShown(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1474
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    return-object p0
.end method

.method public final setItemTouchHelperCallback(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4536
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    const/4 p1, 0x0

    .line 4537
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 4538
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4539
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v0, "Initialized custom ItemTouchHelperCallback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public setLoadingMoreAtStartUp(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set loadingAtStartup=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1952
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$8;

    invoke-direct {v0, p0}, Leu/davidea/flexibleadapter/FlexibleAdapter$8;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object p0
.end method

.method public final setLongPressDragEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4570
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4571
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set longPressDragEnabled=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4572
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLongPressDragEnabled(Z)V

    return-object p0
.end method

.method public setMinCollapsibleLevel(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2303
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set minCollapsibleLevel=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2304
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mMinCollapsibleLevel:I

    return-object p0
.end method

.method public final setNotifyChangeOfUnfilteredItems(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 3920
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set notifyChangeOfUnfilteredItems=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3921
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyChangeOfUnfilteredItems:Z

    return-object p0
.end method

.method public final setNotifyMoveOfFilteredItems(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 3940
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set notifyMoveOfFilteredItems=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3941
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyMoveOfFilteredItems:Z

    return-object p0
.end method

.method public setPermanentDelete(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 3629
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set permanentDelete=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3630
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->permanentDelete:Z

    return-object p0
.end method

.method public setRecursiveCollapse(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 2222
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set setAutoCollapseSubLevels=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapseSubLevels:Z

    return-object p0
.end method

.method public setRestoreSelectionOnUndo(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 3657
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set restoreSelectionOnUndo=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3658
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->restoreSelection:Z

    return-object p0
.end method

.method public setStickyHeaderElevation(I)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1439
    iput p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyElevation:I

    return-object p0
.end method

.method public setStickyHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1369
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(ZLandroid/view/ViewGroup;)Leu/davidea/flexibleadapter/FlexibleAdapter;

    move-result-object p1

    return-object p1
.end method

.method public setStickyHeaders(ZLandroid/view/ViewGroup;)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/ViewGroup;",
            ")",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1387
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set stickyHeaders=%s (in Post!)%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p2, :cond_0

    const-string v3, " with user defined Sticky Container"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1390
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mStickyContainer:Landroid/view/ViewGroup;

    .line 1393
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Leu/davidea/flexibleadapter/FlexibleAdapter$5;

    invoke-direct {v0, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$5;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public final setSwipeEnabled(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 4634
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set swipeEnabled=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4635
    invoke-direct {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->initializeItemTouchHelper()V

    .line 4636
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemTouchHelperCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setSwipeEnabled(Z)V

    return-object p0
.end method

.method public setTopEndless(Z)V
    .locals 0

    .line 1848
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mTopEndless:Z

    return-void
.end method

.method public setUnlinkAllItemsOnRemoveHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "Set unlinkOnRemoveHeader=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->unlinkOnRemoveHeader:Z

    return-object p0
.end method

.method public shouldMove(II)Z
    .locals 2

    .line 4807
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 4808
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mScrollableFooters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemMoveListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;

    .line 4809
    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemMoveListener;->shouldMoveItem(II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showAllHeaders()Leu/davidea/flexibleadapter/FlexibleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1490
    invoke-direct {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->showAllHeaders(Z)V

    return-object p0
.end method

.method public smoothScrollToPosition(I)V
    .locals 4

    .line 4967
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4969
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Leu/davidea/flexibleadapter/FlexibleAdapter$13;

    invoke-direct {v1, p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$13;-><init>(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public swapItems(Ljava/util/List;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    if-ltz p2, :cond_10

    .line 4699
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_10

    if-ltz p3, :cond_10

    .line 4700
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_a

    .line 4703
    :cond_0
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v1, "swapItems from=%s [selected? %s] to=%s [selected? %s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 4704
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v3

    .line 4703
    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ge p2, p3, :cond_1

    .line 4707
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4708
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->collapse(I)I

    :cond_1
    if-ge p2, p3, :cond_2

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_3

    .line 4714
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "swapItems from=%s to=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4715
    invoke-static {p1, v0, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 4716
    invoke-virtual {p0, v0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->swapSelection(II)V

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_1
    if-le v0, p3, :cond_3

    .line 4720
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string v2, "swapItems from=%s to=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-virtual {v1, v2, v3}, Leu/davidea/flexibleadapter/utils/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4721
    invoke-static {p1, v0, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 4722
    invoke-virtual {p0, v0, v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->swapSelection(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4725
    :cond_3
    invoke-virtual {p0, p2, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemMoved(II)V

    .line 4728
    iget-boolean p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->headersShown:Z

    if-eqz p1, :cond_f

    .line 4730
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    .line 4731
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    .line 4733
    instance-of v1, v0, Leu/davidea/flexibleadapter/items/IHeader;

    if-eqz v1, :cond_5

    instance-of v2, p1, Leu/davidea/flexibleadapter/items/IHeader;

    if-eqz v2, :cond_5

    if-ge p2, p3, :cond_4

    .line 4737
    check-cast p1, Leu/davidea/flexibleadapter/items/IHeader;

    .line 4738
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object p2

    .line 4739
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 4740
    sget-object v0, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p3, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_2

    .line 4745
    :cond_4
    check-cast v0, Leu/davidea/flexibleadapter/items/IHeader;

    .line 4746
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionItems(Leu/davidea/flexibleadapter/items/IHeader;)Ljava/util/List;

    move-result-object p1

    .line 4747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leu/davidea/flexibleadapter/items/ISectionable;

    .line 4748
    sget-object p3, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p2, v0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_8

    if-ge p2, p3, :cond_6

    add-int/lit8 p1, p3, 0x1

    goto :goto_4

    :cond_6
    move p1, p3

    :goto_4
    if-ge p2, p3, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 p3, p2, 0x1

    .line 4757
    :goto_5
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p2

    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p2, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    .line 4758
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    check-cast v0, Leu/davidea/flexibleadapter/items/IHeader;

    sget-object p2, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p1, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_9

    .line 4759
    :cond_8
    instance-of v0, p1, Leu/davidea/flexibleadapter/items/IHeader;

    if-eqz v0, :cond_b

    if-ge p2, p3, :cond_9

    move v0, p2

    goto :goto_6

    :cond_9
    add-int/lit8 v0, p2, 0x1

    :goto_6
    if-ge p2, p3, :cond_a

    add-int/lit8 p2, p3, 0x1

    .line 4765
    :cond_a
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p3

    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v0

    sget-object v1, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p3, v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    .line 4766
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p2

    check-cast p1, Leu/davidea/flexibleadapter/items/IHeader;

    sget-object p3, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p2, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    goto :goto_9

    :cond_b
    if-ge p2, p3, :cond_c

    move p1, p3

    goto :goto_7

    :cond_c
    move p1, p2

    :goto_7
    if-ge p2, p3, :cond_d

    goto :goto_8

    :cond_d
    move p2, p3

    .line 4773
    :goto_8
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p3

    .line 4774
    invoke-virtual {p0, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getHeaderOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 4776
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSectionHeader(I)Leu/davidea/flexibleadapter/items/IHeader;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4777
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 4778
    sget-object v1, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p3, p1, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    .line 4780
    :cond_e
    invoke-virtual {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object p1

    sget-object p2, Leu/davidea/flexibleadapter/Payload;->LINK:Leu/davidea/flexibleadapter/Payload;

    invoke-direct {p0, p1, v0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->linkHeaderTo(Leu/davidea/flexibleadapter/items/IFlexible;Leu/davidea/flexibleadapter/items/IHeader;Ljava/lang/Object;)V

    :cond_f
    :goto_9
    return-void

    :cond_10
    :goto_a
    return-void
.end method

.method public toggleSelection(I)V
    .locals 6

    .line 490
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 492
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 493
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getExpandableOf(Leu/davidea/flexibleadapter/items/IFlexible;)Leu/davidea/flexibleadapter/items/IExpandable;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 495
    :goto_0
    invoke-virtual {p0, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isExpandable(Leu/davidea/flexibleadapter/items/IFlexible;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v5, :cond_3

    :cond_1
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    if-nez v0, :cond_3

    .line 497
    iput-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    if-eqz v5, :cond_2

    .line 498
    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v0

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 499
    :cond_2
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->toggleSelection(I)V

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_5

    .line 500
    iget v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    if-nez v0, :cond_5

    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v0

    add-int/2addr v0, v4

    iget v5, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    if-ne v0, v5, :cond_5

    .line 502
    :cond_4
    iput-boolean v4, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    .line 503
    invoke-interface {v3}, Leu/davidea/flexibleadapter/items/IExpandable;->getExpansionLevel()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 504
    invoke-super {p0, p1}, Leu/davidea/flexibleadapter/AnimatorAdapter;->toggleSelection(I)V

    .line 508
    :cond_5
    :goto_1
    invoke-super {p0}, Leu/davidea/flexibleadapter/AnimatorAdapter;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 509
    iput v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mSelectedLevel:I

    .line 510
    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->childSelected:Z

    iput-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->parentSelected:Z

    :cond_6
    return-void
.end method

.method public updateDataSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 583
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;Z)V

    return-void
.end method

.method public updateDataSet(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mOriginalList:Ljava/util/List;

    if-nez p1, :cond_0

    .line 615
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p2, :cond_1

    .line 617
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 621
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    invoke-direct {p0, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->prepareItemsForUpdate(Ljava/util/List;)V

    .line 623
    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    .line 625
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "updateDataSet with notifyDataSetChanged!"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Leu/davidea/flexibleadapter/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyDataSetChanged()V

    .line 627
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->onPostUpdate()V

    :goto_0
    return-void
.end method

.method public updateItem(ILeu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2844
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "updateItem No Item to update!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 2847
    :cond_0
    invoke-virtual {p0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    if-ltz p1, :cond_2

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 2852
    :cond_1
    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2853
    iget-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItem notifyItemChanged on position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Leu/davidea/flexibleadapter/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2854
    invoke-virtual {p0, p1, p3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 2849
    :cond_2
    :goto_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter;->log:Leu/davidea/flexibleadapter/utils/Logger;

    const-string p2, "Cannot updateItem on position out of OutOfBounds!"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Leu/davidea/flexibleadapter/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateItem(Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2809
    invoke-virtual {p0, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateItem(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V

    return-void
.end method

.method public updateItem(Leu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2825
    invoke-virtual {p0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getGlobalPositionOf(Leu/davidea/flexibleadapter/items/IFlexible;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateItem(ILeu/davidea/flexibleadapter/items/IFlexible;Ljava/lang/Object;)V

    return-void
.end method
