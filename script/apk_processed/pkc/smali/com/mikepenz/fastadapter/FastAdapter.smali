.class public Lcom/mikepenz/fastadapter/FastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListenerImpl;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;,
        Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item::",
        "Lcom/mikepenz/fastadapter/IItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdapterSizes:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private final mAdapters:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;>;"
        }
    .end annotation
.end field

.field private mAllowDeselection:Z

.field private mExpanded:Landroid/util/SparseIntArray;

.field private mGlobalSize:I

.field private mLegacyBindViewMode:Z

.field private mMultiSelect:Z

.field private mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;

.field private mOnClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;

.field private mOnLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnPreLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnTouchListener:Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private mOnlyOneExpandedItem:Z

.field private mPositionBasedStateManagement:Z

.field private mSelectOnLongClick:Z

.field private mSelectWithItemUpdate:Z

.field private mSelectable:Z

.field private mSelections:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeInstances:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstances:Landroid/support/v4/util/ArrayMap;

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    .line 47
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectWithItemUpdate:Z

    .line 49
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mMultiSelect:Z

    .line 51
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectOnLongClick:Z

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAllowDeselection:Z

    .line 55
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectable:Z

    .line 57
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnlyOneExpandedItem:Z

    .line 59
    iput-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    .line 61
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    .line 64
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    .line 76
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListenerImpl;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListenerImpl;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;

    .line 77
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;

    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListenerImpl;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;)V

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;

    .line 83
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mikepenz/fastadapter/FastAdapter;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnlyOneExpandedItem:Z

    return p0
.end method

.method static synthetic access$200(Lcom/mikepenz/fastadapter/FastAdapter;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectOnLongClick:Z

    return p0
.end method

.method static synthetic access$300(Lcom/mikepenz/fastadapter/FastAdapter;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnPreLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mikepenz/fastadapter/FastAdapter;)Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnTouchListener:Lcom/mikepenz/fastadapter/FastAdapter$OnTouchListener;

    return-object p0
.end method

.method private cacheSizes()V
    .locals 5

    .line 792
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 796
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    .line 801
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 802
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 806
    :cond_2
    iput v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    return-void
.end method

.method private deselect(ILjava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1071
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1073
    invoke-interface {v0, v1}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    :cond_0
    if-nez p2, :cond_1

    .line 1076
    iget-boolean p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz p2, :cond_2

    .line 1077
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1078
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1082
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 1084
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method private handleSelection(Landroid/view/View;Lcom/mikepenz/fastadapter/IItem;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;I)V"
        }
    .end annotation

    .line 874
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAllowDeselection:Z

    if-nez v0, :cond_1

    return-void

    .line 884
    :cond_1
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 887
    :cond_2
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v0

    .line 890
    :goto_0
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectWithItemUpdate:Z

    if-nez v1, :cond_b

    if-nez p1, :cond_3

    goto/16 :goto_4

    .line 900
    :cond_3
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mMultiSelect:Z

    if-nez v1, :cond_7

    .line 903
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v1, :cond_5

    .line 904
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 905
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 907
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 908
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p3, :cond_4

    .line 909
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(ILjava/util/Iterator;)V

    goto :goto_1

    .line 913
    :cond_5
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getSelections()Ljava/util/Set;

    move-result-object v1

    .line 914
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_6

    .line 916
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(I)V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 923
    :goto_3
    invoke-interface {p2, v3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    if-nez v0, :cond_9

    const/4 v1, 0x1

    .line 924
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 927
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz p1, :cond_e

    if-eqz v0, :cond_a

    .line 929
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 930
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 933
    :cond_a
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 891
    :cond_b
    :goto_4
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mMultiSelect:Z

    if-nez p1, :cond_c

    .line 892
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    :cond_c
    if-eqz v0, :cond_d

    .line 895
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(I)V

    goto :goto_5

    .line 897
    :cond_d
    invoke-virtual {p0, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private internalCollapse(IZ)V
    .locals 2

    .line 1315
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1316
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_0

    .line 1317
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 1319
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1320
    invoke-direct {p0, v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V

    :cond_0
    return-void
.end method

.method private internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V
    .locals 3

    .line 1326
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v1, :cond_0

    .line 1328
    check-cast v0, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mikepenz/fastadapter/IItemAdapter;->removeRange(II)Lcom/mikepenz/fastadapter/IItemAdapter;

    :cond_0
    const/4 v0, 0x0

    .line 1332
    invoke-interface {p1, v0}, Lcom/mikepenz/fastadapter/IExpandable;->withIsExpanded(Z)Ljava/lang/Object;

    .line 1335
    iget-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz p1, :cond_1

    .line 1336
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 1338
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1343
    invoke-virtual {p0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public collapse(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1230
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(IZ)V

    return-void
.end method

.method public collapse(IZ)V
    .locals 7

    .line 1240
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1241
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_b

    .line 1242
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 1245
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 1246
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v1, :cond_6

    .line 1248
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1250
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 1252
    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p1, :cond_0

    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    add-int v5, p1, v1

    if-gt v4, v5, :cond_0

    .line 1253
    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1258
    :cond_1
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1259
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1261
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, p1, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v6, p1, v1

    if-gt v5, v6, :cond_2

    .line 1262
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(ILjava/util/Iterator;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_5

    .line 1268
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v3, p1, :cond_4

    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int v4, p1, v1

    if-gt v3, v4, :cond_4

    .line 1270
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    iget-object v4, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int/2addr v1, v3

    .line 1273
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->internalCollapse(IZ)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1278
    :cond_5
    invoke-direct {p0, v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V

    goto :goto_5

    .line 1282
    :cond_6
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    :goto_3
    add-int v3, p1, v1

    if-ge v2, v3, :cond_8

    .line 1284
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 1285
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v4, :cond_7

    .line 1286
    check-cast v3, Lcom/mikepenz/fastadapter/IExpandable;

    .line 1287
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1288
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-le v3, p1, :cond_a

    .line 1295
    invoke-virtual {p0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 1296
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v2, :cond_9

    .line 1297
    check-cast v1, Lcom/mikepenz/fastadapter/IExpandable;

    .line 1298
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1299
    invoke-virtual {p0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(I)V

    .line 1300
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1301
    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1308
    :cond_a
    invoke-direct {p0, v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->internalCollapse(Lcom/mikepenz/fastadapter/IExpandable;IZ)V

    :cond_b
    :goto_5
    return-void
.end method

.method public collapse(Z)V
    .locals 3

    .line 1217
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExpandedItems()[I

    move-result-object v0

    .line 1218
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1219
    aget v2, v0, v1

    invoke-virtual {p0, v2, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(IZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deselect()V
    .locals 3

    .line 1003
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 1006
    :cond_0
    invoke-static {p0}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->getAllItems(Lcom/mikepenz/fastadapter/FastAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IItem;

    const/4 v2, 0x0

    .line 1007
    invoke-interface {v1, v2}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    :goto_1
    return-void
.end method

.method public deselect(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1060
    invoke-direct {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(ILjava/util/Iterator;)V

    return-void
.end method

.method public deselect(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1048
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1049
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect(ILjava/util/Iterator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expand(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1353
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(IZ)V

    return-void
.end method

.method public expand(IZ)V
    .locals 5

    .line 1364
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1365
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_5

    .line 1366
    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    .line 1368
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1370
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_5

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1371
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1372
    instance-of v3, v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v3, :cond_0

    .line 1373
    check-cast v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 1377
    :cond_0
    invoke-interface {v0, v2}, Lcom/mikepenz/fastadapter/IExpandable;->withIsExpanded(Z)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 1381
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 1385
    :cond_1
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 1389
    :cond_3
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1390
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1391
    instance-of v3, v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    if-eqz v3, :cond_4

    .line 1392
    check-cast v1, Lcom/mikepenz/fastadapter/IItemAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/mikepenz/fastadapter/IItemAdapter;->add(ILjava/util/List;)Lcom/mikepenz/fastadapter/IItemAdapter;

    .line 1396
    :cond_4
    invoke-interface {v0, v2}, Lcom/mikepenz/fastadapter/IExpandable;->withIsExpanded(Z)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 1400
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/IAdapter<",
            "TItem;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 607
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IAdapter;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getExpanded()Landroid/util/SparseIntArray;
    .locals 5

    .line 1137
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    return-object v0

    .line 1140
    :cond_0
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 1141
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1143
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 1144
    instance-of v4, v3, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1145
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IExpandable;->getSubItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getExpandedItems()[I
    .locals 6

    .line 1157
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1159
    new-array v2, v0, [I

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1161
    iget-object v3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 1167
    invoke-virtual {p0, v3}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    .line 1168
    instance-of v5, v4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1173
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1174
    new-array v3, v2, [I

    :goto_2
    if-ge v1, v2, :cond_3

    .line 1176
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    :cond_4
    return-object v2
.end method

.method public getHolderAdapterPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 384
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 569
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 633
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 622
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result p1

    return p1
.end method

.method public getPreItemCount(I)I
    .locals 1

    .line 681
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPreItemCountByOrder(I)I
    .locals 4

    .line 653
    iget v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mGlobalSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    .line 661
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getOrder()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v1

    .line 664
    :cond_1
    invoke-interface {v2}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getRelativeInfo(I)Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo<",
            "TItem;>;"
        }
    .end annotation

    if-gez p1, :cond_0

    .line 586
    new-instance p1, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {p1}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    return-object p1

    .line 589
    :cond_0
    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;

    invoke-direct {v0}, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;-><init>()V

    .line 590
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapterSizes:Ljava/util/NavigableMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/fastadapter/IAdapter;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p1, v3

    invoke-interface {v2, v3}, Lcom/mikepenz/fastadapter/IAdapter;->getAdapterItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    iput-object v2, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->item:Lcom/mikepenz/fastadapter/IItem;

    .line 593
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mikepenz/fastadapter/IAdapter;

    iput-object v1, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->adapter:Lcom/mikepenz/fastadapter/IAdapter;

    .line 594
    iput p1, v0, Lcom/mikepenz/fastadapter/FastAdapter$RelativeInfo;->position:I

    :cond_1
    return-object v0
.end method

.method public getSelections()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 819
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    return-object v0

    .line 822
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 823
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 825
    invoke-virtual {p0, v2}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v3

    .line 826
    invoke-interface {v3}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTypeInstance(I)Lcom/mikepenz/fastadapter/IItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstances:Landroid/support/v4/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/fastadapter/IItem;

    return-object p1
.end method

.method public isPositionBasedStateManagement()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    return v0
.end method

.method public notifyAdapterDataSetChanged()V
    .locals 2

    .line 1417
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1419
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 1421
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1422
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyDataSetChanged()V

    .line 1424
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1426
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->handleStates(Lcom/mikepenz/fastadapter/FastAdapter;II)V

    :cond_1
    return-void
.end method

.method public notifyAdapterItemRangeChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1538
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyAdapterItemRangeChanged(IILjava/lang/Object;)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_2

    .line 1550
    iget-boolean v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v1, :cond_0

    .line 1551
    iget-object v1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1552
    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(I)V

    goto :goto_1

    .line 1555
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v1

    .line 1556
    instance-of v2, v1, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v1}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 1563
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(II)V

    goto :goto_2

    .line 1565
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 1568
    :goto_2
    iget-boolean p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz p2, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 1570
    invoke-static {p0, p1, v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->handleStates(Lcom/mikepenz/fastadapter/FastAdapter;II)V

    :cond_4
    return-void
.end method

.method public notifyAdapterItemRangeInserted(II)V
    .locals 2

    .line 1448
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    const v1, 0x7fffffff

    invoke-static {v0, p1, v1, p2}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->adjustPosition(Ljava/util/Set;III)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    .line 1450
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-static {v0, p1, v1, p2}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->adjustPosition(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1454
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeInserted(II)V

    .line 1456
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_1

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    .line 1458
    invoke-static {p0, p1, p2}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->handleStates(Lcom/mikepenz/fastadapter/FastAdapter;II)V

    :cond_1
    return-void
.end method

.method public notifyAdapterItemRangeRemoved(II)V
    .locals 3

    .line 1479
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    mul-int/lit8 v1, p2, -0x1

    const v2, 0x7fffffff

    invoke-static {v0, p1, v2, v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->adjustPosition(Ljava/util/Set;III)Ljava/util/SortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    .line 1481
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-static {v0, p1, v2, v1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->adjustPosition(Landroid/util/SparseIntArray;III)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    .line 1484
    :cond_0
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 1485
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mLegacyBindViewMode:Z

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    .line 527
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 528
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnBindViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/mikepenz/fastadapter/FastAdapter$OnBindViewHolderListener;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;

    invoke-interface {v0, p1, p2}, Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;->onPreCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 399
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$1;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$2;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 485
    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/mikepenz/fastadapter/FastAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$3;-><init>(Lcom/mikepenz/fastadapter/FastAdapter;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnCreateViewHolderListener:Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;

    invoke-interface {p2, p1}, Lcom/mikepenz/fastadapter/FastAdapter$OnCreateViewHolderListener;->onPostCreateViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public registerAdapter(Lcom/mikepenz/fastadapter/AbstractAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/mikepenz/fastadapter/AbstractAdapter<",
            "TItem;>;>(TA;)V"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/AbstractAdapter;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAdapters:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1}, Lcom/mikepenz/fastadapter/AbstractAdapter;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    :cond_0
    return-void
.end method

.method public registerTypeInstance(Lcom/mikepenz/fastadapter/IItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstances:Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mTypeInstances:Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Lcom/mikepenz/fastadapter/IItem;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, ""

    .line 735
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public saveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    if-eqz p1, :cond_5

    .line 749
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 753
    iget-object v2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 754
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_selections"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getExpandedItems()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_2

    .line 762
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

    .line 767
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v4

    .line 768
    instance-of v5, v4, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v5}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 769
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    :cond_2
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 772
    invoke-interface {v4}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_3
    invoke-static {v4, v0}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->findSubItemSelections(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 779
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle_selections"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bundle_expanded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    :goto_2
    return-object p1
.end method

.method public select(I)V
    .locals 1

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 966
    invoke-virtual {p0, p1, p2, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->select(IZZ)V

    return-void
.end method

.method public select(IZZ)V
    .locals 2

    .line 977
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 982
    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IItem;->isSelectable()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x1

    .line 986
    invoke-interface {v0, p3}, Lcom/mikepenz/fastadapter/IItem;->withSetSelected(Z)Ljava/lang/Object;

    .line 988
    iget-boolean p3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz p3, :cond_2

    .line 989
    iget-object p3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelections:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyItemChanged(I)V

    .line 994
    iget-object p3, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 995
    iget-object p2, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    const/4 p3, 0x0

    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getAdapter(I)Lcom/mikepenz/fastadapter/IAdapter;

    move-result-object v1

    invoke-interface {p2, p3, v1, v0, p1}, Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;->onClick(Landroid/view/View;Lcom/mikepenz/fastadapter/IAdapter;Lcom/mikepenz/fastadapter/IItem;I)Z

    :cond_3
    return-void
.end method

.method public toggleExpandable(I)V
    .locals 2

    .line 1188
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    if-eqz v0, :cond_1

    .line 1189
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mExpanded:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1190
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(I)V

    goto :goto_0

    .line 1192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(I)V

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v0

    .line 1196
    instance-of v1, v0, Lcom/mikepenz/fastadapter/IExpandable;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/mikepenz/fastadapter/IExpandable;

    invoke-interface {v0}, Lcom/mikepenz/fastadapter/IExpandable;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1197
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->collapse(I)V

    goto :goto_0

    .line 1199
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(I)V

    :goto_0
    return-void
.end method

.method public withAllowDeselection(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 206
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mAllowDeselection:Z

    return-object p0
.end method

.method public withMultiSelect(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 184
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mMultiSelect:Z

    return-object p0
.end method

.method public withOnClickListener(Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnClickListener;

    return-object p0
.end method

.method public withOnLongClickListener(Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener<",
            "TItem;>;)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mOnLongClickListener:Lcom/mikepenz/fastadapter/FastAdapter$OnLongClickListener;

    return-object p0
.end method

.method public withPositionBasedStateManagement(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 229
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    return-object p0
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    const-string v0, ""

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;

    move-result-object p1

    return-object p1
.end method

.method public withSavedInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 303
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->deselect()V

    .line 305
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mPositionBasedStateManagement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_selections"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 317
    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_4

    aget v0, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bundle_expanded"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bundle_selections"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 325
    :goto_2
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->getItemCount()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 326
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object p2

    .line 327
    invoke-interface {p2}, Lcom/mikepenz/fastadapter/IItem;->getIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->expand(I)V

    :cond_2
    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-virtual {p0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->select(I)V

    .line 336
    :cond_3
    invoke-static {p2, p1}, Lcom/mikepenz/fastadapter/utils/AdapterUtil;->restoreSubItemSelectionStatesForAlternativeStateManagement(Lcom/mikepenz/fastadapter/IItem;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public withSelectOnLongClick(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 195
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectOnLongClick:Z

    return-object p0
.end method

.method public withSelectable(Z)Lcom/mikepenz/fastadapter/FastAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mikepenz/fastadapter/FastAdapter<",
            "TItem;>;"
        }
    .end annotation

    .line 217
    iput-boolean p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->mSelectable:Z

    return-object p0
.end method
