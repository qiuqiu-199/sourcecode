.class public Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;,
        Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;
    }
.end annotation


# instance fields
.field protected handleDragEnabled:Z

.field protected longPressDragEnabled:Z

.field protected mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

.field protected mDragAnimationDuration:J

.field protected mMoveThreshold:F

.field protected mSwipeAnimationDuration:J

.field protected mSwipeFlags:I

.field protected mSwipeThreshold:F

.field protected swipeEnabled:Z


# direct methods
.method public constructor <init>(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    iput-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    const-wide/16 v0, 0x12c

    .line 48
    iput-wide v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeAnimationDuration:J

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mDragAnimationDuration:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeThreshold:F

    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mMoveThreshold:F

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    .line 57
    iput-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    return-void
.end method

.method private static setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V
    .locals 4

    .line 355
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearRightView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearRightView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_1
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearLeftView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 359
    invoke-interface {p0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getRearLeftView()Landroid/view/View;

    move-result-object p0

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 309
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 310
    instance-of p1, p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz p1, :cond_0

    .line 312
    move-object p1, p2

    check-cast p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 313
    invoke-static {}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object v0

    invoke-interface {p1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 315
    invoke-static {p1, v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V

    .line 316
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->onItemReleased(I)V

    :cond_0
    return-void
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .locals 0

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    .line 220
    iget-wide p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mDragAnimationDuration:J

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeAnimationDuration:J

    :goto_0
    return-wide p1
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 127
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mMoveThreshold:F

    return p1
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 5

    .line 258
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 262
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x3

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-nez v1, :cond_3

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getOrientation(Landroid/support/v7/widget/RecyclerView;)I

    move-result p1

    if-nez p1, :cond_2

    .line 267
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    if-lez p1, :cond_1

    iget v2, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    :cond_1
    move v3, v2

    const/16 v2, 0xc

    goto :goto_1

    .line 270
    :cond_2
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    if-lez p1, :cond_4

    iget v3, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeFlags:I

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 273
    :cond_4
    :goto_1
    instance-of p1, p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz p1, :cond_6

    .line 274
    check-cast p2, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 275
    invoke-interface {p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->isDraggable()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v2, 0x0

    .line 276
    :cond_5
    invoke-interface {p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->isSwipeable()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 v3, 0x0

    .line 278
    :cond_6
    invoke-static {v2, v3}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 0

    .line 187
    iget p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mSwipeThreshold:F

    return p1
.end method

.method public isHandleDragEnabled()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const/4 v0, 0x1

    if-ne p6, v0, :cond_3

    .line 326
    instance-of v0, p3, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_3

    .line 330
    check-cast p3, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 331
    invoke-interface {p3}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-eqz v1, :cond_0

    move v1, p5

    goto :goto_0

    :cond_0
    move v1, p4

    :goto_0
    const/4 v2, 0x0

    cmpl-float v4, v1, v0

    if-lez v4, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 v2, 0x4

    .line 345
    :cond_2
    :goto_1
    invoke-static {p3, v2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->setLayoutVisibility(Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;I)V

    .line 347
    invoke-static {}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    goto :goto_2

    .line 350
    :cond_3
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_2
    return-void
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 232
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->shouldMove(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 236
    :cond_0
    iget-object p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onItemMove(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 287
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onActionStateChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    if-eqz p2, :cond_0

    .line 290
    instance-of v0, p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_1

    .line 292
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 293
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->onActionStateChanged(II)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 295
    invoke-static {}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    move-result-object p1

    invoke-interface {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 246
    instance-of v0, p1, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    if-eqz v0, :cond_0

    .line 247
    move-object v0, p1

    check-cast v0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;

    .line 248
    invoke-interface {v0}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;->getFrontView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->mAdapterCallback:Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1, p2}, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$AdapterCallback;->onItemSwiped(II)V

    :cond_0
    return-void
.end method

.method public setHandleDragEnabled(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->handleDragEnabled:Z

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->longPressDragEnabled:Z

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback;->swipeEnabled:Z

    return-void
.end method
