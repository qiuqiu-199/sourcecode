.class public abstract Leu/davidea/viewholders/FlexibleViewHolder;
.super Leu/davidea/viewholders/ContentViewHolder;
.source "FlexibleViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Leu/davidea/flexibleadapter/helpers/ItemTouchHelperCallback$ViewHolderCallback;


# instance fields
.field private alreadySelected:Z

.field protected mActionState:I

.field protected final mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field private mLongClickSkipped:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0}, Leu/davidea/viewholders/FlexibleViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Leu/davidea/viewholders/ContentViewHolder;-><init>(Landroid/view/View;Leu/davidea/flexibleadapter/FlexibleAdapter;Z)V

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mLongClickSkipped:Z

    .line 60
    iput-boolean p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    .line 63
    iput p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    .line 92
    iput-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 94
    iget-object p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_0
    iget-object p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p1, p1, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getActivationElevation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrontView()Landroid/view/View;
    .locals 1

    .line 420
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getRearLeftView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRearRightView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDraggable()Z
    .locals 2

    .line 401
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSwipeable()Z
    .locals 2

    .line 411
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Leu/davidea/flexibleadapter/items/IFlexible;->isSwipeable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActionStateChanged(II)V
    .locals 6

    .line 319
    iput p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    .line 320
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v0

    iput-boolean v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    const-string v0, "onActionStateChanged position=%s mode=%s actionState=%s"

    const/4 v1, 0x3

    .line 321
    new-array v1, v1, [Ljava/lang/Object;

    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v2

    invoke-static {v2}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    if-ne p2, v4, :cond_0

    const-string v2, "Swipe(1)"

    goto :goto_0

    :cond_0
    const-string v2, "Drag(2)"

    :goto_0
    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 321
    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p2, v5, :cond_5

    .line 325
    iget-boolean p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    if-nez p2, :cond_4

    .line 329
    iget-boolean p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mLongClickSkipped:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result p2

    if-ne p2, v5, :cond_3

    .line 331
    :cond_1
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->shouldAddSelectionInActionMode()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result p2

    if-eq p2, v5, :cond_3

    :cond_2
    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p2, p2, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-eqz p2, :cond_3

    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 332
    invoke-virtual {p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelectable(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "onLongClick on position %s mode=%s"

    .line 333
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, v0}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object p2, p2, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    invoke-interface {p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;->onItemLongClick(I)V

    .line 335
    iput-boolean v4, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    .line 339
    :cond_3
    iget-boolean p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    if-nez p2, :cond_4

    .line 340
    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 344
    :cond_4
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    if-nez p1, :cond_6

    .line 345
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    goto :goto_1

    :cond_5
    if-ne p2, v4, :cond_6

    .line 348
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->shouldActivateViewWhileSwiping()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    if-nez p2, :cond_6

    .line 349
    iget-object p2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p2, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 350
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 115
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result v0

    .line 116
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isItemEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    if-eqz v1, :cond_1

    iget v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    if-nez v1, :cond_1

    const-string v1, "onClick on position %s mode=%s"

    const/4 v2, 0x2

    .line 120
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v4

    invoke-static {v4}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, v1, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;

    invoke-interface {v1, p1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    :cond_1
    return-void
.end method

.method public onItemReleased(I)V
    .locals 6

    const-string v0, "onItemReleased position=%s mode=%s actionState=%s"

    const/4 v1, 0x3

    .line 367
    new-array v1, v1, [Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v2

    invoke-static {v2}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    if-ne v2, v4, :cond_0

    const-string v2, "Swipe(1)"

    goto :goto_0

    :cond_0
    const-string v2, "Drag(2)"

    :goto_0
    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 367
    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-boolean v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->alreadySelected:Z

    if-nez v0, :cond_4

    .line 372
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->shouldAddSelectionInActionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v0

    if-ne v0, v5, :cond_2

    const-string v0, "onLongClick for ActionMode on position %s mode=%s"

    .line 373
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    invoke-interface {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;->onItemLongClick(I)V

    .line 377
    :cond_1
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 378
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->shouldActivateViewWhileSwiping()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 382
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    goto :goto_1

    .line 383
    :cond_3
    iget v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    if-ne v0, v5, :cond_4

    .line 384
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 385
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 386
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    .line 391
    :cond_4
    :goto_1
    iput-boolean v3, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mLongClickSkipped:Z

    .line 392
    iput v3, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mActionState:I

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .line 138
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result p1

    .line 139
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isItemEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isLongPressDragEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onLongClick on position %s mode=%s"

    const/4 v3, 0x2

    .line 143
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v1

    invoke-static {v1}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v0, v0, Leu/davidea/flexibleadapter/FlexibleAdapter;->mItemLongClickListener:Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;

    invoke-interface {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;->onItemLongClick(I)V

    .line 145
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->toggleActivation()V

    return v2

    .line 148
    :cond_1
    iput-boolean v2, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mLongClickSkipped:Z

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 161
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result p1

    .line 162
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isItemEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onTouch with DragHandleView on position %s mode=%s"

    const/4 v2, 0x2

    .line 166
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object v3, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getMode()I

    move-result v3

    invoke-static {v3}, Leu/davidea/flexibleadapter/utils/LayoutUtils;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v2}, Leu/davidea/flexibleadapter/utils/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isHandleDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {p1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemTouchHelper()Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const-string p1, "Can\'t start drag: Item is not enabled or draggable!"

    .line 163
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Leu/davidea/flexibleadapter/utils/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public scrollAnimators(Ljava/util/List;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;IZ)V"
        }
    .end annotation

    return-void
.end method

.method protected setDragHandleView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public setFullSpan(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method protected shouldActivateViewWhileSwiping()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldAddSelectionInActionMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toggleActivation()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getFlexibleAdapterPosition()I

    move-result v0

    .line 225
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelectable(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->isSelected(I)Z

    move-result v1

    .line 228
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    .line 229
    :cond_2
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setActivated(Z)V

    .line 230
    iget-object v1, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getStickyPosition()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->mAdapter:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->ensureHeaderParent()V

    .line 232
    :cond_3
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 233
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {p0}, Leu/davidea/viewholders/FlexibleViewHolder;->getActivationElevation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 235
    iget-object v0, p0, Leu/davidea/viewholders/FlexibleViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_5
    :goto_0
    return-void
.end method
