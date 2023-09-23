.class Lorg/lucasr/twowayview/TwoWayView$RecycleBin;
.super Ljava/lang/Object;
.source "TwoWayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lorg/lucasr/twowayview/TwoWayView;


# direct methods
.method constructor <init>(Lorg/lucasr/twowayview/TwoWayView;)V
    .locals 0

    .line 5947
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 5950
    new-array p1, p1, [Landroid/view/View;

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$102(Lorg/lucasr/twowayview/TwoWayView$RecycleBin;Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;)Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;
    .locals 0

    .line 5947
    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 11

    .line 6188
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 6189
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 6190
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6193
    aget-object v5, v2, v4

    .line 6194
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v7, v6, v0

    add-int/lit8 v6, v6, -0x1

    move v8, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 6200
    iget-object v9, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-static {v9, v8, v3}, Lorg/lucasr/twowayview/TwoWayView;->access$1600(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    add-int/lit8 v6, v6, 0x1

    move v8, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6204
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 6205
    :goto_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 6206
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6207
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6208
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 6094
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 6099
    :cond_0
    iput p2, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    .line 6101
    iget v0, v0, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    .line 6102
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    .line 6105
    invoke-virtual {p0, v0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_1

    goto :goto_1

    .line 6117
    :cond_1
    iget p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 6118
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6120
    :cond_2
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6125
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p2, v0, :cond_3

    const/4 p2, 0x0

    .line 6126
    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6129
    :cond_3
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    if-eqz p2, :cond_4

    .line 6130
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    invoke-interface {p2, p1}, Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz v1, :cond_7

    .line 6107
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_6

    .line 6108
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 6111
    :cond_6
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method clear()V
    .locals 8

    .line 6002
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6003
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6004
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6007
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v4, v5, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1200(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6010
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 6012
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    .line 6013
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    .line 6016
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v6, v7, v1}, Lorg/lucasr/twowayview/TwoWayView;->access$1300(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6021
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 6022
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    :cond_3
    return-void
.end method

.method clearTransientStateViews()V
    .locals 1

    .line 6074
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 6075
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    :cond_0
    return-void
.end method

.method fillActiveViews(II)V
    .locals 2

    .line 6027
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 6028
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6031
    :cond_0
    iput p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    .line 6033
    iget-object p2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6035
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-virtual {v1, v0}, Lorg/lucasr/twowayview/TwoWayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6039
    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 3

    .line 6044
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    sub-int/2addr p1, v0

    .line 6045
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 6047
    array-length v2, v0

    if-ge p1, v2, :cond_0

    .line 6048
    aget-object v2, v0, p1

    .line 6049
    aput-object v1, v0, p1

    return-object v2

    :cond_0
    return-object v1
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 2

    .line 6080
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6081
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6083
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v0}, Lorg/lucasr/twowayview/TwoWayView;->access$1400(Lorg/lucasr/twowayview/TwoWayView;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 6084
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 6085
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0, p1}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 2

    .line 6058
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 6062
    :cond_0
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1

    return-object v1

    .line 6067
    :cond_1
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 6068
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    return-object v0
.end method

.method public markChildrenDirty()V
    .locals 5

    .line 5973
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5974
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5975
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 5978
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5981
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 5983
    iget-object v3, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 5984
    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5989
    :cond_2
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 5990
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 5992
    iget-object v2, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 6216
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6217
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 6219
    :cond_0
    iget v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 6220
    iget-object v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6223
    aget-object v3, v1, v2

    .line 6224
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 6230
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 6236
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 6237
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 6239
    iget v3, v3, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p2, :cond_1

    .line 6240
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 6245
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method scrapActiveViews()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 6136
    iget-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 6137
    iget v1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6139
    :goto_0
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6140
    array-length v5, v0

    sub-int/2addr v5, v3

    :goto_1
    if-ltz v5, :cond_7

    .line 6143
    aget-object v3, v0, v5

    if-eqz v3, :cond_6

    .line 6145
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;

    .line 6146
    iget v7, v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->viewType:I

    const/4 v8, 0x0

    .line 6148
    aput-object v8, v0, v5

    .line 6150
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v9

    .line 6151
    invoke-virtual {p0, v7}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    .line 6166
    iget-object v4, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v4, v7

    .line 6169
    :cond_2
    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v5

    iput v7, v6, Lorg/lucasr/twowayview/TwoWayView$LayoutParams;->scrappedFromPosition:I

    .line 6170
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6174
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_3

    .line 6175
    invoke-virtual {v3, v8}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 6178
    :cond_3
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    if-eqz v6, :cond_6

    .line 6179
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mRecyclerListener:Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;

    invoke-interface {v6, v3}, Lorg/lucasr/twowayview/TwoWayView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v9, :cond_6

    .line 6153
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->this$0:Lorg/lucasr/twowayview/TwoWayView;

    invoke-static {v6, v3, v2}, Lorg/lucasr/twowayview/TwoWayView;->access$1500(Lorg/lucasr/twowayview/TwoWayView;Landroid/view/View;Z)V

    .line 6155
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v6, :cond_5

    .line 6156
    new-instance v6, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v6}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    .line 6159
    :cond_5
    iget-object v6, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mTransientStateViews:Landroid/support/v4/util/SparseArrayCompat;

    iget v7, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v7, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 6184
    :cond_7
    invoke-direct {p0}, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->pruneScrapViews()V

    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 5962
    new-array v0, p1, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 5964
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5967
    :cond_0
    iput p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mViewTypeCount:I

    .line 5968
    aget-object p1, v0, v1

    iput-object p1, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 5969
    iput-object v0, p0, Lorg/lucasr/twowayview/TwoWayView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-void

    .line 5958
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a viewTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldRecycleViewType(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
