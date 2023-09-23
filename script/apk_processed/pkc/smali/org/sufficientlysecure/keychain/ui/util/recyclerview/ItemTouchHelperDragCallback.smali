.class public Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelperDragCallback.java"


# instance fields
.field private final mAdapter:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 34
    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 35
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;->mAdapter:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;---><init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 86
    invoke-super {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;

    .line 90
    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;->onItemClear()V

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 53
    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;->makeMovementFlags(II)I

    move-result v1

    return v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->isItemViewSwipeEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isLongPressDragEnabled()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->isLongPressDragEnabled()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    .line 59
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v3, 0x0

    return v3

    .line 64
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;->mAdapter:Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v3, v4, p0, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;->onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    const/4 v3, 0x1

    return v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    if-eqz v3, :cond_0

    .line 77
    move-object v0, v2

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;

    .line 78
    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 81
    :cond_0
    invoke-super {v1, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;--->onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
