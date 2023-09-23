.class public Lcom/mikepenz/materialdrawer/MiniDrawer;
.super Ljava/lang/Object;
.source "MiniDrawer.java"


# instance fields
.field private mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

.field protected mAdapter:Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mikepenz/fastadapter/adapters/FastItemAdapter<",
            "Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

.field private mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

.field private mEnableProfileClick:Z

.field private mEnableSelectedMiniDrawerItemBackground:Z

.field private mInRTL:Z

.field private mIncludeSecondaryDrawerItems:Z

.field private mInnerShadow:Z

.field protected mPositionBasedStateManagement:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInnerShadow:Z

    .line 93
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mInRTL:Z

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mPositionBasedStateManagement:Z

    .line 121
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mIncludeSecondaryDrawerItems:Z

    .line 134
    iput-boolean v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableSelectedMiniDrawerItemBackground:Z

    .line 147
    iput-boolean v1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mEnableProfileClick:Z

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 2

    .line 388
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->isCrossfaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mCrossFader:Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;

    invoke-interface {v0}, Lcom/mikepenz/materialdrawer/interfaces/ICrossfader;->crossfade()V

    .line 396
    :cond_0
    invoke-interface {p1}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/materialdrawer/MiniDrawer;->setSelection(J)V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setSelection(J)V
    .locals 6

    .line 410
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;

    invoke-virtual {v0}, Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 412
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;->getItem(I)Lcom/mikepenz/fastadapter/IItem;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    .line 413
    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->getIdentifier()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    invoke-interface {v2}, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;

    invoke-virtual {v2}, Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;->deselect()V

    .line 415
    iget-object v2, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAdapter:Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;

    invoke-virtual {v2, v1}, Lcom/mikepenz/fastadapter/adapters/FastItemAdapter;->select(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public withAccountHeader(Lcom/mikepenz/materialdrawer/AccountHeader;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mAccountHeader:Lcom/mikepenz/materialdrawer/AccountHeader;

    return-object p0
.end method

.method public withDrawer(Lcom/mikepenz/materialdrawer/Drawer;)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    return-object p0
.end method

.method public withPositionBasedStateManagement(Z)Lcom/mikepenz/materialdrawer/MiniDrawer;
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/mikepenz/materialdrawer/MiniDrawer;->mPositionBasedStateManagement:Z

    return-object p0
.end method
